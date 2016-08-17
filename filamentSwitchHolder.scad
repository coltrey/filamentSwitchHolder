$fn = 90;

module baseBox() {
    cube([25,6,6]);

    translate([0,5+4,0])
        cube([25,15,7]);

    difference() {
        cube([25,36,7]);
        translate([1.5,1,1])
        #cube([22.5,34,6]);
    }
}

module boxWithCutout() {
    difference() {
        baseBox();

        translate([-2,3.5,3])
            rotate([0,90,0])
                #cylinder(30, d=2.5);
 
        #hull() {
            translate([20,5,1])
                cylinder(30, d=8);

            translate([18,5.5,1])
                cylinder(30, d=8);
        }
 
        translate([11.5,20,3])
            rotate([0,90,90])
                #cylinder(30,d=4);
    }
}

module switchCutout() {
    translate([1.5,11.5,1])
        cube([20.5,10,8]);

    translate([1.5,10.5,1])
        cube([10,11,8]);

    translate([2.5,8,1])
        cube([18,16,8]);

    translate([14,8.5,2])
        #cube([10,11,7]);

}

difference() {
    boxWithCutout();
        switchCutout();
}
