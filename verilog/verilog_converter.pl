# ECE department UW-MADISON
# JUNGSEOB LEE
#!/usr/perl5 -w

# you have to change the name of input file
# for example, "netlistcopy" --> "inverter.v"
$input_file = "netlist";

local ($^I, @ARGV) = ('.bak', $input_file);
while (<>) {
        s/cds\_globals\.gnd\_/0/g;
        s/GND\!/0/g;
        s/cds\_globals\.vdd\_/1/g;
        s/VDD\!/1/g;
        print;
}

local ($^I, @ARGV) = ('.bak', $input_file);
while (<>) {
        s/pmos4\s(\S+)\s\(\s(\S+)\,\s(\S+)\,\s(\S+)\,\s(\S+)\)\;/pmos $1 ( $3, $5, $4);/g;
        s/nmos4\s(\S+)\s\(\s(\S+)\,\s(\S+)\,\s(\S+)\,\s(\S+)\)\;/nmos $1 ( $3, $5, $4);/g;
        print;
}
