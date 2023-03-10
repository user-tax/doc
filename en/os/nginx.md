# nginx compilation installation and configuration

It's 2023, and nginx doesn't support HTTP3 yet.

However, nginx officially has a branch of [nginx-quic](https://quic.nginx.org) .

You can compile and install this branch to make nginx support HTTP3.

At the same time, we will also compile openresty's lua-nginx-module module (and luajit2 and ngx_devel_kit) to enable nginx to support lua script extensions.

Compile ngx_brotli to enable support for browser br compression.

Compile [nchan](https://github.com/slact/nchan) to enable support for converting websocket long connections to http requests.

All scripts have been packaged into [the code base](https://github.com/user-tax-dev/os) , just run the following command.

```
git clone --depth=1 https://github.com/user-tax-dev/os.git && ./os/ubuntu/nginx/setup.sh
```

If users in mainland China cannot access github, they can first run the following command to configure the github global proxy.

```
git config --global url."https://ghproxy.com/https://github.com".insteadOf "https://github.com"
```

## TODO delete content

An error will be reported when lua-nginx-module is compiled.

An amended merge request has been submitted.

https://github.com/openresty/lua-nginx-module/pull/2168/files#diff-ebaa829579f91b18746b0bb13948131e7dcaa19dbae1d843c6fbbebc682951a2<br>comparison of integer expressions of different signedness

It can be temporarily fixed with the following code.

```
sd "ngx_int_t\s+rc, i;" "ngx_int_t rc;size_t i;" /tmp/nginx-quic/lua-nginx-module/src/ngx_http_lua_socket_tcp.c
```