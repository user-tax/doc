# nginx संकलन इंस्टॉलेशन आ कॉन्फ़िगरेशन के बा

ई 2023 के बा, आ nginx अभी तक HTTP3 के सपोर्ट नइखे करत।

हालाँकि, nginx के आधिकारिक तौर पर [nginx-quic](https://quic.nginx.org) के शाखा बा।

nginx के HTTP3 के सपोर्ट बनावे खातिर रउआँ एह शाखा के संकलित आ इंस्टॉल क सकत बानी।

एकरे साथ ही, हमनी के openresty के lua-nginx-module मॉड्यूल (आ luajit2 आ ngx_devel_kit) के भी संकलित करब जा ताकि nginx के lua स्क्रिप्ट एक्सटेंशन के सपोर्ट करे में सक्षम बनावल जा सके।

ब्राउजर बीआर संपीड़न खातिर समर्थन सक्षम करे खातिर ngx_brotli के संकलित करीं।

वेबसॉकेट लंबा कनेक्शन के http अनुरोध में बदले खातिर समर्थन सक्षम करे खातिर [nchan](https://github.com/slact/nchan) संकलित करीं।

सभ स्क्रिप्ट के [कोड बेस](https://github.com/user-tax-dev/os) में पैकेज कइल गइल बा , बस निम्नलिखित कमांड चलाईं।

```
git clone --depth=1 https://github.com/user-tax-dev/os.git && ./os/ubuntu/nginx/setup.sh
```

अगर मुख्य भूमि चीन के प्रयोगकर्ता लोग github तक पहुँच ना पावे ला तब ऊ लोग पहिले github ग्लोबल प्रॉक्सी के कॉन्फ़िगर करे खातिर निम्नलिखित कमांड चला सके ला।

```
git config --global url."https://ghproxy.com/https://github.com".insteadOf "https://github.com"
```

## टोडो सामग्री हटावे के बा

lua-nginx-module के संकलन कइला पर त्रुटि के रिपोर्ट कइल जाई।

संशोधित विलय के निहोरा पेश कइल गइल बा.

https://github.com/openresty/lua-nginx-module/pull/2168/files#diff-ebaa829579f91b18746b0bb13948131e7dcaa19dbae1d843c6fbbebc682951a2 पर दिहल गइल बा<br>अलग-अलग हस्ताक्षर के पूर्णांक अभिव्यक्ति के तुलना

एकरा के अस्थायी रूप से निम्नलिखित कोड से ठीक कइल जा सकेला।

```
sd "ngx_int_t\s+rc, i;" "ngx_int_t rc;size_t i;" /tmp/nginx-quic/lua-nginx-module/src/ngx_http_lua_socket_tcp.c
```