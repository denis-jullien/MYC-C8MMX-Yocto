# MYC-C8MMX-Yocto

This is mainly a kas (https://github.com/siemens/kas) file to build a MYC-C8MMX yocto image, close to the enviroment provided by Myir.
Contains correction to build without codeaurora.org and a few tools

## Usage

Tested to run on Ubuntu 18.04 host

Install Yocto requirements
```
sudo apt update
sudo apt upgrade
sudo apt install git gitk build-essential vim curl wget software-properties-common apt-transport-https ca-certificates
sudo apt install binfmt-support qemu qemu-user-static debootstrap debianutils kpartx gpart lvm2 \
    dosfstools binutils gawk git-core diffstat unzip texinfo chrpath socat autoconf automake xterm \
    sed cvs subversion coreutils texi2html bc docbook-utils help2man make gcc g++ gcc-multilib \
    desktop-file-utils libtool libglib2.0-dev libarchive-dev lib32ncurses5-dev libsdl1.2-dev \
    libegl1-mesa libgl1-mesa-dev libglu1-mesa-dev mercurial groff asciidoc u-boot-tools mtd-utils \
    device-tree-compiler ccrypt xz-utils cpio iputils-ping python python-git python-m2crypto \
    python-pysqlite2 python3 python3-pip python3-pexpect python3-git python3-jinja2 \
    bison flex libssl-dev kmod fakeroot lzop
```

Install kas 
```
pip3 install kas
```

In this clone repo, run 
```
python3 -m kas build kas-c8mmx.yml
```