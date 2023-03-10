# NGINX compilation and installation

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