linuxinfo
=========

LinuxInfo is a modular script to collect generic system information to aid
troubleshooting and the filing of bug reports. It is designed to be easy
to use, and it is packaged using "Makeself" to provide a single runnable
script that outputs a report, "linuxinfo.txt" that can be e-mailed or
pasted wherever needed.

## Running it

### From a packaged script:

    $ ./linuxinfo-1.0.0.run

The script will unpack in a temporary folder, create a report in the current
directory and display it. The filename of the report is "linuxinfo.txt"
    
### From source:

Use the `ruh.sh` script in the source root:

    $ ./run.sh

The script will run in place, and generate linuxinfo.txt in the current
directory.

## Making it

    $ ./make.sh
    
The script will be generated in the `out/` directory.


