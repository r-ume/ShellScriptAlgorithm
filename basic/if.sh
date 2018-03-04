#!/bin/bash

hoge="A"
fuga="A"

if [ $hoge = $fuga ]; then
  echo "文字列は同じです"
else
  echo "文字列は違います"
fi

# 実行結果
# $ ./test.sh 2 7
# 1番目の引数が2番目の引数より小さい
# $ ./test.sh 10 5
# 1番目の引数が2番目の引数より大きい
# $ ./test.sh 9 9
# 1番目の引数と2番目の引数は同じです

if [ "$1" -gt "$2" ]; then # greater than
  echo "1番目の引数が2番目の引数より大きい。"
elif [ "$1" -eq "$2" ]; then # equal to
  echo "1番目の引数と2番目の引数は同じです。"
elif [ "$1" -lt "$2" ]; then # less than
  echo "1番目の引数が2番目の引数より小さい。"
else 
  echo "条件には当てはまりませんでした。"
fi

if [ "$1" -ge "$2" ]; then # greater than or equal to
  echo "1番目の引数は2番目の引数以上だ。"
elif [ "$1" -le "$2" ]; then # less than or equal to
  echo "1番目の引数は2番目の引数以下だ。"
else 
  echo "条件には当てはまりませんでした。"
fi

DIR=$3

if [ -d ${DIR} ]; then
  echo "ディレクトリが存在します"
else
  echo "ディレクトリが存在しません"
fi

LOCK_FILE=$4

if [ -f ${LOCK_FILE} ]; then
  echo "ファイルが存在します"
else
  echo "ファイルが存在しません"
fi

curl http://www.google.co.jp >/dev/null 2>&1

if [ $? = 0 ]; then
  echo "curlは正常終了"
else
  echo "curlは異常終了"
fi
