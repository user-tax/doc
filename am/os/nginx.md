# nginx ማጠናቀር መጫን እና ማዋቀር

ቀድሞውንም 2023 ነው፣ እና nginx ገና HTTP3ን አይደግፍም።

ሆኖም፣ nginx በይፋ የ [nginx-quic](https://quic.nginx.org) ቅርንጫፍ አለው።

የnginx ድጋፍ HTTP3 ለማድረግ ይህን ቅርንጫፍ ማጠናቀር እና መጫን ይችላሉ።

በተመሳሳይ ጊዜ nginx የlua ስክሪፕት ቅጥያዎችን እንዲደግፍ ለማስቻል የ openresty's lua-nginx-module module (እና luajit2 እና ngx_devel_kit) እናጠናቅቃለን።

ለአሳሽ br መጭመቂያ ድጋፍን ለማንቃት ngx_brotli ያጠናቅሩ።

የዌብሶኬት ረጅም ግንኙነቶችን ወደ http ጥያቄዎች ለመቀየር ድጋፍን ለማንቃት [nchanን](https://github.com/slact/nchan) ያሰባስቡ።

ሁሉም ስክሪፕቶች [በኮዱ መሠረት](https://github.com/user-tax-dev/os) ላይ ተጭነዋል፣ የሚከተለውን ትዕዛዝ ብቻ ያሂዱ።

```
git clone --depth=1 https://github.com/user-tax-dev/os.git && ./os/ubuntu/nginx/setup.sh
```

በዋናው ቻይና ያሉ ተጠቃሚዎች githubን ማግኘት ካልቻሉ በመጀመሪያ የ github ግሎባል ፕሮክሲን ለማዋቀር የሚከተለውን ትዕዛዝ ማስኬድ ይችላሉ።

```
git config --global url."https://ghproxy.com/https://github.com".insteadOf "https://github.com"
```

## ይዘቱን ሰርዝ

lua-nginx-module ሲጠናቀር ስህተት ሪፖርት ይደረጋል።

የተሻሻለ የውህደት ጥያቄ ቀርቧል።

https://github.com/openresty/lua-nginx-module/pull/2168/files#diff-ebaa829579f91b18746b0bb13948131e7dcaa19dbae1d843c6fbbebc682951a2<br>የተለያየ ፊርማ ያላቸው የኢንቲጀር መግለጫዎችን ማወዳደር

በሚከተለው ኮድ ለጊዜው ሊስተካከል ይችላል.

```
sd "ngx_int_t\s+rc, i;" "ngx_int_t rc;size_t i;" /tmp/nginx-quic/lua-nginx-module/src/ngx_http_lua_socket_tcp.c
```