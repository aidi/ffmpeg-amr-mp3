# ffmpeg-amr-mp3

默认ffmpeg 不支持转化为 amr ，可以通过重新编译的方式开启支持。

一键安装 
````
sh ffmpeg-amr.sh
````


以下是安装说明

### 建议先卸载本地的ffmpeg ，执行命令 
````
apt -y remove ffmpeg 
````

# install libs 
````
apt -y install yasm  
apt -y install  libmp3lame-dev  
apt -y install libopencore-amrnb-dev  
apt -y install libopencore-amrwb-dev  
````

# wget 最新稳定版
````
wget https://ffmpeg.org/releases/ffmpeg-4.2.1.tar.xz  
tar xvJf ffmpeg-4.2.1.tar.xz 
````

# 编译 

## 1.进入目录
````
cd ffmpeg-4.2.1/
````

## 2.生成编译配置
````
./configure --enable-libmp3lame --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-version3 --enable-shared
````

## 3 执行 make 编译，比较耗时
````
make
````

## 4 安装到本地
````
make install  
ldconfig
````

### 不要忘记执行上面的 ldconfig 命令



# 例子

## 把 amr 格式化为 1个声道，采样 8000HZ 的amr
````
ffmpeg -i /tmp/in.amr -ac 1 -ar 8000 /tmp/out.amr
````

## 把 mp3 格式化为 amr
````
ffmpeg -i /tmp/in.mp3 -ac 1 -ar 8000 /tmp/out.amr
````

## 把 amr 转为 MP3
````
ffmpeg -i /tmp/in.amr /tmp/out.amr
````



