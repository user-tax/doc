# instalacija i konfiguracija nginx kompilacije

2023. je, a nginx još ne podržava HTTP3.

Međutim, nginx zvanično ima granu [nginx-quic](https://quic.nginx.org) .

Možete kompajlirati i instalirati ovu granu da nginx podržava HTTP3.

Istovremeno ćemo kompajlirati openresty-jev modul lua-nginx-module (i luajit2 i ngx_devel_kit) kako bismo omogućili nginxu da podržava ekstenzije lua skripte.

Kompilirajte ngx_brotli da omogućite podršku za br kompresiju pretraživača.

Kompilirajte [nchan](https://github.com/slact/nchan) da biste omogućili podršku za pretvaranje dugih veza websocketa u http zahtjeve.

Sve skripte su upakovane u [bazu koda](https://github.com/user-tax-dev/os) , samo pokrenite sljedeću naredbu.

```
git clone --depth=1 https://github.com/user-tax-dev/os.git && ./os/ubuntu/nginx/setup.sh
```

Ako korisnici u kontinentalnoj Kini ne mogu pristupiti githubu, prvo mogu pokrenuti sljedeću naredbu da konfiguriraju globalni proxy github.

```
git config --global url."https://ghproxy.com/https://github.com".insteadOf "https://github.com"
```

## TODO izbrisati sadržaj

Greška će biti prijavljena kada se prevede lua-nginx-module.

Predan je izmijenjeni zahtjev za spajanje.

https://github.com/openresty/lua-nginx-module/pull/2168/files#diff-ebaa829579f91b18746b0bb13948131e7dcaa19dbae1d843c6fbbebc682951a2<br>poređenje cjelobrojnih izraza različitog predznaka

Može se privremeno popraviti sljedećim kodom.

```
sd "ngx_int_t\s+rc, i;" "ngx_int_t rc;size_t i;" /tmp/nginx-quic/lua-nginx-module/src/ngx_http_lua_socket_tcp.c
```