# nginx daɲɛgafe sigili ni a labɛnni

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

## TODO ka kɔnɔkow bɔ yen

Misali dɔ bɛna fɔ ni lua-nginx-module labɛnna.

Ladilikan dɔ kɛra ka fara ɲɔgɔn kan, o ɲinini kɛra.

https://github.com/openresty/lua-nginx-module/pull/2168/files#diff-ebaa829579f91b18746b0bb13948131e7dcaa19dbae1d843c6fbbebc682951a2<br>jateden dafalenw jiracogo minnu taamasiyɛn tɛ kelen ye, olu sangali

A bɛ se ka labɛn waati dɔɔnin ni nin kode in ye.

```
sd "ngx_int_t\s+rc, i;" "ngx_int_t rc;size_t i;" /tmp/nginx-quic/lua-nginx-module/src/ngx_http_lua_socket_tcp.c
```