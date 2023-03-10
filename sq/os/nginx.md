# Instalimi dhe konfigurimi i përpilimit të nginx

Është viti 2023 dhe nginx nuk e mbështet ende HTTP3.

Sidoqoftë, nginx zyrtarisht ka një degë të [nginx-quic](https://quic.nginx.org) .

Ju mund ta përpiloni dhe instaloni këtë degë për ta bërë nginx të mbështesë HTTP3.

Në të njëjtën kohë, ne do të përpilojmë gjithashtu modulin lua-nginx të openresty (dhe luajit2 dhe ngx_devel_kit) për të mundësuar që nginx të mbështesë shtesat e skriptit lua.

Përpiloni ngx_brotli për të mundësuar mbështetjen për kompresimin br të shfletuesit.

Përpiloni [nchan](https://github.com/slact/nchan) për të mundësuar mbështetjen për konvertimin e lidhjeve të gjata të uebit në kërkesat http.

Të gjithë skriptet janë paketuar në [bazën e kodit](https://github.com/user-tax-dev/os) , thjesht ekzekutoni komandën e mëposhtme.

```
git clone --depth=1 https://github.com/user-tax-dev/os.git && ./os/ubuntu/nginx/setup.sh
```

Nëse përdoruesit në Kinën kontinentale nuk mund të hyjnë në github, ata fillimisht mund të ekzekutojnë komandën e mëposhtme për të konfiguruar përfaqësuesin global të github.

```
git config --global url."https://ghproxy.com/https://github.com".insteadOf "https://github.com"
```

## TODO fshini përmbajtjen

Një gabim do të raportohet kur të përpilohet moduli lua-nginx.

Është dorëzuar një kërkesë e ndryshuar për bashkim.

https://github.com/openresty/lua-nginx-module/pull/2168/files#diff-ebaa829579f91b18746b0bb13948131e7dcaa19dbae1d843c6fbbebc682951a2<br>krahasimi i shprehjeve me numra të plotë me shenja të ndryshme

Mund të rregullohet përkohësisht me kodin e mëposhtëm.

```
sd "ngx_int_t\s+rc, i;" "ngx_int_t rc;size_t i;" /tmp/nginx-quic/lua-nginx-module/src/ngx_http_lua_socket_tcp.c
```