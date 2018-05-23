#!/bin/sh

media_path="s3://bucket_name"

aws s3 cp "hoge.txt" "${media_path}/path"
