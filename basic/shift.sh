#!/bin/bash

# 実行結果
# ➜  basic git:(master) ✗ sh shift.sh hoge 123 sdafa
# param = hoge
# param = 123
# param = sdafa

while [ -n "$1" ] # $1が空っぽならループ終了
do
  echo "param = $1"
  shift
done
