#!/bin/bash

source VERSION
if [ ! -z $RELEASE ]; then KIND="-$RELEASE"; fi
echo "LinuxInfo v$VERSION$KIND - (c) 2013, NoccyLabs.info"
echo "Licensed under GNU GPL version 3"
echo ""

test -e .report && unlink .report
echo "Analzing system..."

# Enumerate the modules
for MODULE in modules/*.sh
do
    echo -n "  - Running module `basename $MODULE .sh`: "
    bash $MODULE > .modtmp
    if [ $? == 0 ]; then
        cat .modtmp >> .report
        unlink .modtmp
        echo "" >> .report
        echo "Ok"
    else
        echo "Skip"
    fi
done

# Rename the report into the final filename
mv .report linuxinfo.txt
echo "linuxinfo.txt has been created."
echo ""

# Show the file
echo "The report will now be displayed using 'less'. Press 'q' on your keyboard to quit less."
echo "Press any key to continue..."
read -n1
less linuxinfo.txt
