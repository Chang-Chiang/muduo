# muduo

## 目录

## 下载

```bash 
$ git clone https://github.com/Chang-Chiang/muduo.git
```

## 运行

+ 构建项目

    ```bash
    $ mkdir build
    $ cd build
    $ cmake ..
    ```

+ 编译

  ```bash
  $ make
  # 在项目 lib 文件夹生成 libmuduo.so 动态链接文件
  ```

+ 头文件和上一步生成的静态链接文件拷贝至 `/usr/lib` 目录

  ```bash
  # 当前在工程根目录
  $ sudo mkdir /usr/include/muduo
  $ sudo cp ./include/* /usr/include/muduo/
  $ sudo cp ./lib/libmuduo.so /usr/lib
  $ sudo ldconfig  # 动态链接库管理
  ```

+ 编译运行测试程序

  ```bash
  $ cd ./example
  $ g++ -o test testserver.cc -lmuduo
  $ ./test
  ```

+ 上述：构建项目、编译、生成静态文件可通过执行项目中的脚本文件实现

  ```bash
  $ chmod chmod +x autobuild.sh
  $ sudo ./autobuild.sh
  ```

  

## 参考

+ [shenmingik/muduo: 基于C++11的muduo网络库 (github.com)](https://github.com/shenmingik/muduo)
+ [iceCream1997/muduo_server_learn: 大并发服务器课程源代码 (github.com)](https://github.com/iceCream1997/muduo_server_learn)

