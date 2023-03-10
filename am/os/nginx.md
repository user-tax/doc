# NGINX ማጠናቀር እና መጫን

2023 ነው፣ እና nginx ገና HTTP3ን አይደግፍም።

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