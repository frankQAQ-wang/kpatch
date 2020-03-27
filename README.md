# kpatch
写一个kpatch编译脚本，只要在源码中把要修改的文件复制一份并加一个后缀为.new即可  
执行
./makepatch.sh srcpatch srcrpm  
样例如下  
./makepatch.sh /root/rpmbuild/BUILD/kernel-3.10.0-862.el7/linux-3.10.0-862.el7.centos.x86_64 kernel-3.10.0-862.el7.src.rpm  
