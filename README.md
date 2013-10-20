# linuxinfo

LinuxInfo is a modular script to collect generic system information to aid
troubleshooting and the filing of bug reports. It is designed to be easy
to use, and it is packaged using "Makeself" to provide a single runnable
script that outputs a report that in turn can be sent to a number of paste-
bin like sites or saved.

For packaged downloads, see [noccylabs.github.io/linuxinfo](http://noccylabs.github.io/linuxinfo).

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


