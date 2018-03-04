#!/bin/bash

# ➜  basic git:(master) ✗ sh array.sh
# ARRAY[0]: ITEM1
# ARRAY[1]: item2
# ARRAY[*]: ITEM1 item2 ITEM3 item4
# ARRAY[@]: ITEM1 item2 ITEM3 item4

#bash shellで配列の書き方
ARRAY=(item1 item2 item3 item4)
ARRAY[0]="ITEM1"
ARRAY[2]="ITEM3"

echo "ARRAY[0]: ${ARRAY[0]}"
echo "ARRAY[1]: ${ARRAY[1]}"

#全てのアイテムをアクセスする
echo "ARRAY[*]: ${ARRAY[*]}"
echo "ARRAY[@]: ${ARRAY[@]}"
