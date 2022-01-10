$fa = 0.01;
$fs = 0.01;

// BOX PARAMETERS
beam_size = 4;
plate_thickness = 0.5;
inner_radius = 12.5;
table_floor_distance = 5;

// STM PARAMETERS
table_radius = 8;
table_height = 3;
stm_width = 6;
stm_length = 10;
copper_thickness = 2;
groove_depth = 0.25;
screw_pos = 1;
screw_leverage = 50;
piezo_hole_radius = 0.5;
screw_length = 5;
screw_radius = 0.3;
knob_thickness = 0.81;
knob_radius = 1.055;
knob_radius_2 = 0.585;
knob_height = 1.14;
bushing_radius = 0.86233 / 2;
bushing_radius_2 = 0.91 / 2;
bushing_length = 1.45;
bushing_thickness = 0.04;


// Computable parameters
inner_height = 50;     // TODO: Compute this



/////////////////////////////////////////////
// BOX BOX BOX BOX BOX BOX BOX BOX BOX BOX //
// BOX BOX BOX BOX BOX BOX BOX BOX BOX BOX //
// BOX BOX BOX BOX BOX BOX BOX BOX BOX BOX //
/////////////////////////////////////////////


module hex_beam() {
    r1 = inner_radius + plate_thickness;
    R1 = 2/sqrt(3) * r1;
    r2 = inner_radius + plate_thickness + beam_size;
    R2 = 2/sqrt(3) * r2;
    union() {
        linear_extrude(height=beam_size/2, center=false)
                polygon([[-R1/2, -r1],
                         [-R2/2+2/sqrt(3)*beam_size, -r2],
                         [R2/2, -r2],
                         [R1/2+2/sqrt(3)*beam_size, -r1]]);
        translate([0, 0, -beam_size/2])
            linear_extrude(height=beam_size/2, center=false)
                    polygon([[-R1/2-2/sqrt(3)*beam_size, -r1],
                             [-R2/2, -r2],
                             [R2/2-2/sqrt(3)*beam_size, -r2],
                             [R1/2, -r1]]);
    }
}


module pillar() {
    r1 = inner_radius + plate_thickness;
    R1 = 2/sqrt(3) * r1;
    r2 = inner_radius + plate_thickness + beam_size;
    R2 = 2/sqrt(3) * r2;
    translate([0, 0, -plate_thickness])
        linear_extrude(height=inner_height+2*plate_thickness, center=false)
            polygon([[-R2/2, -r2],
                     [-R2/2+beam_size, -r2],
                     [-R2/2+beam_size, -r1],
                     [-R1/2, -r1]]);
}


module box_frame() {
    // Upper hexagon
    translate([0, 0, inner_height+beam_size/2+plate_thickness]) {
        for (i = [1:6]) {
            rotate([0, 0, 60*i])
                hex_beam();
        }
    }
    // Lower hexagon
    translate([0, 0, -beam_size/2-plate_thickness]) {
        for (i = [1:6]) {
            rotate([0, 0, 60*i])
                hex_beam();
        }
    }
    // Pillars
    for (i = [1:5]) {
        rotate([0, 0, 60*i])
            pillar();
    }
    for (i = [1:5]) {
        rotate([0, 0, 60*i])
            mirror([1, 0, 0])
                pillar();
    }
}


module inner_floor_plate() {
    r2 = inner_radius + plate_thickness + beam_size;
    R2 = 2/sqrt(3) * r2;
    difference() {
        linear_extrude(height=plate_thickness, center=false)
            polygon([for (i = [1:6]) [R2*cos(60*i), R2*sin(60*i)]]);
        box_frame();
    }
}


module inner_wall() {
    r1 = inner_radius;
    R1 = 2/sqrt(3) * r1;
    r2 = inner_radius + plate_thickness;
    R2 = 2/sqrt(3) * r2;
    linear_extrude(height=inner_height, center=false)
            polygon([[-R1/2, -r1],
                     [-R2/2, -r2],
                     [R2/2, -r2],
                     [R1/2, -r1]]);
}


module inner_walls() {
    // The floor
    translate([0, 0, -plate_thickness])
        inner_floor_plate();
    // The ceiling
    translate([0, 0, inner_height])
        inner_floor_plate();
    // The walls
    for (i = [1:5]) {
        rotate([0, 0, 60*i])
            inner_wall();
    }
}


module floor_styrofoam() {
    r1 = inner_radius + plate_thickness;
    R1 = 2/sqrt(3) * r1;
    color("white")
        linear_extrude(height=beam_size, center=false)
            polygon([for (i = [1:6]) [R1*cos(60*i), R1*sin(60*i)]]);
}


module wall_styrofoam() {
    r2 = inner_radius + plate_thickness + beam_size;
    R2 = 2/sqrt(3) * r2;
    translate([-R2/2+beam_size, -r2, 0])
        color("white")
            cube(size=[R2-2*beam_size, beam_size, inner_height], center=false);
}


module styrofoam() {
    // The floor
    translate([0, 0, -beam_size-plate_thickness])
        floor_styrofoam();
    // The ceiling
    translate([0, 0, inner_height+plate_thickness])
        floor_styrofoam();
    // The walls
    for (i = [1:5]) {
        rotate([0, 0, 60*i])
            wall_styrofoam();
    }
}


module outer_floor_plate() {
    r2 = inner_radius + plate_thickness + beam_size;
    R2 = 2/sqrt(3) * r2;
    linear_extrude(height=plate_thickness, center=false)
        polygon([for (i = [1:6]) [R2*cos(60*i), R2*sin(60*i)]]);
}


module outer_wall() {
    r1 = inner_radius + plate_thickness + beam_size;
    R1 = 2/sqrt(3) * r1;
    r2 = inner_radius + 2*plate_thickness + beam_size;
    R2 = 2/sqrt(3) * r2;
    wall_height = inner_height + 2*beam_size + 4*plate_thickness;
    translate([0, 0, -beam_size-2*plate_thickness])
        linear_extrude(height=wall_height, center=false)
                polygon([[-R1/2, -r1],
                         [-R2/2, -r2],
                         [R2/2, -r2],
                         [R1/2, -r1]]);
}


module outer_walls() {
    // The floor
    translate([0, 0, -beam_size-2*plate_thickness])
        outer_floor_plate();
    // The ceiling
    translate([0, 0, inner_height+beam_size+plate_thickness])
        outer_floor_plate();
    // The walls
    for (i = [1:5]) {
        rotate([0, 0, 60*i])
            outer_wall();
    }
}


module door_frame() {
    r1 = inner_radius + plate_thickness;
    R1 = 2/sqrt(3) * r1;
    r2 = inner_radius + plate_thickness + beam_size;
    R2 = 2/sqrt(3) * r2;
    // Lower beam
    linear_extrude(height=beam_size, center=false)
            polygon([[-R1/2, -r1],
                     [-R2/2, -r2],
                     [R2/2, -r2],
                     [R1/2, -r1]]);
    // Upper beam
    translate([0, 0, inner_height-beam_size])
        linear_extrude(height=beam_size, center=false)
                polygon([[-R1/2, -r1],
                         [-R2/2, -r2],
                         [R2/2, -r2],
                         [R1/2, -r1]]);
    // Left pillar
    difference() {
        pillar();
        translate([0, 0, beam_size/2-plate_thickness])
            cube([2*R2, 2*R2, beam_size+2*plate_thickness], center=true);
        translate([0, 0, inner_height-beam_size/2+plate_thickness])
            cube([2*R2, 2*R2, beam_size+2*plate_thickness], center=true);
    }
    // Right pillar
    difference() {
        mirror([1, 0, 0])
            pillar();
        translate([0, 0, beam_size/2-plate_thickness])
            cube([2*R2, 2*R2, beam_size+2*plate_thickness], center=true);
        translate([0, 0, inner_height-beam_size/2+plate_thickness])
            cube([2*R2, 2*R2, beam_size+2*plate_thickness], center=true);
    }
}


module door_styrofoam() {
    r2 = inner_radius + plate_thickness + beam_size;
    R2 = 2/sqrt(3) * r2;
    translate([-R2/2+beam_size, -r2, beam_size])
        color("white")
            cube(size=[R2-2*beam_size, beam_size, inner_height-2*beam_size], center=false);
}


module box() {
    // Create the frame
    box_frame();
    // Create the inner walls
    inner_walls();
    // Create the sound dampeners
    styrofoam();
    // Create the outer walls
    outer_walls();
}


module door(angle) {
    r2 = inner_radius + 2*plate_thickness + beam_size;
    R2 = 2/sqrt(3) * r2;
    translate([R2/2, -r2, 0])rotate([0, 0, angle])translate([-R2/2, r2, 0])
        union() {
            // The frame
            door_frame();
            // The inner wall
            inner_wall();
            // The sound dampener
            door_styrofoam();
            // The outer wall
            outer_wall();
        }
}



/////////////////////////////////////////////
// STM STM STM STM STM STM STM STM STM STM //
// STM STM STM STM STM STM STM STM STM STM //
// STM STM STM STM STM STM STM STM STM STM //
/////////////////////////////////////////////


module aluminium_table() {
    color("silver")
        cylinder(h=table_height, r=table_radius);
}


module copper_lower() {
    difference() {
        color("goldenrod")
            cube([stm_width, stm_length, copper_thickness],
                 center=true);
        // Groove
        translate([-stm_width/2 + screw_pos,
               0,
               0.5 + copper_thickness/2 - groove_depth])
            rotate([0, 45, 0])
                cube([1/sqrt(2), 2*stm_length, 1/sqrt(2)],
                     center=true);
        // Hole
        translate([stm_width/2 - screw_pos,
               stm_length/2 - screw_pos,
               copper_thickness/2 - groove_depth])
            cylinder(h=2*groove_depth, r1=0, r2=2*groove_depth);
    }
}


module copper_upper() {
    difference() {
        color("goldenrod")
            cube([stm_width, stm_length, copper_thickness],
                 center=true);
        // Screw holes
        translate([-stm_width/2 + screw_pos,
                   stm_length/2 - screw_pos,
                   0])
            cylinder(h=2*copper_thickness,
                     r=bushing_radius, center=true);
        translate([stm_width/2 - screw_pos,
                   stm_length/2 - screw_pos,
                   0])
            cylinder(h=2*copper_thickness,
                     r=bushing_radius, center=true);
        translate([0,
                   -stm_length/2 + screw_pos,
                   0])
            cylinder(h=2*copper_thickness,
                     r=bushing_radius, center=true);
        // Piezo hole
        lever_length = stm_length - 2*screw_pos;
        small_lever_length = lever_length / (screw_leverage+1);
        translate([0,
                   stm_length/2-screw_pos-small_lever_length,
                   0])
            cylinder(h=2*copper_thickness,
                     r=piezo_hole_radius, center=true);
    }
}


module fine_screw_knob() {
    color("gray") {
        union() {
            cylinder(h=knob_height, r=knob_radius_2);
            translate([0, 0, knob_height-knob_thickness])
                cylinder(h=knob_thickness, r=knob_radius);
        }
    }
}


module fine_screw() {
    // Screw
    color("silver") {
        union() {
            cylinder(h=screw_length-screw_radius,
                     r=screw_radius, center=false);
            sphere(r=screw_radius);
        }
    }
    // Knob
    translate([0, 0, screw_length-screw_radius])
        fine_screw_knob();
}


module bushing() {
    color("gold") {
        difference() {
            union() {
                cylinder(h=bushing_length,
                         r=bushing_radius, center=true);
                translate([0,
                           0,
                           bushing_length/2-bushing_thickness/2])
                    cylinder(h=bushing_thickness,
                             r=bushing_radius_2, center=true);
            }
            cylinder(h=2*bushing_length,
                     r=screw_radius, center=true);
        }
    }
}


module stm() {
    // Lower copper plate
    translate([0, 0, copper_thickness/2])
        copper_lower();
    // Upper copper plate
    upper_copper_pos = screw_length/2 + copper_thickness;
    translate([0, 0, upper_copper_pos])
        copper_upper();
    // Bushings
    bushing_pos = upper_copper_pos - copper_thickness/2 +
                  bushing_length/2 - bushing_thickness;
    translate([-stm_width/2 + screw_pos,
               stm_length/2 - screw_pos,
               bushing_pos])
        mirror([0, 0, 1])
            bushing();
    translate([stm_width/2 - screw_pos,
               stm_length/2 - screw_pos,
               bushing_pos])
        mirror([0, 0, 1])
            bushing();
    translate([0,
               -stm_length/2 + screw_pos,
               bushing_pos])
        mirror([0, 0, 1])
            bushing();
    // Screws
    translate([-stm_width/2 + screw_pos,
               stm_length/2 - screw_pos,
               copper_thickness + 0.5*screw_radius])
        fine_screw();
    translate([stm_width/2 - screw_pos,
               stm_length/2 - screw_pos,
               copper_thickness + 0.75*screw_radius])
        fine_screw();
    translate([0,
               -stm_length/2 + screw_pos,
               copper_thickness + screw_radius])
        fine_screw();
}


module hanging_stm() {
    // The table
    translate([0, 0, table_floor_distance])
        aluminium_table();
    // The STM
    translate([0, 0, table_floor_distance+table_height])
        stm();
}




//aluminium_table();
//copper_lower();
//copper_upper();
//fine_screw();
hanging_stm();


box();
door(angle=150);

// Components of the box
translate([0, 100, 0]) box_frame();
translate([0, 200, 0]) inner_walls();
translate([0, 300, 0]) styrofoam();
translate([0, 400, 0]) outer_walls();
// Components of the door
translate([100, 100, 0]) door_frame();
translate([100, 200, 0]) inner_wall();
translate([100, 300, 0]) door_styrofoam();
translate([100, 400, 0]) outer_wall();


translate([0, -50, 0]) hex_beam();