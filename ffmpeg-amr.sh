apt -y remove ffmpeg

apt -y install yasm  
apt -y install  libmp3lame-dev  
apt -y install libopencore-amrnb-dev  
apt -y install libopencore-amrwb-dev  

wget https://ffmpeg.org/releases/ffmpeg-4.2.1.tar.xz  
tar xvJf ffmpeg-4.2.1.tar.xz 

cd ffmpeg-4.2.1/

./configure --enable-libmp3lame --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-version3 --enable-shared

make

make install 

ldconfig
