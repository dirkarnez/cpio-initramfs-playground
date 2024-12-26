cpio-initramfs-playground
=========================
### Upload (`INPUT_NAME=files` && `INPUT_OVERWRITE=true` is hardcorded)
```
env 'INPUT_INCLUDE-HIDDEN-FILES=true' INPUT_PATH=./upload-artifact/dist node ./upload-artifact/
```

### Files
- https://ftp.debian.org/debian/dists/bookworm/main/installer-armhf/20230607+deb12u8/images/hd-media/initrd.gz

- [Howto unpack, edit and repack initrd.gz - (old)Puppy Linux Discussion Forum](https://oldforum.puppylinux.com/viewtopic.php?t=53019)
### Unpack
```
cd to directory containing initrd.gz 
mkdir initrd-tree 
cd initrd-tree/ 
zcat ../initrd.gz | cpio -i -d
```
### Pack
```
cd again to initrd-tree 
rm ../initrd.gz 
find . | cpio -o -H newc | gzip -9 > ../initrd.gz
```
### Tools
- [linux/scripts/gen_initramfs_list.sh at master · spotify/linux](https://github.com/spotify/linux/blob/master/scripts/gen_initramfs_list.sh)

### Tutorials
- [cpio解压initramfs.img - 宅女士 - 博客园](https://www.cnblogs.com/carriezhangyan/p/9407567.html)
- https://landley.net/writing/rootfs-howto.html
- [How to unpack/uncompress and repack/re-compress an initial ramdisk (initrd/initramfs) boot image file on RHEL 5,6 ? - Red Hat Customer Portal](https://access.redhat.com/solutions/24029)

### Arguments
- [Linux cpio命令 | 菜鸟教程](https://www.runoob.com/linux/linux-comm-cpio.html)


### Windows binaries
- https://mirrors.tuna.tsinghua.edu.cn/msys2/msys/x86_64/cpio-2.15-1-x86_64.pkg.tar.zst
