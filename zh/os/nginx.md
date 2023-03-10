# NGINX 编译安装

都 2023 了，nginx 还不支持 HTTP3 。

不过，nginx 官方有一个 [nginx-quic](https://quic.nginx.org) 的分支。

可以编译安装这个分支来让 nginx 支持 HTTP3 。

同时，我们还会同时编译 openresty 的 lua-nginx-module 模块 ( 以及 luajit2 和 ngx_devel_kit ) 来启用 nginx 对 lua 脚本扩展的支持。

编译 ngx_brotli 启用对浏览器 br 压缩的支持。

编译 [nchan](https://github.com/slact/nchan) 启用对 websocket 长连接转 http 请求的支持。

所有的脚本都已经封装到了[代码库](https://github.com/user-tax-dev/os)，运行下面命令即可。

```
git clone --depth=1 https://github.com/user-tax-dev/os.git && ./os/ubuntu/nginx/setup.sh
```
