#!/bin/bash

# 関数の定義
say_hello_people () {
  # ここでの$1と$2は、引数になる。
  # 他の言語のようにカッコの中に引数を書かない。
  echo "Hello, $1 and $2!"
}

# 関数の呼び出し
say_hello_people taro hanako

testvar="hoge"
# ローカル変数
function testfunc1() {
  local testvar="hoge"
  echo "関数内部testvarの値は$testvar"
}

testfunc1
echo $testvar # 外部からは参照できないため空白となる。
