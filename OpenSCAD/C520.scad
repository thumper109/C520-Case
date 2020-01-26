// C520_base.scad - Base tray for the C520 Case.

echo(version=version());

module c520_base()
{
    union () {
        union() {
            difference () {
                cube([145,115,2]);
                translate([-1,104,-1]) cube([16,16,3.1]);
                translate([130,104,-1]) cube([16,16,3.1]);
            }
            translate([15, 108, 0]) cube([115,3.5,4.5]);
            cube([145,3,25]);
            difference () {
                cube([3,95,25]);
                translate([-1, 10, 21]) rotate([0, 90, 0]) cylinder(h = 5, r = 1.25, $fn = 100);
                translate([-1, 85, 21]) rotate([0, 90, 0]) cylinder(h = 5, r = 1.25, $fn = 100);
            }
            translate([142,0,0]) difference () {
                cube([3,95,25]);
                translate([-1,15,8.5]) cube([5, 26, 5]);
                translate([-1,45.5,8.5]) cube([5, 46, 5]);
                translate([-1, 10, 21]) rotate([0, 90, 0]) cylinder(h = 5, r = 1.24, $fn = 100);
                translate([-1, 85, 21]) rotate([0, 90, 0]) cylinder(h = 5, r = 1.25, $fn = 100);
            }            
        }
        difference () {
            translate([10,10,0]) cylinder(h = 7.5, r = 5, $fn=100);
            translate([10,10,2]) cylinder(h = 5.6, r = 0.75, $fn=100);
        }   
        difference () {
            translate([135,10,0]) cylinder(h = 7.5, r = 5, $fn=100);
            translate([135,10,2]) cylinder(h = 5.6, r = 0.75, $fn=100);
        }   
    }
}

c520_base();
