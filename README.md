To Cross compile to aarch64 on archlinux:

make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- -C /home/tcanabrava/Data/Projects/Kernels/linux-6.12 M=$(pwd) modules


