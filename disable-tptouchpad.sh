#!/bin/bash

id=`xinput | grep -i SynPS | cut -f 2 | cut -d '=' -f 2`

devinfo=`xinput list-props $id | grep Enabled`

devid=`echo $devinfo | cut -d '(' -f 2 | cut -d ')' -f 1`
is_enabled=`echo $devinfo | cut -d ':' -f 2`

#echo "xinput list-props $id $devid 0"


if [ $is_enabled == 1 ]; then
	xinput list-props $id $devid 0
fi
