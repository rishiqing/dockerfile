## Dockerfile

集中管理Dockerfile

### front-deploy

前端构建发布所用镜像

from：centos:latest

package list:

| Package   | Version       |
| --------- | ------------- |
| nfs-utils |               |
| nginx     | 1.16.0        |
| curl      | 7.29.0        |
| gcc-c++   |               |
| make      | GNU Make 3.82 |
| nodejs    | 10.15.0       |
| git       | 1.8.3.1       |



### sftp

基于 atmoz/sftp 构建的一个镜像，加入了对 [ossfs](<https://github.com/aliyun/ossfs>) 的支持，这样就可以用sftp的方式对OSS进行管理

from: atmoz/sftp:latest

| package      | 说明                                                         |
| ------------ | ------------------------------------------------------------ |
| mime-support | 安装这个包，会生成一个文件 `/etc/mime.types` ，ossfs可根据这个mime文件来决定往oss上传的文件的content-type |
| ossfs        | 阿里云基于 [s3fs-fuse](<https://github.com/s3fs-fuse/s3fs-fuse>) 开发的，用于在本地文件系统挂载oss，这样就可以像管理本地文件一样管理oss的文件 |

