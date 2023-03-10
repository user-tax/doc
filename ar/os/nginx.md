# تركيب وتكوين تجميع nginx

إنه 2023 ، ولا يدعم nginx HTTP3 حتى الآن.

ومع ذلك ، فإن nginx لديه فرعًا من [nginx-quic](https://quic.nginx.org) رسميًا.

يمكنك ترجمة هذا الفرع وتثبيته لجعل nginx يدعم HTTP3.

في الوقت نفسه ، سنقوم أيضًا بتجميع وحدة lua-nginx-module في openresty (و luajit2 و ngx_devel_kit) لتمكين nginx من دعم ملحقات البرنامج النصي lua.

قم بتجميع ngx_brotli لتمكين دعم ضغط المتصفح.

قم بتجميع [nchan](https://github.com/slact/nchan) لتمكين الدعم لتحويل اتصالات websocket الطويلة إلى طلبات http.

تم تجميع جميع البرامج النصية في [قاعدة التعليمات البرمجية](https://github.com/user-tax-dev/os) ، فقط قم بتشغيل الأمر التالي.

```
git clone --depth=1 https://github.com/user-tax-dev/os.git && ./os/ubuntu/nginx/setup.sh
```

إذا لم يتمكن المستخدمون في الصين القارية من الوصول إلى جيثب ، فيمكنهم أولاً تشغيل الأمر التالي لتكوين وكيل جيثب العالمي.

```
git config --global url."https://ghproxy.com/https://github.com".insteadOf "https://github.com"
```

## TODO حذف المحتوى

سيتم الإبلاغ عن خطأ عند تجميع وحدة lua-nginx.

تم تقديم طلب دمج معدل.

https://github.com/openresty/lua-nginx-module/pull/2168/files#diff-ebaa829579f91b18746b0bb13948131e7dcaa19dbae1d843c6fbbebc682951a2<br>مقارنة بين التعبيرات الصحيحة ذات التوقيعات المختلفة

يمكن إصلاحه مؤقتًا باستخدام الكود التالي.

```
sd "ngx_int_t\s+rc, i;" "ngx_int_t rc;size_t i;" /tmp/nginx-quic/lua-nginx-module/src/ngx_http_lua_socket_tcp.c
```