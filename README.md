cpio-initramfs-playground
=========================
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

### Arguments
- [Linux cpio命令 | 菜鸟教程](https://www.runoob.com/linux/linux-comm-cpio.html)


### Windows binaries
- https://mirrors.tuna.tsinghua.edu.cn/msys2/msys/x86_64/cpio-2.15-1-x86_64.pkg.tar.zst
