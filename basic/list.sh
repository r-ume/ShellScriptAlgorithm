#かっこで囲んだコマンドの結果をファイル(この場合は、logfile)に入れる。
#!/bin/sh
(
  cd ./
  pwd
  ls -l
) > logfile
