#!/bin/bash

#!/bin/bash

Dir1=$1
Dir2=$2
Dir3=$3


if [ "$#" -lt 2 ]; then
    echo "You must enter at least 2 paths"
    exit 1


elif [ "$#" -gt 1 ]; then


Server=$(hostname)

fi

if [ $Server = "server1" ]; then

#echo "This is Server1!"
rsync -vh $1 $2 vagrant@server2:/$3 --out-format="%t" | sed -n '$p' | awk '{print $4;}'


else

#echo "This is server2!"
rsync -vh $1 $2 vagrant@server1:/$3 --out-format="%t" | sed -n '$p' | awk '{print $4;}'

fi
