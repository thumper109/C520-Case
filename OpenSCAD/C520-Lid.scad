// C520_lid.scad - Base tray for the C520 Case.

echo(version=version());

module c520_lid()
{
    union () {
        difference () {
            cube([145,95,3]);
            translate([88, 15, -1]) cube([3,68,5]);
            translate([94, 15, -1]) cube([3,68,5]);
            translate([100, 15, -1]) cube([3,68,5]);
            translate([106, 15, -1]) cube([3,68,5]);
            translate([112, 15, -1]) cube([3,68,5]);
            translate([118, 15, -1]) cube([3,68,5]);
            translate([124, 15, -1]) cube([3,68,5]);
            translate([130, 15, -1]) cube([3,68,5]);
            translate([50, 26, -1]) linear_extrude(2) rotate(90,0,0) mirror([0,1,0]) text("Classic", font = "FrankfurtGothicHeavy:style=Italic");
            translate([35, 37, -1]) linear_extrude(2) rotate(90,0,0) mirror([0,1,0]) text("520", font = "FrankfurtGothicHeavy:style=Italic");
        }
        difference () {
            translate([3, 7, 3]) cube([8,6,7]);
            translate([2, 10, 6.5]) rotate([0, 90, 0]) cylinder(h = 10, r = 1, $fn = 100);
        }
        difference () {
            translate([3, 82, 3]) cube([8,6,7]);
            translate([2, 85, 6.5]) rotate([0, 90, 0]) cylinder(h = 10, r = 1, $fn = 100);
        }
        difference () {
            translate([134, 7, 3]) cube([8,6,7]);
            translate([133, 10, 6.5]) rotate([0, 90, 0]) cylinder(h = 10, r = 1, $fn = 100);
        }
        difference () {
            translate([134, 82, 3]) cube([8,6,7]);
            translate([133, 85, 6.5]) rotate([0, 90, 0]) cylinder(h = 10, r = 1, $fn = 100);
        }
    translate([3,3,0]) cube([139,4,5]);
    translate([3,88,0]) cube([139,4,5]);
    translate([3,13,0]) cube([4,69,5]);
    translate([138,13,0]) cube([4,69,5]);

    }
}

c520_lid();
