# NGINX-ի հավաքում և տեղադրում

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