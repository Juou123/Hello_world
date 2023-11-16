# Hello_world Project
test for upload a project
# Note
1. This is a test project.
# Makefile
- 将gcc-arm-8.2-2018.08-x86_64-arm-linux-gnueabihf 解压缩到本地的已经在本地usr/local/arm/路径中
- 并且在 /etc/profile文件的最后加上路径。
  ```
    export PATH=/usr/local/arm/gcc-arm-8.2-2018.08-x86_64-arm-linux-gnueabihf/bin:$PATH
  ```
- 编译命令: 
  ```
    make
  ```
- 清空编译文件: 
  ```
    make clean
  ```
- 编译成功后，在当前目录下生成helloworld可执行文件
- 运行命令:
  ```
    ./helloworld
  ```

# 注意事项:
1. 编译前请先确保 arm-linux-gnueabihf-gcc 已经在本地 /etc/profile 里面配置好了
