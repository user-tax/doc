# Kompilimi dhe instalimi i NGINX

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