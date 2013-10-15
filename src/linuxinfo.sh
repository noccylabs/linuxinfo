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

let counter=0
declare -a PUBLISHER;
for PUBLISHER in publishers/*.sh
do
    PUBLISHERS+=$PUBLISHER
    ((counter=$counter+1))
    source $PUBLISHER
    echo "$counter) $NAME"
done

re='^[0-9]+$'
while read -r -p "Publish to [1 - $counter]: "; do
    reply=$REPLY
    if  [[ $reply =~ $re ]] ; then
        if (( $reply <= $counter )); then
            choice=$reply;
            break;
        else
            echo "Please enter a valid number."
        fi

    else
        echo "Please enter a number."
    fi
done
source $PUBLISHER
url=$(publish 'linuxinfo.txt')
echo "Report uploaded to selected service. It may be viewed at $url"
read -p "Press ENTER to exit"
