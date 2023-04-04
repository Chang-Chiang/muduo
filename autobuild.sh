#!/bin/bash

set -e


# 如果没有build目录，创建该目录
if [ ! -d `pwd`/build ]; then
    mkdir `pwd`/build
fi

rm -rf `pwd`/build/*

cd `pwd`/build &&
    cmake .. &&
    make

# 回到项目根目录
cd ..

# 把头文件拷贝到 /usr/include/muduo  so库拷贝到 /usr/lib    PATH
if [ ! -d /usr/include/muduo ]; then 
    mkdir /usr/include/muduo
fi

cd `pwd`/include

# 拷贝hpp文件
for header in `ls *.hpp`
do
    cp $header /usr/include/muduo
done

cd ..
cp `pwd`/lib/libmuduo.so /usr/lib

ldconfig