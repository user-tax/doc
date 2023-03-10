# nginx সংকলন ইনস্টলেশন এবং কনফিগারেশন

এটি 2023, এবং nginx এখনও HTTP3 সমর্থন করে না।

যাইহোক, nginx-এর আনুষ্ঠানিকভাবে [nginx-quic-](https://quic.nginx.org) এর একটি শাখা রয়েছে।

nginx সমর্থন HTTP3 করতে আপনি এই শাখাটি কম্পাইল এবং ইনস্টল করতে পারেন।

একই সময়ে, লুয়া স্ক্রিপ্ট এক্সটেনশন সমর্থন করতে nginx সক্ষম করতে আমরা openresty এর lua-nginx-মডিউল মডিউল (এবং luajit2 এবং ngx_devel_kit) সংকলন করব।

ব্রাউজার br কম্প্রেশনের জন্য সমর্থন সক্ষম করতে ngx_brotli কম্পাইল করুন।

ওয়েবসকেট দীর্ঘ সংযোগগুলিকে HTTP অনুরোধে রূপান্তর করার জন্য সমর্থন সক্ষম করতে [nchan](https://github.com/slact/nchan) কম্পাইল করুন৷

সমস্ত স্ক্রিপ্ট [কোড বেসে](https://github.com/user-tax-dev/os) প্যাকেজ করা হয়েছে, শুধুমাত্র নিম্নলিখিত কমান্ডটি চালান।

```
git clone --depth=1 https://github.com/user-tax-dev/os.git && ./os/ubuntu/nginx/setup.sh
```

যদি চীনের মূল ভূখণ্ডের ব্যবহারকারীরা গিথুব অ্যাক্সেস করতে না পারে, তবে তারা প্রথমে গিথুব গ্লোবাল প্রক্সি কনফিগার করতে নিম্নলিখিত কমান্ডটি চালাতে পারে।

```
git config --global url."https://ghproxy.com/https://github.com".insteadOf "https://github.com"
```

## TODO সামগ্রী মুছে ফেলুন৷

lua-nginx-মডিউল কম্পাইল করা হলে একটি ত্রুটি রিপোর্ট করা হবে।

একটি সংশোধিত একত্রীকরণ অনুরোধ জমা দেওয়া হয়েছে৷

https://github.com/openresty/lua-nginx-module/pull/2168/files#diff-ebaa829579f91b18746b0bb13948131e7dcaa19dbae1d843c6fbbebc682951a2<br>বিভিন্ন স্বাক্ষরতার পূর্ণসংখ্যার অভিব্যক্তির তুলনা

এটি অস্থায়ীভাবে নিম্নলিখিত কোড দিয়ে ঠিক করা যেতে পারে।

```
sd "ngx_int_t\s+rc, i;" "ngx_int_t rc;size_t i;" /tmp/nginx-quic/lua-nginx-module/src/ngx_http_lua_socket_tcp.c
```