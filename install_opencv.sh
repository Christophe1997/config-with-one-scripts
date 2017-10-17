#!/bin/sh
######################################################################
# @author: Christophe
# @email: sdl.office.1997@gmail.com
# @env: Ubuntu16.04 x86_64 NVIDIA GTX 1050
# @desc: A shell scripts to install opencv3.3
######################################################################


# Installing all the recommended packages.
# Compilers:
sudo apt-get install build-essential
# Required:
sudo apt-get install cmake git libgtk2.0-dev pkg-config
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev
# Recommended optional packages, or install what you really need if 
# you are a expert of this.
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev
sudo apt-get install libjpeg-dev libpng-dev libtiff-dev
sudo apt-get install libjasper-dev libdc1394-22-dev   
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install libv4l-dev liblapacke-dev  
sudo apt-get install libxvidcore-dev libx264-dev  
sudo apt-get install libatlas-base-dev gfortran  
sudo apt-get install ffmpeg
# I got a problem when I make without the packages below,
# you can annotate this if you don't need.
sudo apt-get install libjpeg9 libpng16


# The first parameter is the dir of downloaded opencv-3.3 source files
# If you don't download yet, you can:
# wget https://github.com/opencv/opencv/archive/3.3.0.zip
# unzip opencv3.3.zip
#
# The second optional parameter is the dir of downloaded 
# opencv_contrib source files. If you don't download yet, you can:
# wget https://codeload.github.com/opencv/opencv_contrib/zip/master
# unzip opencv_contrib-master.zip
OPENCV_ROOT=$1
OPENCV_CONTRIB_PATH=$2

if test -z OPENCV_CONTRIB_PATH
then
FLAG=1
fi


# Always download ippicv because of some users(Chinese maybe),
# if your network is OK, just annotate the block below.
if test ! -d .cache/ippicv
then
    wget https://raw.githubusercontent.com/opencv/opencv_3rdparty/ippicv/master_20170418/ippicv/ippicv_2017u2_lnx_intel64_20170418.tgz
    
    ipp_file=ippicv_2017u2_lnx_intel64_20170418.tgz
    ipp_hash=$(md5sum $ipp_file | cut -d" " -f1)
    ipp_dir=.cache/ippicv                           

    mkdir -p $ipp_dir
    cp $ipp_file $ipp_dir/$ipp_hash-$ipp_file
fi


# make
# Just add `-DOPENCV_EXTRA_MODULES_PATH=$OPENCV_CONTRIB_PATH` may not
# compile successfully, and I have many problem during compiling the contrib.
# If you have a successful options, I wish you could teach me.

mkdir build
cd build
if [ FLAG = 1 ]:
then
    cmake -DCMAKE_INSTALL_PREFIX=/usr/local                          \
          -DCMAKE_BUILD_TYPE=Release                                 \
          -DENABLE_CXX11=ON                                          \
          -DOPENCV_EXTRA_MODULES_PATH=$OPENCV_CONTRIB_PATH           \
          -DBUILD_PERF_TESTS=OFF                                     \
          -DWITH_XINE=ON                                             \
          -DBUILD_TESTS=OFF                                          \
          -DENABLE_PRECOMPILED_HEADERS=OFF                           \
          -DCMAKE_SKIP_RPATH=ON                                      \
          -DBUILD_WITH_DEBUG_INFO=OFF                                \
          -Wno-dev  ..                    
else
    cmake -DCMAKE_INSTALL_PREFIX=/usr/local                          \
          -DCMAKE_BUILD_TYPE=Release                                 \
          -DENABLE_CXX11=ON                                          \
          -DBUILD_PERF_TESTS=OFF                                     \
          -DWITH_XINE=ON                                             \
          -DBUILD_TESTS=OFF                                          \
          -DENABLE_PRECOMPILED_HEADERS=OFF                           \
          -DCMAKE_SKIP_RPATH=ON                                      \
          -DBUILD_WITH_DEBUG_INFO=OFF                                \
          -Wno-dev  ..                                              


# you can also try option -j[N], but I get an error while compile(
make
make install


#Installs the 3rdparty library
case $(uname -m) in
  x86_64) ARCH=intel64 ;;
       *) ARCH=ia32    ;;
esac
cp -v 3rdparty/ippicv/ippicv_lnx/lib/$ARCH/libippicv.a /usr/lib
