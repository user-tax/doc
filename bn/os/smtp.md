# আপনার নিজস্ব SMTP মেল পাঠানোর সার্ভার তৈরি করুন

## প্রস্তাবনা

SMTP সরাসরি ক্লাউড বিক্রেতাদের থেকে পরিষেবা ক্রয় করতে পারে, যেমন:

* [আমাজন এসইএস এসএমটিপি](https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html)
* [আলী মেঘ ইমেইল ধাক্কা](https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods)

আপনি আপনার নিজস্ব মেল সার্ভারও তৈরি করতে পারেন - সীমাহীন প্রেরণ, কম সামগ্রিক খরচ৷

নীচে, আমরা ধাপে ধাপে দেখাচ্ছি কিভাবে আমাদের নিজস্ব মেল সার্ভার তৈরি করতে হয়।

## সার্ভার নির্বাচন

স্ব-হোস্টেড SMTP সার্ভারের জন্য পোর্ট 25, 456, এবং 587 খোলা সহ একটি পাবলিক IP প্রয়োজন।

সাধারণভাবে ব্যবহৃত পাবলিক ক্লাউডগুলি এই পোর্টগুলিকে ডিফল্টরূপে অবরুদ্ধ করে রেখেছে, এবং কাজের আদেশ জারি করে সেগুলি খোলা সম্ভব হতে পারে, তবে সর্বোপরি এটি খুব ঝামেলার।

আমি এমন একটি হোস্ট থেকে কেনার পরামর্শ দিই যেখানে এই পোর্টগুলি খোলা আছে এবং বিপরীত ডোমেন নাম সেট আপ করা সমর্থন করে৷

এখানে, আমি [Contabo](https://contabo.com) সুপারিশ করছি।

Contabo হল মিউনিখ, জার্মানিতে অবস্থিত একটি হোস্টিং প্রদানকারী, যা 2003 সালে খুব প্রতিযোগিতামূলক মূল্যের সাথে প্রতিষ্ঠিত হয়েছিল।

আপনি যদি ক্রয়ের মুদ্রা হিসাবে ইউরো বেছে নেন, তাহলে দাম কম হবে (8 জিবি মেমরি এবং 4টি সিপিইউ সহ একটি সার্ভার প্রতি বছরে প্রায় 529 ইউয়ান খরচ করে এবং প্রাথমিক ইনস্টলেশন ফি এক বছরের জন্য বিনামূল্যে)।

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp)

একটি অর্ডার দেওয়ার সময়, মন্তব্য `prefer AMD` , এবং AMD CPU সহ সার্ভারের কর্মক্ষমতা আরও ভাল হবে৷

নিম্নলিখিতটিতে, আপনার নিজের মেল সার্ভার কীভাবে তৈরি করবেন তা প্রদর্শন করার জন্য আমি Contabo-এর VPS-কে উদাহরণ হিসেবে নেব।

## উবুন্টু সিস্টেম কনফিগারেশন

এখানে অপারেটিং সিস্টেম হল উবুন্টু 22.04

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp)

যদি ssh-এ সার্ভারটি প্রদর্শন করে তাহলে `Welcome to TinyCore 13!` (নীচের চিত্রে দেখানো হয়েছে), এর মানে হল যে সিস্টেমটি এখনও ইনস্টল করা হয়নি। অনুগ্রহ করে ssh সংযোগ বিচ্ছিন্ন করুন এবং আবার লগ ইন করার জন্য কয়েক মিনিট অপেক্ষা করুন৷

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp)

যখন `Welcome to Ubuntu 22.04.1 LTS` প্রদর্শিত হবে, আরম্ভ করা সম্পূর্ণ হবে, এবং আপনি নিম্নলিখিত পদক্ষেপগুলি চালিয়ে যেতে পারেন।

### [ঐচ্ছিক] উন্নয়ন পরিবেশ শুরু করুন

এই ধাপটি ঐচ্ছিক।

সুবিধার জন্য, আমি [github.com/user-tax-dev/os/tree/main/ubuntu](https://github.com/user-tax-dev/os/tree/main/ubuntu) এ উবুন্টু সফ্টওয়্যারের ইনস্টলেশন এবং সিস্টেম কনফিগারেশন রেখেছি।

এক ক্লিকে ইনস্টল করতে নিম্নলিখিত কমান্ডটি চালান।

```
bash <(curl -s https://raw.githubusercontent.com/user-tax-dev/os/main/ubuntu/boot.sh)
```

চীনা ব্যবহারকারীরা, অনুগ্রহ করে এর পরিবর্তে নিম্নলিখিত কমান্ডটি ব্যবহার করুন এবং ভাষা, সময় অঞ্চল ইত্যাদি স্বয়ংক্রিয়ভাবে সেট হয়ে যাবে।

```
CN=1 bash <(curl -s https://ghproxy.com/https://raw.githubusercontent.com/user-tax-dev/os/main/ubuntu/boot.sh)
```

### Contabo IPV6 সক্ষম করে

IPV6 সক্ষম করুন যাতে SMTPও IPV6 ঠিকানা সহ ইমেল পাঠাতে পারে৷

`/etc/sysctl.conf` সম্পাদনা করুন

নিম্নলিখিত লাইনগুলি পরিবর্তন বা যোগ করুন

```
net.ipv6.conf.all.disable_ipv6 = 0
net.ipv6.conf.default.disable_ipv6 = 0
net.ipv6.conf.lo.disable_ipv6 = 0
```

[কনটাবো টিউটোরিয়াল অনুসরণ করুন: আপনার সার্ভারে IPv6 সংযোগ যোগ করা হচ্ছে](https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/)

সম্পাদনা করুন `/etc/netplan/01-netcfg.yaml` , নীচের চিত্রে দেখানো হিসাবে কয়েকটি লাইন যুক্ত করুন (কন্টাবো ভিপিএস ডিফল্ট কনফিগারেশন ফাইলে ইতিমধ্যে এই লাইনগুলি রয়েছে, কেবল তাদের মন্তব্য করুন)।

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp)

তারপর সার্ভার পুনরায় চালু করুন।

কনফিগারেশন সফল হওয়ার পরে, আপনি আপনার বাহ্যিক নেটওয়ার্কের ipv6 ঠিকানা দেখতে `curl 6.ipw.cn` ব্যবহার করতে পারেন।

## কনফিগারেশন রিপোজিটরি অপ্স ক্লোন করুন

```
git clone https://github.com/user-tax/ops.git
```

## আপনার ডোমেন নামের জন্য একটি বিনামূল্যের SSL শংসাপত্র তৈরি করুন

মেল পাঠানোর জন্য এনক্রিপশন এবং স্বাক্ষর করার জন্য একটি SSL শংসাপত্রের প্রয়োজন৷

আমরা শংসাপত্র তৈরি করতে [acme.sh](https://github.com/acmesh-official/acme.sh) ব্যবহার করি।

acme.sh হল একটি ওপেন সোর্স স্বয়ংক্রিয় সার্টিফিকেট সাইনিং টুল,

কনফিগারেশন ওয়্যারহাউস অপস লিখুন, `./ssl.sh` চালান, এবং উপরের ডিরেক্টরিতে একটি `conf` ফোল্ডার তৈরি করা হবে।

ডিরেক্টরি গঠন নিম্নরূপ:

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp)

[acme.sh dnsapi](https://github.com/acmesh-official/acme.sh/wiki/dnsapi) থেকে আপনার DNS প্রদানকারী খুঁজুন, `conf/conf.sh` সম্পাদনা করুন।

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp)

তারপর আপনার ডোমেইন নামের জন্য `123.com` এবং `*.123.com` সার্টিফিকেট তৈরি করতে `./ssl.sh 123.com` চালান।

প্রথম রান স্বয়ংক্রিয়ভাবে [acme.sh](https://github.com/acmesh-official/acme.sh) ইনস্টল করবে এবং স্বয়ংক্রিয় পুনর্নবীকরণের জন্য একটি নির্ধারিত কাজ যোগ করবে। `crontab -l` নিচের মত একটি লাইন আছে দেখতে পারেন.

```
52 0 * * * "/mnt/www/.acme.sh"/acme.sh --cron --home "/mnt/www/.acme.sh" > /dev/null
```

উত্পন্ন শংসাপত্রের পথটি হল `/mnt/www/.acme.sh/123.com_ecc。`

শংসাপত্র পুনর্নবীকরণ `conf/reload/123.com.sh` স্ক্রিপ্টে কল করবে, এই স্ক্রিপ্টটি সম্পাদনা করুন, আপনি সম্পর্কিত অ্যাপ্লিকেশনগুলির শংসাপত্র ক্যাশে রিফ্রেশ করতে `nginx -s reload` মতো কমান্ড যোগ করতে পারেন।

## Chasquid দিয়ে SMTP সার্ভার তৈরি করুন

[chasquid](https://github.com/albertito/chasquid) হল একটি ওপেন সোর্স SMTP সার্ভার যা Go ভাষায় লেখা।

পোস্টফিক্স এবং সেন্ডমেইলের মতো প্রাচীন মেল সার্ভার প্রোগ্রামগুলির বিকল্প হিসাবে, চ্যাসকুইড সহজ এবং ব্যবহার করা সহজ, এবং এটি গৌণ বিকাশের জন্যও সহজ।

চালান `./chasquid/init.sh 123.com` এক ক্লিকে স্বয়ংক্রিয়ভাবে ইনস্টল হয়ে যাবে (আপনার পাঠানো ডোমেন নাম দিয়ে 123.com প্রতিস্থাপন করুন)।

## ইমেল স্বাক্ষর DKIM কনফিগার করুন

চিঠিগুলিকে স্প্যাম হিসাবে গণ্য করা থেকে বিরত রাখতে ইমেল স্বাক্ষর পাঠাতে DKIM ব্যবহার করা হয়।

কমান্ডটি সফলভাবে চলার পর, আপনাকে DKIM রেকর্ড সেট করতে বলা হবে (নিচে দেখানো হয়েছে)।

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp)

শুধু আপনার DNS এ একটি TXT রেকর্ড যোগ করুন (নিচে দেখানো হয়েছে)।

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp)

## পরিষেবার স্থিতি এবং লগগুলি দেখুন৷

`systemctl status chasquid` পরিষেবার অবস্থা দেখুন।

স্বাভাবিক ক্রিয়াকলাপের অবস্থা নীচের চিত্রে দেখানো হয়েছে

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp)

`grep chasquid /var/log/syslog` বা `journalctl -xeu chasquid` ত্রুটি লগ দেখতে পারে।

## বিপরীত ডোমেন নাম কনফিগারেশন

বিপরীত ডোমেন নাম হল IP ঠিকানাটিকে সংশ্লিষ্ট ডোমেন নামের সাথে সমাধান করার অনুমতি দেওয়া।

একটি বিপরীত ডোমেন নাম সেট করা ইমেলগুলিকে স্প্যাম হিসাবে চিহ্নিত করা থেকে আটকাতে পারে।

মেলটি প্রাপ্ত হলে, প্রেরক সার্ভারের একটি বৈধ বিপরীত ডোমেন নাম আছে কিনা তা নিশ্চিত করতে প্রাপ্ত সার্ভার প্রেরণকারী সার্ভারের আইপি ঠিকানায় বিপরীত ডোমেন নাম বিশ্লেষণ করবে।

প্রেরক সার্ভারের একটি বিপরীত ডোমেন নাম না থাকলে বা যদি প্রেরক সার্ভারের আইপি ঠিকানার সাথে বিপরীত ডোমেন নামটি মেলে না, তবে গ্রহণকারী সার্ভার ইমেলটিকে স্প্যাম হিসাবে চিনতে পারে বা এটি প্রত্যাখ্যান করতে পারে।

[https://my.contabo.com/rdns](https://my.contabo.com/rdns) ভিজিট করুন এবং নিচের মত কনফিগার করুন

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp)

বিপরীত ডোমেন নাম সেট করার পরে, সার্ভারে ডোমেন নামের ipv4 এবং ipv6 এর ফরোয়ার্ড রেজোলিউশন কনফিগার করতে ভুলবেন না।

## chasquid.conf এর হোস্টনাম সম্পাদনা করুন

`conf/chasquid/chasquid.conf` বিপরীত ডোমেইন নামের মান পরিবর্তন করুন।

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp)

তারপর পরিষেবা পুনরায় চালু করতে `systemctl restart chasquid` চালান।

## গিট রিপোজিটরিতে কনফ ব্যাকআপ করুন

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp)

উদাহরণস্বরূপ, আমি conf ফোল্ডারটিকে আমার নিজস্ব গিথুব প্রক্রিয়াতে ব্যাক আপ করি

প্রথমে একটি ব্যক্তিগত গুদাম তৈরি করুন

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp)

conf ডিরেক্টরি লিখুন এবং গুদামে জমা দিন

```
git init
git add .
git commit -m "init"
git branch -M main
git remote add origin git@github.com:user-tax-key/conf.git
git push -u origin main
```

## প্রেরক যোগ করুন

চালানো

```
chasquid-util user-add i@user.tax
```

প্রেরক যোগ করতে পারেন

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp)

### পাসওয়ার্ড সঠিকভাবে সেট করা আছে তা যাচাই করুন

```
chasquid-util authenticate i@user.tax --password=xxxxxxx
```

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp)

ব্যবহারকারী যোগ করার পরে, `chasquid/domains/user.tax/users` আপডেট করা হবে, এটি গুদামে জমা দিতে মনে রাখবেন।

## DNS যোগ করুন SPF রেকর্ড

এসপিএফ (প্রেরক নীতি ফ্রেমওয়ার্ক) হল একটি ইমেল যাচাইকরণ প্রযুক্তি যা ইমেল জালিয়াতি প্রতিরোধ করতে ব্যবহৃত হয়।

এটি একটি মেল প্রেরকের পরিচয় যাচাই করে যে প্রেরকের আইপি ঠিকানাটি ডোমেইন নামের ডিএনএস রেকর্ডের সাথে মেলে তা যাচাই করে, যা জালিয়াতিকারীদের জাল ইমেল পাঠানো থেকে বাধা দেয়।

এসপিএফ রেকর্ড যোগ করা ইমেলগুলিকে যতটা সম্ভব স্প্যাম হিসাবে চিহ্নিত করা থেকে আটকাতে পারে।

যদি আপনার ডোমেন নাম সার্ভার SPF প্রকার সমর্থন না করে, তাহলে শুধু TXT প্রকার রেকর্ড যোগ করুন।

উদাহরণস্বরূপ, `user.tax` এর SPF নিম্নরূপ

`v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all`

`_spf.user.tax` এর জন্য SPF

`v=spf1 a:smtp.user.tax ~all`

মনে রাখবেন যে আমি এখানে `include:_spf.google.com` , কারণ আমি পরে Google মেলবক্সে পাঠানোর ঠিকানা হিসাবে `i@user.tax` কনফিগার করব।

## DNS কনফিগারেশন DMARC

DMARC হল (ডোমেন-ভিত্তিক বার্তা প্রমাণীকরণ, রিপোর্টিং এবং কনফরমেন্স) এর সংক্ষিপ্ত রূপ।

এটি SPF বাউন্স ক্যাপচার করতে ব্যবহার করা হয় (হয়তো কনফিগারেশন ত্রুটির কারণে, অথবা অন্য কেউ স্প্যাম পাঠানোর জন্য আপনাকে ভান করছে)।

TXT রেকর্ড যোগ করুন `_dmarc` ,

বিষয়বস্তু নিম্নরূপ

```
v=DMARC1; p=quarantine; fo=1; ruf=mailto:ruf@user.tax; rua=mailto:rua@user.tax
```

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp)

প্রতিটি প্যারামিটারের অর্থ নিম্নরূপ

### p (নীতি)

SPF (প্রেরক নীতি ফ্রেমওয়ার্ক) বা DKIM (ডোমেনকি আইডেন্টিফাইড মেল) যাচাইকরণে ব্যর্থ ইমেলগুলি কীভাবে পরিচালনা করবেন তা নির্দেশ করে। p প্যারামিটারটি তিনটি মানের একটিতে সেট করা যেতে পারে:

* কোনোটি নয়: কোনো ব্যবস্থা নেওয়া হয় না, শুধুমাত্র যাচাইয়ের ফলাফল ইমেল রিপোর্টিং পদ্ধতির মাধ্যমে প্রেরকের কাছে ফেরত দেওয়া হয়।
* কোয়ারেন্টাইন: স্প্যাম ফোল্ডারে ভেরিফিকেশন পাস করেনি এমন মেলটি রাখুন, কিন্তু সরাসরি মেলটি প্রত্যাখ্যান করবে না।
* প্রত্যাখ্যান করুন: যাচাই করতে ব্যর্থ হওয়া ইমেলগুলি সরাসরি প্রত্যাখ্যান করুন।

### fo (ব্যর্থতার বিকল্প)

রিপোর্টিং প্রক্রিয়া দ্বারা ফেরত তথ্যের পরিমাণ নির্দিষ্ট করে। এটি নিম্নলিখিত মানগুলির মধ্যে একটিতে সেট করা যেতে পারে:

* 0: সমস্ত বার্তার জন্য বৈধতা ফলাফল রিপোর্ট করুন
* 1: শুধুমাত্র সেই বার্তাগুলির রিপোর্ট করুন যা যাচাই করতে ব্যর্থ হয়৷
* d: শুধুমাত্র ডোমেইন নাম যাচাইকরণ ব্যর্থতার রিপোর্ট করুন
* s: শুধুমাত্র SPF যাচাইকরণ ব্যর্থতার রিপোর্ট করুন
* l: শুধুমাত্র DKIM যাচাইকরণ ব্যর্থতার রিপোর্ট করুন

### rua & ruf

* rua (সমষ্টিগত প্রতিবেদনের জন্য URI প্রতিবেদন করা): সমষ্টিগত প্রতিবেদন গ্রহণের জন্য ইমেল ঠিকানা
* ruf (ফরেন্সিক রিপোর্টের জন্য URI রিপোর্টিং): বিস্তারিত রিপোর্ট পেতে ইমেল ঠিকানা

## Google Mail-এ ইমেল ফরোয়ার্ড করতে MX রেকর্ড যোগ করুন

যেহেতু আমি একটি বিনামূল্যে কর্পোরেট মেলবক্স খুঁজে পাইনি যা সার্বজনীন ঠিকানাগুলিকে সমর্থন করে (ক্যাচ-অল, এই ডোমেন নামে প্রেরিত যেকোনো ইমেল গ্রহণ করতে পারে, উপসর্গের উপর সীমাবদ্ধতা ছাড়াই), আমি আমার Gmail মেলবক্সে সমস্ত ইমেল ফরোয়ার্ড করার জন্য চ্যাসকুইড ব্যবহার করেছি।

**আপনার যদি নিজস্ব অর্থপ্রদানের ব্যবসার মেইলবক্স থাকে, তাহলে অনুগ্রহ করে MX পরিবর্তন করবেন না এবং এই পদক্ষেপটি এড়িয়ে যাবেন না।**

`conf/chasquid/domains/user.tax/aliases` সম্পাদনা করুন, ফরওয়ার্ডিং মেলবক্স সেট করুন

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp)

`*` সমস্ত ইমেল নির্দেশ করে, `i` হল উপরে তৈরি করা প্রেরক ব্যবহারকারীর ইমেল ঠিকানা উপসর্গ। মেল ফরোয়ার্ড করার জন্য, প্রতিটি ব্যবহারকারীকে একটি লাইন যোগ করতে হবে।

তারপর MX রেকর্ড যোগ করুন (আমি এখানে বিপরীত ডোমেন নামের ঠিকানাটি সরাসরি নির্দেশ করছি, যেমনটি নীচের চিত্রের প্রথম লাইনে দেখানো হয়েছে)।

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp)

কনফিগারেশন সম্পূর্ণ হওয়ার পরে, আপনি Gmail এ ইমেল পেতে পারেন কিনা তা দেখতে `i@user.tax` এবং `any123@user.tax` এ ইমেল পাঠাতে আপনি অন্যান্য ইমেল ঠিকানা ব্যবহার করতে পারেন।

যদি না হয়, chasquid log ( `grep chasquid /var/log/syslog` ) পরীক্ষা করুন।

## Google Mail-এর মাধ্যমে i@user.tax-এ একটি ইমেল পাঠান

Google Mail মেইলটি পাওয়ার পর, i.user.tax@gmail.com এর পরিবর্তে `i@user.tax` দিয়ে উত্তর দিতে ইচ্ছুক হওয়া স্বাভাবিক।

[https://mail.google.com/mail/u/1/#settings/accounts](https://mail.google.com/mail/u/1/#settings/accounts) এ যান এবং "অন্য ইমেল ঠিকানা যোগ করুন" এ ক্লিক করুন।

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp)

তারপরে, ফরোয়ার্ড করা ইমেলের মাধ্যমে প্রাপ্ত যাচাইকরণ কোডটি লিখুন।

অবশেষে, এটি ডিফল্ট প্রেরকের ঠিকানা হিসাবে সেট করা যেতে পারে (একই ঠিকানা দিয়ে উত্তর দেওয়ার বিকল্প সহ)।

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp)

এইভাবে, আমরা SMTP মেল সার্ভারের প্রতিষ্ঠা সম্পন্ন করেছি এবং একই সাথে ইমেল পাঠাতে ও গ্রহণ করতে Google Mail ব্যবহার করি।

## কনফিগারেশন সফল কিনা তা পরীক্ষা করতে একটি পরীক্ষার ইমেল পাঠান

`ops/chasquid` লিখুন

`direnv allow` (ডিরেনভ পূর্ববর্তী ওয়ান-কি ইনিশিয়ালাইজেশন প্রক্রিয়ায় ইনস্টল করা হয়েছে এবং শেলে একটি হুক যোগ করা হয়েছে)

তারপর চালানো

```
user=i@user.tax pass=xxxx to=iuser.link@gmail.com ./sendmail.coffee
```

পরামিতিগুলির অর্থ নিম্নরূপ

* ব্যবহারকারী: SMTP ব্যবহারকারীর নাম
* পাস: SMTP পাসওয়ার্ড
* থেকে: প্রাপক

আপনি একটি পরীক্ষা ইমেল পাঠাতে পারেন.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp)

কনফিগারেশন সফল কিনা তা পরীক্ষা করার জন্য পরীক্ষামূলক ইমেল পেতে Gmail ব্যবহার করার পরামর্শ দেওয়া হয়।

### TLS স্ট্যান্ডার্ড এনক্রিপশন

নীচের চিত্রে দেখানো হয়েছে, এই ছোট লকটি রয়েছে, যার অর্থ হল SSL শংসাপত্রটি সফলভাবে সক্ষম হয়েছে৷

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp)

তারপর "মূল ইমেল দেখান" ক্লিক করুন

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp)

### ডিকেআইএম

নীচের চিত্রে যেমন দেখানো হয়েছে, Gmail মূল মেইল ​​পৃষ্ঠাটি DKIM প্রদর্শন করে, যার মানে DKIM কনফিগারেশন সফল।

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp)

আসল ইমেলের শিরোনামে প্রাপ্ত চেক করুন, এবং আপনি দেখতে পাবেন যে প্রেরকের ঠিকানা হল IPV6, যার মানে হল IPV6 সফলভাবে কনফিগার করা হয়েছে।