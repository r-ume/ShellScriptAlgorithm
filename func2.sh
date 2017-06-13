
#!/bin/sh

factorial() #シェル関数factorialの定義開始
{
 if [ "$1" -le 1 ]; then # もし引数が1以下の数値なら(less)
   echo 1                # 答えとして1を出力
   return                # シェル関数からリターンする。
 fi                      # if文終了

 n=`expr "$1" - 1`       # 引数から1を引く。
 n=`factorial "$n"`      # (引数-1)を引数として、factorialを再帰呼び出し
 expr "$n" \* "$1"       # その結果を元に引数をかけて、答えを出力
}                        # シェル関数factorialの定義完了

factorial "$1"           # シェル関数factorialを実行する。
