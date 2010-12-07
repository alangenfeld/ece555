"""Convert a 'netlist' file into a verilog file '*.v' that came
from Verilog-XL in Cadence for ECE 555."""

import os
import re
import shutil
import logging
log = logging.getLogger(__name__)

re_mname = r'module (\w*)\s*\('
RE_MODULE = re.compile(re_mname)

def convert_netlist(cds_dir, dest_dir):
    log.debug("Looking in cds directory %s...", cds_dir)
    cds_files = os.listdir(cds_dir)
    if "netlist" not in cds_files:
        raise IOError("File 'netlist' does not exist in %s" % cds_dir)

    if not os.path.exists(dest_dir):
        log.debug("Creating directory %s", dest_dir)
        os.mkdir(dest_dir)

    netlist_path = os.path.join(cds_dir, "netlist")
    netlist_file = open(netlist_path)

    log.debug("Found file %s, finding module name...", netlist_path)

    netlist_line = netlist_file.readline()
    while netlist_line and RE_MODULE.match(netlist_line) is None:
        #log.debug("Failed line: %s" % netlist_line)
        netlist_line = netlist_file.readline()

    module_name = RE_MODULE.match(netlist_line).groups()[0]
    log.debug("Found module name: %s" % module_name)

    new_file = "%s.v" % module_name
    new_file = os.path.join(dest_dir, new_file)

    log.debug("Copying %s to %s" % (netlist_path, new_file))
    shutil.copyfile(netlist_path, new_file)
    log.debug("New file created: %s" % new_file)
    return new_file

def run_convert_verilog(v_file):
    log.debug("Running perl converter on %s" % v_file)
    os.system("perl verilog_converter.pl %s" % v_file)

if __name__ == '__main__':
    import sys
    logging.basicConfig(level = logging.DEBUG)

    if len(sys.argv) < 3:
        print "Error: Expected 2 arguments, got %d" % (len(sys.argv)-1) 
        print "Usage: python convert_netlist.py <cds_dir> <dest_dir>"
        exit(-1)

    if len(sys.argv) == 4:
        log.debug("Searching directory %s..." % sys.argv[2])
        for d in [ x for x in os.listdir(sys.argv[2]) if "cds" in x]:
            cds_dir = os.path.join(sys.argv[2], d)
            log.debug("Searching directory %s..." % cds_dir)
            v_file = convert_netlist(cds_dir, sys.argv[3])
            run_convert_verilog(v_file)
    else:
        v_file = convert_netlist(sys.argv[1], sys.argv[2])
        exit(run_convert_verilog(v_file))
