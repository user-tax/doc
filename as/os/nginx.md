# nginx কম্পাইলিং সংস্থাপন আৰু বিন্যাস

ই ২০২৩, আৰু nginx এ এতিয়াও HTTP3 সমৰ্থন নকৰে।

কিন্তু, nginx ৰ আনুষ্ঠানিকভাৱে [nginx-quic](https://quic.nginx.org) ৰ এটা শাখা আছে।

আপুনি এই শাখা কমপাইল আৰু সংস্থাপন কৰিব পাৰে nginx সমৰ্থন HTTP3 কৰিবলে ।

একে সময়তে, আমি openresty ৰ lua-nginx-module মডিউল (আৰু luajit2 আৰু ngx_devel_kit) কম্পাইল কৰিম যাতে nginx ক lua স্ক্ৰিপ্ট সম্প্ৰসাৰণসমূহ সমৰ্থন কৰিবলে সামৰ্থবান কৰিব পাৰি।

ব্ৰাউজাৰ br সংকোচনৰ বাবে সমৰ্থন সামৰ্থবান কৰিবলে ngx_brotli কমপাইল কৰক।

websocket দীঘল সংযোগসমূহক http অনুৰোধসমূহলে ৰূপান্তৰ কৰাৰ বাবে সমৰ্থন সামৰ্থবান কৰিবলে [nchan](https://github.com/slact/nchan) কম্পাইল কৰক।

সকলো স্ক্ৰিপ্ট [ক'ড ভিত্তিত](https://github.com/user-tax-dev/os) পেকেইজ কৰা হৈছে, মাত্ৰ নিম্নলিখিত আদেশ চলাওক ।

```
git clone --depth=1 https://github.com/user-tax-dev/os.git && ./os/ubuntu/nginx/setup.sh
```

যদি মূল চীনৰ ব্যৱহাৰকাৰীসকলে github অভিগম কৰিব নোৱাৰে, তেওঁলোকে প্ৰথমে github গোলকীয় প্ৰক্সি বিন্যাস কৰিবলে নিম্নলিখিত আদেশ চলাব পাৰে।

```
git config --global url."https://ghproxy.com/https://github.com".insteadOf "https://github.com"
```

## TODO কন্টেন্ট মচি পেলাওক

lua-nginx-module কম্পাইল কৰাৰ সময়ত এটা ভুল ৰিপৰ্ট কৰা হব।

সংশোধিত একত্ৰীকৰণৰ অনুৰোধ দাখিল কৰা হৈছে।

https://github.com/openresty/lua-nginx-module/pull/2168/files#diff-ebaa829579f91b18746b0bb13948131e7dcaa19dbae1d843c6fbbebc682951a2<br>বিভিন্ন চিহ্নিতকৰণৰ পূৰ্ণসংখ্যা অভিব্যক্তিৰ তুলনা

তলত দিয়া ক’ডটোৰ সহায়ত ইয়াক সাময়িকভাৱে ঠিক কৰিব পাৰি।

```
sd "ngx_int_t\s+rc, i;" "ngx_int_t rc;size_t i;" /tmp/nginx-quic/lua-nginx-module/src/ngx_http_lua_socket_tcp.c
```