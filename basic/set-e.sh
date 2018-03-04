#!/bin/sh

# 実行結果
# ➜  basic git:(master) ✗ sh sample.sh
# touch: ./hoge/hoge.txt: No such file or directory

set -e

touch ./hoge/hoge.txt
touch ./hoge/hoge2.txt

# set -e がないときの実行結果
# ➜  basic git:(master) ✗ sh sample.sh
# touch: ./hoge/hoge.txt: No such file or directory
# touch: ./hoge/hoge2.txt: No such file or directory
