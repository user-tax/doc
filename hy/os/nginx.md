# nginx կոմպիլյացիայի տեղադրում և կազմաձևում

2023 թվականն է, և nginx-ը դեռ չի աջակցում HTTP3-ին:

Այնուամենայնիվ, nginx-ը պաշտոնապես ունի [nginx-quic-](https://quic.nginx.org) ի մասնաճյուղ:

Դուք կարող եք կազմել և տեղադրել այս ճյուղը, որպեսզի nginx-ը աջակցի HTTP3-ին:

Միևնույն ժամանակ, մենք կկազմենք նաև openresty-ի lua-nginx-module մոդուլը (և luajit2 և ngx_devel_kit)՝ հնարավորություն տալու nginx-ին աջակցել lua script ընդլայնումներին։

Կազմեք ngx_brotli՝ զննարկիչի br սեղմման աջակցությունն ակտիվացնելու համար:

Կազմեք [nchan](https://github.com/slact/nchan) ՝ վեբսոկետի երկար կապերը http հարցումների փոխարկելու համար:

Բոլոր սկրիպտները փաթեթավորվել են [կոդի բազայում](https://github.com/user-tax-dev/os) , պարզապես գործարկեք հետևյալ հրամանը.

```
git clone --depth=1 https://github.com/user-tax-dev/os.git && ./os/ubuntu/nginx/setup.sh
```

Եթե ​​մայրցամաքային Չինաստանի օգտատերերը չեն կարողանում մուտք գործել github, նրանք կարող են նախ գործարկել հետևյալ հրամանը՝ github գլոբալ պրոքսի կարգավորելու համար:

```
git config --global url."https://ghproxy.com/https://github.com".insteadOf "https://github.com"
```

## TODO ջնջել բովանդակությունը

Սխալը կհաղորդվի, երբ lua-nginx-module-ը կազմվի:

Միաձուլման փոփոխված հարցում է ներկայացվել:

https://github.com/openresty/lua-nginx-module/pull/2168/files#diff-ebaa829579f91b18746b0bb13948131e7dcaa19dbae1d843c6fbbebc682951a2<br>տարբեր նշանակության ամբողջ թվային արտահայտությունների համեմատություն

Այն կարող է ժամանակավորապես շտկվել հետևյալ կոդով.

```
sd "ngx_int_t\s+rc, i;" "ngx_int_t rc;size_t i;" /tmp/nginx-quic/lua-nginx-module/src/ngx_http_lua_socket_tcp.c
```