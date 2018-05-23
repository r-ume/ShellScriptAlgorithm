#!/bin/sh

csvfile=$1
cat ${csvfile} | while read line
do
  second=`echo ${line} | cut -d ',' -f 2`
  third=`echo ${line} | cut -d ',' -f 3`
  fourth=`echo ${line} | cut -d ',' -f 4`

  echo "${third}${fourth}"

  curl -s "https://maps.googleapis.com/maps/api/geocode/json?address=${third}${fourth}&region=jp&key=AIzaSyCpF3Twu93nv9HUEeeiqaZ2v3Pygnl8AJg" | jq -r '.results[] | [.address_components[5].long_name, .geometry.location.lat, .geometry.location.lng] | @csv'
done
