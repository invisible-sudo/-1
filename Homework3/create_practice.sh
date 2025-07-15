#!/bin/bash

#1.生成目录结构以及文件
mkdir -p linux_practice/name linux_practice/permission
touch linux_practice/name/file1.txt
touch linux_practice/name/file2.txt
touch linux_practice/permission/file3.txt
touch linux_practice/permission/file4.txt

#2.删除file1.txt
rm linux_practice/name/file1.txt

#3.改名
mv linux_practice/name/file2.txt linux_practice/name/show.txt

#4.修改内容
echo "Hello linux" > linux_practice/name/show.txt

#5.输出内容（用cat方式）
cat linux_practice/name/show.txt

#6.修改文件权限，并输出信息
for file in linux_practice/permission/*; do
    chmod 644 "$file"
    filename=$(basename "$file")
    perm=$(stat -c "%A" "$file")
    echo "Changed permissions for $filename to $perm"
done


