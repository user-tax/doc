# Ўстаноўка і канфігурацыя кампіляцыі nginx

Ужо 2023 год, а nginx яшчэ не падтрымлівае HTTP3.

Аднак у nginx афіцыйна ёсць філіял [nginx-quic](https://quic.nginx.org) .

Вы можаце скампіляваць і ўсталяваць гэтую галінку, каб Nginx падтрымліваў HTTP3.

У той жа час мы таксама скампілюем модуль lua-nginx-module openresty (а таксама luajit2 і ngx_devel_kit), каб дазволіць nginx падтрымліваць пашырэнні сцэнарыяў lua.

Скампілюйце ngx_brotli, каб уключыць падтрымку сціску br у браўзеры.

Скампілюйце [nchan](https://github.com/slact/nchan) , каб уключыць падтрымку пераўтварэння доўгіх злучэнняў websocket у http-запыты.

Усе скрыпты былі спакаваныя ў [базу кода](https://github.com/user-tax-dev/os) , проста выканайце наступную каманду.

```
git clone --depth=1 https://github.com/user-tax-dev/os.git && ./os/ubuntu/nginx/setup.sh
```

Калі карыстальнікі ў мацерыковым Кітаі не могуць атрымаць доступ да github, яны могуць спачатку запусціць наступную каманду, каб наладзіць глабальны проксі github.

```
git config --global url."https://ghproxy.com/https://github.com".insteadOf "https://github.com"
```

## TODO выдаліць кантэнт

Пры кампіляцыі lua-nginx-module будзе паведамлена пра памылку.

Зменены запыт на аб'яднанне быў пададзены.

https://github.com/openresty/lua-nginx-module/pull/2168/files#diff-ebaa829579f91b18746b0bb13948131e7dcaa19dbae1d843c6fbbebc682951a2<br>параўнанне цэлых выразаў рознай знакавасці

Гэта можна часова выправіць з дапамогай наступнага кода.

```
sd "ngx_int_t\s+rc, i;" "ngx_int_t rc;size_t i;" /tmp/nginx-quic/lua-nginx-module/src/ngx_http_lua_socket_tcp.c
```