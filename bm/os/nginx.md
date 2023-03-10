# NGINX dalajɛli ni a sigili

San 2023 don, wa nginx ma HTTP3 dɛmɛ fɔlɔ.

Nka, nginx bolofara dɔ bɛ yen foroba la [nginx-quic](https://quic.nginx.org) .

Aw bɛ se ka nin bolofara in lajɛ ani k’a sigi sen kan walasa ka nginx dɛmɛ HTTP3.

O waati kelen na, an bɛna openresty ka lua-nginx-module module (ani luajit2 ani ngx_devel_kit) fana lajɛ walasa nginx ka se ka lua script extensions dɛmɛ.

Ngx_brotli lajɛ walasa ka dɛmɛ don navigatɔrɔn br sɛgɛsɛgɛli la.

[Nchan](https://github.com/slact/nchan) lajɛ walasa ka dɛmɛ don websocket janw jɛgɛncogo caman tigɛli la ka kɛ http ɲininiw ye.

Script bɛɛ pakelen don [code base](https://github.com/user-tax-dev/os) kɔnɔ , nin cikan in kɛ dɔrɔn.

```
git clone --depth=1 https://github.com/user-tax-dev/os.git && ./os/ubuntu/nginx/setup.sh
```

Ni baarakɛlaw minnu bɛ Sinuwa jamanaba kɔnɔ, olu ma Se ka don github la, u bɛ Se ka nin cikan in Kɛ fɔlɔ walasa ka github diɲɛ proxy labɛn.

```
git config --global url."https://ghproxy.com/https://github.com".insteadOf "https://github.com"
```