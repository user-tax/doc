# एनजीआईएनएक्स संकलन आ इंस्टॉलेशन के काम कइल जाला

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