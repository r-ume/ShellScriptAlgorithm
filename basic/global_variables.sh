#!/bin/sh

echo "\$0(スクリプト名) : $0"
echo "\$1(1番目の引数) : $1"
echo "\$2(2番目の引数) : $2"
echo "\$#(引数の数) : $#"
echo "\"\$*\": \"$*\""
echo "\"\$@\": \"$@\""
VAR="exit値は0になるはずです"
echo $?

# 実行結果
# ➜  basic git:(master) ✗ sh global_variables.sh first second 3rd
# $0(スクリプト名) : global_variables.sh
# $1(1番目の引数) : first
# $2(2番目の引数) : second
# $#(引数の数) : 3
# "$*": "first second 3rd"
# "$@": "first second 3rd"
# 0
