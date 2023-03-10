# nginx 编译安装和配置

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

中国大陆的用户如果访问 github 不稳定，可以先运行下面的命令配置下 github 全局代理。

```
git config --global url."https://ghproxy.com/https://github.com".insteadOf "https://github.com"
```

## TODO 删除一下内容

lua-nginx-module 编译的的时候会报错。

已经提交了修正的合并请求。

https://github.com/openresty/lua-nginx-module/pull/2168/files#diff-ebaa829579f91b18746b0bb13948131e7dcaa19dbae1d843c6fbbebc682951a2
comparison of integer expressions of different signedness

可以用下面的代码临时修正。

```
sd "ngx_int_t\s+rc, i;" "ngx_int_t rc;size_t i;" /tmp/nginx-quic/lua-nginx-module/src/ngx_http_lua_socket_tcp.c
```
