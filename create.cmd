@REM git-cmd.exe
find . | ..\cpio.exe -H newc | gzip > ..\initramfs.img.gz
