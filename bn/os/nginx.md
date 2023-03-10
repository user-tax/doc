# NGINX সংকলন এবং ইনস্টলেশন

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