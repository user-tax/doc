# NGINX compilación ukat instalación ukanak luraña

2023 marawa, ukatx nginx ukax janiw HTTP3 ukaruw yanapt’kiti.

Ukampirus nginx ukax oficialmentex [nginx-quic](https://quic.nginx.org) ukan mä rama ukaniwa.

Aka ramax apthapispawa ukat uñstayatarakiwa nginx yanapt’awi HTTP3 lurañataki.

Uka pachparakiw openresty ukax lua-nginx-module módulo (ukat luajit2 ukat ngx_devel_kit) ukanak apthapiñäni, nginx ukax lua script extensión ukar yanapt’añapataki.

ngx_brotli ukar apthapiñamawa, ukhamat navegador br compresión ukar yanapt’añataki.

[nchan](https://github.com/slact/nchan) ukar apthapiñamawa websocket jaya conexiones ukar http mayiwinakar jaqukipañatak yanapt’añataki.

Taqi scripts ukanakax [base de código](https://github.com/user-tax-dev/os) ukar paqueteatawa , ukax aka kamachimpiw phuqhañapa.

```
git clone --depth=1 https://github.com/user-tax-dev/os.git && ./os/ubuntu/nginx/setup.sh
```

China continental ukan apnaqirinakax github ukar jan mantañjamäkani ukhax nayraqat aka kamachir apnaqapxaspaw github global proxy ukar wakicht’añataki.

```
git config --global url."https://ghproxy.com/https://github.com".insteadOf "https://github.com"
```