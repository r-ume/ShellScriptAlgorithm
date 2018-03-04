#!/bin/sh

#出力結果
#1) up
#2) down
#3) left
#4) right
#5) look
#6) quit
#コマンド?

PS3='コマンド?'

# select文は、選択肢の数だけ、数字を自動的になくしていく。
select cmd in up down left right look quit
do
  case $cmd in
    up)
      echo '上に移動しました。';;
    down)
      echo '下に移動しました。';;
    left)
      echo '左に移動しました。';;
    right)
      echo '右に移動しました。';;
    look)
      echo 'アイテムが落ちています。';;
    quit)
      echo '終了します。'
      break;;
    *)
     echo '"$REPLY"'というコマンドはありません。
  esac
  #一行の改行
  echo
done 
