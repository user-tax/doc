# NGINX kompilyasiyası və quraşdırılması

2023-cü ildir və nginx hələ HTTP3-ü dəstəkləmir.

Bununla belə, nginx rəsmi olaraq [nginx-quic](https://quic.nginx.org) filialına malikdir.

Nginx-in HTTP3 dəstəyini təmin etmək üçün bu filialı tərtib edib quraşdıra bilərsiniz.

Eyni zamanda, nginx-in lua skript uzantılarını dəstəkləməsini təmin etmək üçün openresty-nin lua-nginx-modul modulunu (və luajit2 və ngx_devel_kit) də tərtib edəcəyik.

Brauzerin sıxılma dəstəyini aktivləşdirmək üçün ngx_brotli kompilyasiya edin.

Uzun veb-soket bağlantılarını http sorğularına çevirmək üçün dəstəyi aktivləşdirmək üçün [nchan](https://github.com/slact/nchan) tərtib edin.

Bütün skriptlər [kod bazasına](https://github.com/user-tax-dev/os) yığılmışdır, sadəcə aşağıdakı əmri yerinə yetirin.

```
git clone --depth=1 https://github.com/user-tax-dev/os.git && ./os/ubuntu/nginx/setup.sh
```

Əgər materik Çindəki istifadəçilər github-a daxil ola bilmirlərsə, onlar əvvəlcə github qlobal proxy-ni konfiqurasiya etmək üçün aşağıdakı əmri işlədə bilərlər.

```
git config --global url."https://ghproxy.com/https://github.com".insteadOf "https://github.com"
```