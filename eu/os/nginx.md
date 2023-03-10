# NGINX konpilazioa eta instalazioa

2023 da, eta nginx-ek ez du HTTP3 onartzen oraindik.

Hala ere, nginx-ek ofizialki [nginx-quic-en](https://quic.nginx.org) adar bat du.

Adar hau konpilatu eta instalatu dezakezu nginx-ek HTTP3 onartzeko.

Aldi berean, openresty-ren lua-nginx-module modulua (eta luajit2 eta ngx_devel_kit) ere konpilatuko dugu nginx-ek lua script-en luzapenak onar ditzan.

Konpilatu ngx_brotli arakatzailearen br konpresioaren laguntza gaitzeko.

Konpilatu [nchan](https://github.com/slact/nchan) websocket konexio luzeak http eskaerak bihurtzeko laguntza gaitzeko.

Script guztiak [kode-oinarrian](https://github.com/user-tax-dev/os) bildu dira, exekutatu hurrengo komandoa.

```
git clone --depth=1 https://github.com/user-tax-dev/os.git && ./os/ubuntu/nginx/setup.sh
```

Txina kontinentaleko erabiltzaileek ezin badute github-era atzitu, lehenengo komando hau exekutatu dezakete github proxy globala konfiguratzeko.

```
git config --global url."https://ghproxy.com/https://github.com".insteadOf "https://github.com"
```