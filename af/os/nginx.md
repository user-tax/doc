# nginx samestelling installasie en konfigurasie

Dit is reeds 2023, en nginx ondersteun nog nie HTTP3 nie.

Nginx het egter amptelik 'n tak van [nginx-quic](https://quic.nginx.org) .

U kan hierdie tak saamstel en installeer om nginx HTTP3 te laat ondersteun.

Terselfdertyd sal ons ook openresty se lua-nginx-module module (en luajit2 en ngx_devel_kit) saamstel om nginx in staat te stel om lua script uitbreidings te ondersteun.

Stel ngx_brotli saam om ondersteuning vir blaaier br-kompressie moontlik te maak.

Stel [nchan](https://github.com/slact/nchan) saam om ondersteuning vir die omskakeling van websocket-langverbindings na http-versoeke moontlik te maak.

Alle skrifte is in [die kodebasis](https://github.com/user-tax-dev/os) verpak, voer net die volgende opdrag uit.

```
git clone --depth=1 https://github.com/user-tax-dev/os.git && ./os/ubuntu/nginx/setup.sh
```

As gebruikers op die vasteland van China nie toegang tot github kan kry nie, kan hulle eers die volgende opdrag uitvoer om die github globale instaanbediener op te stel.

```
git config --global url."https://ghproxy.com/https://github.com".insteadOf "https://github.com"
```

## TODO verwyder inhoud

'n Fout sal gerapporteer word wanneer lua-nginx-module saamgestel word.

'n Gewysigde samesmeltingsversoek is ingedien.

https://github.com/openresty/lua-nginx-module/pull/2168/files#diff-ebaa829579f91b18746b0bb13948131e7dcaa19dbae1d843c6fbbebc682951a2<br>vergelyking van heelgetal uitdrukkings van verskillende getekendheid

Dit kan tydelik reggestel word met die volgende kode.

```
sd "ngx_int_t\s+rc, i;" "ngx_int_t rc;size_t i;" /tmp/nginx-quic/lua-nginx-module/src/ngx_http_lua_socket_tcp.c
```