#/bin/sh

set -e

VAR2="aaa bbb ccc aaa bbb ccc"
REPLACE="zzz"

echo $VAR2 | sed -e "s/aaa/${REPLACE}/g"
