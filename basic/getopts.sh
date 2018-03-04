#!/bin/sh

# 実行結果
# ➜  basic git:(master) ✗ sh getopts2.sh -a hoge -b ko param
# A
# B=ko
# param

# getoptsオプションの書き方
# 文字列の右側に :(コロン)を書き、オプションで値を渡さないと、option requires an argumentとなる。

while getopts ab: OPT
do
  case $OPT in                           # $OPTに指定したオプションが入る
    a) echo "A";;                        # -aが指定された場合の動作を記述
    b) echo "B=$OPTARG";;                # -bが指定された場合の動作を記述 / $OPTARGには-bの値が入る
    \?) echo "Usage: $0 [-a] [-b value]" # -a -b以外のオプションが指定された場合
        exit 1;;
  esac
done

shift `expr $OPTIND - 1` #位置パラメータ$1,$2...を正しく取得できるようにする
 
echo "$1" #位置パラメータ（スクリプトへの引数）が取得
