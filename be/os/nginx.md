# Кампіляцыя і ўстаноўка NGINX

Цяпер 2023 год, і nginx яшчэ не падтрымлівае HTTP3.

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