# NGINX samestelling en installasie

Dit is 2023, en nginx ondersteun nog nie HTTP3 nie.

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