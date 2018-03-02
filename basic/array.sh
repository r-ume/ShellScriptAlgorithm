#!/bin/bash

#bash shellで配列の書き方
ARRAY=(item1 item2 item3 item4)
ARRAY[0]="ITEM1"
ARRAY[2]="ITEM3"

echo "ARRAY[0]: ${ARRAY[0]}"
echo "ARRAY[1]: ${ARRAY[1]}"

#全てのアイテムをアクセスする
echo "ARRAY[*]: ${ARRAY[*]}"
echo "ARRAY[@]: ${ARRAY[@]}"
