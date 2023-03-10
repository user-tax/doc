# तुमचो स्वताचो SMTP मेल धाडपी सर्वर तयार करचो

## प्रस्तावना

SMTP मेघ विक्रेत्या कडल्यान थेट सेवा खरेदी करूंक शकता, जशे की:

* [अमेझॉन एसईएस एसएमटीपी](https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html)
* [अली मेघ ईमेल धक्को](https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods)

तुमी तुमचो स्वताचो मेल सर्वरय तयार करूंक शकतात - अमर्यादीत धाडप, एकंदर खर्च उणो.

सकयल, आमी आमचो स्वताचो मेल सर्वर कसो तयार करचो तें टप्प्या टप्प्यान दाखयतात.

## सर्वर निवड

स्वता होस्ट केल्ल्या SMTP सर्वराक 25, 456, आनी 587 पोर्ट उक्ते आशिल्लो भौशीक IP जाय.

सादारणपणान वापरिल्ल्या भौशीक मेघांनी हे पोर्ट डिफॉल्ट रितीन आडायल्यात, आनी वर्क ऑर्डर जारी करून ते उगडप शक्य आसूं येता, पूण सगळ्या उपरांत तें खूब त्रासदायक आसा.

हे पोर्ट उक्ते आशिल्ल्या आनी रिव्हर्स डोमेन नांवां सेट करपाक तेंको दिवपी यजमानांतल्यान खरेदी करपाची शिफारस करतां.

हांगा, हांव शिफारस करतां [Contabo](https://contabo.com) .

कॉन्टाबो ही जर्मनींतल्या म्यूनिक शारांत आशिल्ली होस्टिंग प्रदाता आसून, ती 2003 वर्सा स्थापन जाल्ली आनी तिची दर खूब स्पर्धात्मक आसा.

खरेदीचें चलन म्हणून युरो निवडल्यार, किंमत सवाय जातली (8GB मेमरी आनी 4 CPU आशिल्ल्या सर्वराक वर्साक सुमार 529 युआन खर्च येता, आनी सुरवातीची प्रतिष्ठापन शुल्क एक वर्सा खातीर फुकट आसा).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp)

ऑर्डर दितना, टिप्पणी `prefer AMD` , आनी AMD CPU आशिल्ल्या सर्वराक चड बरी कार्यक्षमताय आसतली.

सकयल दिल्ल्यांत, तुमचो स्वताचो मेल सर्वर कसो तयार करचो तें दाखोवपा खातीर हांव Contabo चो VPS एक उदाहरण म्हणून घेतलों.

## उबंटू प्रणाली संरचना

हांगाची कार्यप्रणाली उबंटू 22.04 आसा

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp)

ssh चेर सर्वर दाखयता जाल्यार `Welcome to TinyCore 13!` (खाला आकृतींत दाखयल्ले प्रमाण), ताचो अर्थ प्रणाली अजून स्थापीत जावंक ना. उपकार करून ssh काडून उडोवचो आनी परतून लॉग इन करपाक कांय मिण्टां वाट पळोवची.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp)

जेन्ना `Welcome to Ubuntu 22.04.1 LTS` दिसता, तेन्ना आरंभ पुराय जाता, आनी तुमी सकयल दिल्ल्या पांवड्यान फुडें वचूंक शकतात.

### [पर्यायी] विकास वातावरण सुरू करप

हें पावल पर्यायी आसा.

सोयी खातीर, हांवें ubuntu सॉफ्टवॅराची प्रतिष्ठापन आनी प्रणाली संरचना [github.com/user-tax-dev/os/tree/main/ubuntu](https://github.com/user-tax-dev/os/tree/main/ubuntu) हातूंत घाल्या.

एका क्लिकान प्रतिष्ठापीत करपाक सकयल दिल्लो आदेश चालीक लावचो.

```
bash <(curl -s https://raw.githubusercontent.com/user-tax-dev/os/main/ubuntu/boot.sh)
```

चीनी वापरप्यांक, उपकार करून ताचे बदला सकयल दिल्लो आदेश वापरात, आनी भास, वेळ क्षेत्र आदी आपोआप सेट जातलो.

```
CN=1 bash <(curl -s https://ghproxy.com/https://raw.githubusercontent.com/user-tax-dev/os/main/ubuntu/boot.sh)
```

### Contabo IPV6 सक्षम करता

IPV6 सक्षम करात जेणे करून SMTP IPV6 पत्त्या आशिल्ले ईमेलय धाडूंक शकता.

`/etc/sysctl.conf` संपादीत करचें

सकयल दिल्ल्यो ओळी सुदारात वा जोडात

```
net.ipv6.conf.all.disable_ipv6 = 0
net.ipv6.conf.default.disable_ipv6 = 0
net.ipv6.conf.lo.disable_ipv6 = 0
```

[contabo ट्युटोरियलान फालोअप करात: तुमच्या सर्वराक IPv6 जोडणी जोडप](https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/)

`/etc/netplan/01-netcfg.yaml` संपादीत करात, सकयल दिल्ल्या आकृतींत दाखयल्ले प्रमाणें कांय ओळी जोडात (Contabo VPS मुलभूत संरचना फायलीन पयलींच ह्यो ओळी आसात, फकत तांचेर टिप्पणी काडून उडोवची).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp)

मागीर सर्वर परतून सुरू करचो.

संरचना यशस्वी जाले उपरांत, तुमच्या भायल्या नेटवर्काचो ipv6 पत्तो पळोवपाक तुमी `curl 6.ipw.cn` वापरूं येता.

## संरचना रिपॉझिटरी ऑप्स क्लोन करात

```
git clone https://github.com/user-tax/ops.git
```

## तुमच्या डोमेन नावा खातीर फुकट SSL प्रमाणपत्र तयार करात

मेल धाडपाक एनक्रिप्शन आनी सायनिंग खातीर SSL प्रमाणपत्र जाय पडटा.

प्रमाणपत्रां तयार करपाक आमी [acme.sh](https://github.com/acmesh-official/acme.sh) वापरतात.

acme.sh हें मुक्त स्रोत स्वयंचलीत प्रमाणपत्र स्वाक्षरी करपाचें साधन आसा,

संरचना वखार ops दाखयात, `./ssl.sh` चालीक लावचो, आनी वयल्या निर्देशिकेंत `conf` फोल्डर तयार जातलो.

निर्देशिका रचणूक अशी आसा:

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp)

[acme.sh dnsapi](https://github.com/acmesh-official/acme.sh/wiki/dnsapi) कडल्यान तुमचो DNS पुरवणदार सोदून काडात, `conf/conf.sh` संपादीत करात.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp)

मागीर तुमच्या डोमेन नांवा खातीर `123.com` आनी `*.123.com` प्रमाणपत्रां तयार करपाक `./ssl.sh 123.com` चालीक लावचें.

पयली धांवप आपोआप [acme.sh](https://github.com/acmesh-official/acme.sh) स्थापीत करतली आनी स्वयंचलीत नूतनीकरणा खातीर नियोजीत कार्य जोडटली. `crontab -l` कडेन अशी ओळ आसा हें पळोवंक मेळटा.

```
52 0 * * * "/mnt/www/.acme.sh"/acme.sh --cron --home "/mnt/www/.acme.sh" > /dev/null
```

तयार केल्ल्या प्रमाणपत्रा खातीर मार्ग `/mnt/www/.acme.sh/123.com_ecc。`

प्रमाणपत्र नूतनीकरण `conf/reload/123.com.sh` स्क्रिप्ट कॉल करतले, ही स्क्रिप्ट संपादीत करतले, संबंदीत ऍप्लिकेशनांचो प्रमाणपत्र कॅशे ताजें करपाक तुमी `nginx -s reload` सारकिले आदेश जोडूंक शकतात.

## chasquid कडेन SMTP सर्वर तयार करचो

[chasquid](https://github.com/albertito/chasquid) हो गो भाशेंत बरयल्लो मुक्त स्रोत SMTP सर्वर आसा.

Postfix आनी Sendmail ह्या पुर्विल्ल्या मेल सर्वर प्रोग्रामांचो पर्याय म्हूण, chasquid सोंपें आनी वापरपाक सोंपें आसा, आनी दुय्यम विकासा खातीरय सोंपें आसा.

Run `./chasquid/init.sh 123.com` एका क्लिकान आपोआप स्थापीत जातलो (123.com बदला तुमच्या धाडपी डोमेन नांवान).

## ईमेल स्वाक्षरी DKIM संरचीत करात

पत्रांक स्पॅम म्हणून मानूंक दिवचे न्हय म्हूण ईमेल स्वाक्षरी धाडपाक DKIM वापरतात.

आदेश यशस्वीपणान चलल्या उपरांत, तुमकां DKIM रेकॉर्ड सेट करपाक सांगतले (सकयल दाखयल्ले प्रमाणें).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp)

फकत तुमच्या DNS कडेन TXT रेकॉर्ड जोडचो (सकयल दाखयल्ले प्रमाण).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp)

## सेवा स्थिती & लॉग पळयात

`systemctl status chasquid` सेवा स्थिती पळयात.

सामान्य कार्याची स्थिती सकयल दिल्ल्या आकृतींत दाखयल्ले प्रमाण आसता

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp)

`grep chasquid /var/log/syslog` वा `journalctl -xeu chasquid` त्रुटी लॉग पळोवंक शकता.

## डोमेन नांव संरचना उलटप

उलट डोमेन नांव IP पत्तो संबंदीत डोमेन नांवाक सोडोवपाक परवानगी दिवपाचें आसता.

उलट डोमेन नांव सेट केल्यार ईमेल स्पॅम म्हणून वळखुपाक आडावंक शकता.

जेन्ना मेल मेळटा, तेन्ना मेळोवपी सर्वर धाडपी सर्वराक वैध उलट डोमेन नांव आसा काय ना हाची खात्री करपाखातीर धाडपी सर्वराच्या IP पत्त्याचेर उलट डोमेन नांव विश्लेशण करतलो.

धाडपी सर्वराक उलट डोमेन नांव ना जाल्यार वा उरफाटें डोमेन नांव धाडपी सर्वराच्या IP पत्त्याकडेन जुळना जाल्यार, मेळोवपी सर्वर ईमेल स्पॅम म्हणून वळखूंक शकता वा नाका म्हणूं येता.

[https://my.contabo.com/rdns](https://my.contabo.com/rdns) चेर भेट दिवची आनी सकयल दाखयल्ले प्रमाणें संरचीत करचें

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp)

उलट डोमेन नांव सेट केल्या उपरांत, डोमेन नांव ipv4 आनी ipv6 चें फॉरवर्ड रिझोल्यूशन सर्वराक संरचीत करपाचो उगडास दवरात.

## chasquid.conf चें यजमान नांव संपादीत करचें

`conf/chasquid/chasquid.conf` उरफाट्या डोमेन नांवाच्या मोलाक बदलात.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp)

मागीर सेवा परतून सुरू करपाक `systemctl restart chasquid` चालीक लावचो.

## git रिपॉझिटरी कडेन conf बॅकअप करचो

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp)

देखीक, हांव conf फोल्डराचो म्हज्या स्वताच्या github प्रक्रियाचेर सकयल दिल्ल्या प्रमाणें बॅकअप घेता

पयलीं खाजगी गोदाम तयार करचो

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp)

conf निर्देशिका दाखयात आनी वखारांत सादर करात

```
git init
git add .
git commit -m "init"
git branch -M main
git remote add origin git@github.com:user-tax-key/conf.git
git push -u origin main
```

## धाडपी जोडचो

धांवप

```
chasquid-util user-add i@user.tax
```

धाडपी जोडूंक शकता

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp)

### पासवर्ड योग्य रितीन सेट केला हाची खात्री करात

```
chasquid-util authenticate i@user.tax --password=xxxxxxx
```

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp)

वापरपी जोडल्या उपरांत, `chasquid/domains/user.tax/users` अद्ययावत जातले, तो वखारांत सादर करपाचो उगडास दवरात.

## DNS SPF रेकॉर्ड जोडटा

SPF ( Sender Policy Framework ) हें ईमेल सत्यापन तंत्रज्ञान आसा जें ईमेल फटवणूक आडावपाखातीर वापरतात.

तो धाडप्याचो IP पत्तो ताणें दावो केल्ल्या डोमेन नांवाच्या DNS रेकॉर्डांकडेन जुळटा काय ना तें तपासून मेल धाडप्याची वळख सत्यापीत करता, जाका लागून फटींग लोकांक बोगस ईमेल धाडूंक मेळनात.

SPF रेकॉर्ड जोडल्यार ईमेल शक्य तितले स्पॅम म्हणून वळखुपाक आडावंक शकतात.

तुमचो डोमेन नांव सर्वर SPF प्रकाराक तेंको दिना जाल्यार, फकत TXT प्रकार रेकॉर्ड जोडात.

देखीक, `user.tax` चो SPF सकयल दिल्लो आसा

`v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all`

`_spf.user.tax` खातीर एसपीएफ

`v=spf1 a:smtp.user.tax ~all`

लक्षांत दवरात की हांवें हांगा `include:_spf.google.com` केला, कारण हांव फुडें Google मेलबॉक्सांत धाडपाचो पत्तो म्हणून `i@user.tax` संरचीत करतलों.

## DNS संरचना DMARC

DMARC हो (डोमेन-आधारीत संदेश प्रमाणीकरण, अहवाल & अनुरूपताय) चो संक्षेप.

ताचो वापर SPF बाउन्स कॅप्चर करपाक जाता (कदाचित संरचना चुकांक लागून, वा स्पॅम धाडपाक दुसरो कोणूय तुमी अशें नाटक करता).

TXT रेकॉर्ड जोडचो `_dmarc` , .

आशय असो आसा

```
v=DMARC1; p=quarantine; fo=1; ruf=mailto:ruf@user.tax; rua=mailto:rua@user.tax
```

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp)

दर एका मापदंडाचो अर्थ असो आसता

### प (धोरण) 1.1.

SPF (प्रेषक धोरण चौकटी) वा DKIM (DomainKeys Identified Mail) सत्यापन अपेस आयिल्ले ईमेल कशे हाताळचे तें दाखयता. p मापदंड तीन मोलांतल्या एका मोलाचेर सेट करूं येता:

* none: कसलीच कारवाय केल्ली ना, फकत सत्यापन परिणाम ईमेल अहवाल यंत्रणे वरवीं धाडप्याक परत दितात.
* क्वारंटायन: सत्यापन पास जावंक नाशिल्लो मेल स्पॅम फोल्डरांत घालचो, पूण मेल थेट नाका म्हणचो ना.
* reject: सत्यापन अपेस आयिल्ले ईमेल थेट नाका म्हणप.

### fo (अपयशी पर्याय) 1.1.

अहवाल यंत्रणेन परतून दिल्ले म्हायतीची रक्कम स्पश्ट करता. ताका सकयल दिल्ल्या मोलांतल्या एका मोलाचेर सेट करूं येता:

* 0: सगळ्या संदेशां खातीर प्रमाणीकरण परिणाम अहवाल दिवचो
* 1: फकत सत्यापन अपेस आयिल्ल्या संदेशांचो अहवाल दिवचो
* d: फकत डोमेन नांव सत्यापन अपयशींचो अहवाल दिवप
* s: फकत SPF सत्यापन अपयशींचो अहवाल दिवप
* l: फकत DKIM सत्यापन अपयशींचो अहवाल दिवप

### rua & ruf हें नांव

* rua (एकठांय अहवालां खातीर URI अहवाल दिवप): एकठांय केल्ले अहवाल मेळोवपा खातीर ईमेल पत्तो
* ruf (न्यायिक अहवालां खातीर URI अहवाल दिवप): तपशीलवार अहवाल मेळोवपाक ईमेल पत्तो

## Google Mail कडेन ईमेल फॉरवर्ड करपाक MX रेकॉर्ड जोडात

सार्वत्रिक पत्त्यांक आदार दिवपी फुकट कॉर्पोरेट मेलबॉक्स म्हाका मेळूंक नाशिल्ल्यान (Catch-All, ह्या डोमेन नांवाक धाडिल्ले खंयचेय ईमेल मेळूं येतात, उपसर्गांचेर निर्बंध नासतना), हांवें सगळे ईमेल म्हज्या Gmail मेलबॉक्सांत फॉरवर्ड करपाक chasquid वापरलो.

**तुमचे कडेन तुमचो स्वताचो फारीक केल्लो वेवसाय मेलबॉक्स आसल्यार, उपकार करून एमएक्सांत बदल करूंक नाकात आनी हें पावल वगडावचें.**

`conf/chasquid/domains/user.tax/aliases` संपादीत करात, मेलबॉक्स फॉरवर्डिंग सेट करात

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp)

`*` सगळे ईमेल दाखयता, `i` हो वयर तयार केल्लो धाडपी वापरप्याचो ईमेल पत्तो उपसर्ग आसा. मेल फॉरवर्ड करपाक, दरेका वापरप्यान एक ओळ जोडची पडटा.

मागीर MX रेकॉर्ड जोडचो (हांगा हांव सरळ रिव्हर्स डोमेन नांवाच्या पत्त्याक दाखयता, जशें सकयल दिल्ल्या आकृतींतल्या पयल्या ओळींत दाखयलां).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp)

संरचना पुराय जाले उपरांत, तुमी हेर ईमेल पत्ते वापरून `i@user.tax` आनी `any123@user.tax` हाचेर ईमेल धाडूंक शकतात, तुमकां Gmail त ईमेल मेळूं येतात काय ना तें पळोवपाक.

ना जाल्यार, चॅस्किड लॉग तपासात ( `grep chasquid /var/log/syslog` ).

## Google Mail वरवीं i@user.tax हाचेर ईमेल धाडचो

Google मेलाक मेल मेळ्ळ्या उपरांत i.user.tax@gmail.com बदला `i@user.tax` वरवीं जाप दिवपाची इत्सा आसप स्वाभावीक.

[https://mail.google.com/mail/u/1/#settings/accounts](https://mail.google.com/mail/u/1/#settings/accounts) चेर भेट दिवची आनी "दुसरो ईमेल पत्तो जोडचो" क्लिक करचो.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp)

मागीर, फॉरवर्ड केल्ल्या ईमेलाक मेळिल्लो सत्यापन कोड दाखयात.

निमाणें, तो मुलभूत धाडपी पत्तो म्हणून सेट करूं येता (त्याच पत्त्यान जाप दिवपाचो पर्याया वांगडा).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp)

अशे तरेन आमी एसएमटीपी मेल सर्वराची स्थापणूक पुराय केल्या आनी त्याच वेळार ईमेल धाडपाक आनी मेळोवपाक Google मेल वापरतात.

## संरचना यशस्वी जाल्या काय ना तें तपासपाक चांचणी ईमेल धाडचो

`ops/chasquid` दाखयात

`direnv allow` (direnv आदल्या एक-की आरंभ प्रक्रियेंत प्रतिष्ठापीत केला आनी शेलाक हुक जोडला)

मागीर धांवप

```
user=i@user.tax pass=xxxx to=iuser.link@gmail.com ./sendmail.coffee
```

मापदंडांचो अर्थ असो आसा

* वापरपी: एसएमटीपी वापरप्याचें नांव
* पास: एसएमटीपी पासवर्ड
* to: मेळोवपी

तुमी चांचणी ईमेल धाडूंक शकतात.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp)

संरचना यशस्वी जाल्या काय ना तें तपासपाक चांचणी ईमेल मेळोवपाक Gmail वापरपाची शिफारस केल्या.

### TLS मानक एनक्रिप्शन

सकयल दिल्ल्या आकृतींत दाखयल्ले प्रमाणें, हें ल्हान लॉक आसा, म्हणल्यार SSL प्रमाणपत्र यशस्वीपणान सक्षम केलां.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp)

मागीर "मूळ ईमेल दाखोवचो" क्लिक करात.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp)

### डी.के.आय.एम

सकयल दिल्ल्या आकृतींत दाखयल्ले प्रमाणें, Gmail मूळ मेल पान DKIM दाखयता, म्हणल्यार DKIM संरचना यशस्वी जाल्या.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp)

मूळ ईमेलाच्या शीर्षकात मेळ्ळां तपासात, आनी तुमकां दिसूं येता की धाडपी पत्तो IPV6 आसा, म्हणल्यार IPV6 लेगीत यशस्वीपणान संरचीत केला.