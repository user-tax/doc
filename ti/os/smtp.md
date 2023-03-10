# ናይ ባዕልኻ SMTP መልእኽቲ ምልኣኽ ኣገልጋሊ ምህናጽ

## መቕድም

SMTP ብቐጥታ ካብ ሸየጥቲ ደበና ኣገልግሎታት ክገዝእ ይኽእል እዩ፣ ከም፤

* [ኣማዞን SES SMTP](https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html)
* [ዓሊ ደበና ኢመይል ድፍኢት](https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods)

ናይ ገዛእ ርእስኻ ናይ ፖስታ ኣገልጋሊ እውን ክትሃንጽ ትኽእል ኢኻ - ደረት ኣልቦ ምልኣኽ፣ ትሑት ሓፈሻዊ ወጻኢታት።

ኣብ ታሕቲ ደረጃ ብደረጃ ከመይ ጌርና ናይ ገዛእ ርእስና ፖስታ ሰርቨር ንሃንጽ ንርኢ።

## ምምራጽ ኣገልጋሊ

እቲ ባዕሉ ዝእንገድ SMTP ሰርቨር ፖርት 25፣ 456ን 587ን ክፉት ዘለዎ ህዝባዊ IP የድልዮ።

ልሙድ ዝኾነ ህዝባዊ ደበናታት ነዞም ወደባት ብነባሪ መልክዑ ዓጽዮምዎም ኣለዉ፡ ትእዛዝ ስራሕ ብምውጻእ ድማ ክኽፈቶም ይከኣል ይኸውን፡ ድሕሪ ኩሉ ግን ኣዝዩ ጸገም ኣለዎ።

ካብ ሓደ እዞም ፖርትታት ክፉታት ዘለዎምን ንተገላባጢ ዶመይን ኣስማት ምድላው ዝድግፍን ሆስት ክትገዝእ እላቦ።

ኣብዚ [፡ ኮንታቦ](https://contabo.com) .

ኮንታቦ ኣብ ጀርመን ከተማ ሙኒክ ዝመደበሩ ናይ ኣአንጋዲ ኣቕራቢ ኮይኑ፡ ኣብ 2003 ብኣዝዩ ተወዳዳሪ ዋጋ ዝተመስረተ እዩ።

ከም ባጤራ ዕድጊ ዩሮ እንተመሪጽካ፡ ዋጋኡ ዝሓሰረ ክኸውን እዩ (8GB መዘክርን 4 ሲፒዩን ዘለዎ ሰርቨር ኣብ ዓመት ኣስታት 529 ዩዋን ይሽየጥ፡ ናይ መጀመርታ ናይ ምትካል ክፍሊት ድማ ንሓደ ዓመት ብነጻ እዩ)።

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp)

ትእዛዝ ኣብ እትገብረሉ እዋን፡ remark `prefer AMD` , እቲ AMD CPU ዘለዎ ሰርቨር ድማ ዝሓሸ ኣፈጻጽማ ክህልዎ እዩ።

ኣብዚ ዝስዕብ፡ ናይ ኮንታቦ VPS ከም ኣብነት ወሲደ፡ ከመይ ጌርካ ናይ ገዛእ ርእስኻ mail server ትሃንጽ ከርኢ እየ።

## ውቅር ስርዓት ኡቡንቱ

ኣብዚ ዘሎ ስርዓተ ምምሕዳር ኡቡንቱ 22.04 እዩ።

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp)

ኣብ ssh ዘሎ ሰርቨር እንተድኣ ኣርእዩ `Welcome to TinyCore 13!` (ከምቲ ኣብ ታሕቲ ዘሎ ስእሊ ንርእዮ ዘለና)፡ እቲ ስርዓት ገና ኣይተተኸለን ማለት እዩ። በጃኹም ssh ኣቋሪጽኩም ዳግማይ ክትኣትዉ ንገለ ደቓይቕ ተጸበዩ።

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp)

`Welcome to Ubuntu 22.04.1 LTS` ምስ ተራእየ፡ እቲ ምጅማር ተዛዚሙ፡ በዞም ዝስዕቡ ስጉምትታት ክትቅጽል ትኽእል።

### [ኣማራጺ] ልምዓታዊ ሃዋህው ምጅማር

እዚ ስጉምቲ እዚ ኣማራጺ እዩ።

ንምምችቻው፡ ምትካልን ስርዓተ ምውቃርን ናይ ubuntu ሶፍትዌር ኣብ [github.com/user-tax-dev/os/tree/main/ubuntu](https://github.com/user-tax-dev/os/tree/main/ubuntu) ኣቐሚጠዮ።

ብሓደ ጠውቂ ንምትካል ነዚ ዝስዕብ ትእዛዝ ኣካይድ።

```
bash <(curl -s https://raw.githubusercontent.com/user-tax-dev/os/main/ubuntu/boot.sh)
```

ቻይናውያን ተጠቀምቲ ኣብ ክንዲ እዚ ዝስዕብ ትእዛዝ ተጠቐሙ፡ ቋንቋ፡ ዞባ ሰዓት ወዘተ ድማ ብኣውቶማቲክ ክቕመጥ እዩ።

```
CN=1 bash <(curl -s https://ghproxy.com/https://raw.githubusercontent.com/user-tax-dev/os/main/ubuntu/boot.sh)
```

### ኮንታቦ IPV6 የኽእል

SMTP ውን IPV6 ኣድራሻታት ዘለዎም ኢመይላት ክሰድድ ምእንቲ IPV6 ኣኽእሎ።

`/etc/sysctl.conf` ዝብል ኣርትዖት።

ነዞም ዝስዕቡ መስመራት ኣዐርዮም ወይ ምውሳኽ

```
net.ipv6.conf.all.disable_ipv6 = 0
net.ipv6.conf.default.disable_ipv6 = 0
net.ipv6.conf.lo.disable_ipv6 = 0
```

ብ [contabo ዝብል ትምህርቲ ተኸታተል፡ IPv6 ምትእስሳር ኣብ ሰርቨርካ](https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/) ምውሳኽ

`/etc/netplan/01-netcfg.yaml` ኣርትዕ፣ ከምቲ ኣብ ታሕቲ ዘሎ ስእሊ ንርእዮ ዘለና ውሑዳት መስመራት ወስኸሉ (Contabo VPS default configuration file ድሮ ነዞም መስመራት ኣለዉዎ፣ ርእይቶ ኣውጽእዎም ጥራይ)።

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp)

ድሕሪኡ ነቲ ሰርቨር ዳግማይ ጀምር።

እቲ ውቅር ምስ ዕዉት ምዃኑ `curl 6.ipw.cn` ተጠቒምና ናይ ግዳማዊ መርበብካ ipv6 ኣድራሻ ክትዕዘብ ትኽእል።

## ነቲ ናይ ውቅር መኽዘን ops ክሎን ግበር

```
git clone https://github.com/user-tax/ops.git
```

## ንናይ ዶሜይን ስምካ ነጻ ናይ SSL ምስክር ወረቐት ምፍጣር

መልእኽቲ ምልኣኽ ንኢንክሪፕሽንን ምፍራምን ናይ SSL ምስክር ወረቐት የድሊ።

ምስክር ወረቐት ንምፍራይ [acme.sh](https://github.com/acmesh-official/acme.sh) ንጥቀም።

acme.sh ክፉት ምንጪ ኣውቶማቲክ ምስክር ወረቐት ምፍራም መሳርሒ እዩ፣

ኣብቲ ናይ ውቅር መኽዘን ops ኣቲኻ `./ssl.sh` ኣካይድ፣ ኣብቲ ላዕለዋይ ማህደር ድማ `conf` ፎልደር ክፍጠር እዩ።

ኣቃውማ ማህደር ከምዚ ዝስዕብ ይመስል፤

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp)

ካብ [acme.sh dnsapi](https://github.com/acmesh-official/acme.sh/wiki/dnsapi) ን DNS ኣቕራቢኻ ረኸብ፣ `conf/conf.sh` ኣርትዕ።

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp)

ድሕሪኡ `./ssl.sh 123.com` ብምክያድ ንናይ ዶሜይን ስምካ `123.com` ን `*.123.com` ምስክር ወረቐት ንፍጠር።

እቲ ቀዳማይ ጉያ ብኣውቶማቲክ [acme.sh](https://github.com/acmesh-official/acme.sh) ክተክልን ንኣውቶማቲክ ምሕዳስ መደብ ዝተገብረሉ ዕማም ክውስኽን እዩ። `crontab -l` ከምዚ ዝስዕብ መስመር ከምዘሎ ክርኢ ይኽእል።

```
52 0 * * * "/mnt/www/.acme.sh"/acme.sh --cron --home "/mnt/www/.acme.sh" > /dev/null
```

እቲ መንገዲ ናይቲ ዝፍጠር ምስክር ወረቐት ገለ ከም `/mnt/www/.acme.sh/123.com_ecc。`

ምሕዳስ ምስክር ወረቐት `conf/reload/123.com.sh` ስክሪፕት ክጽውዕ እዩ፣ ነዚ ስክሪፕት ኣርትዖ፣ ከም `nginx -s reload` ዝኣመሰሉ ትእዛዛት ክትውስኽ ትኽእል ኢኻ ንናይ ምስክር ወረቐት መኽዘን ናይ ተዛመድቲ መተግበሪታት ንምሕዳስ።

## SMTP server ብ chasquid ምህናጽ

[chasquid](https://github.com/albertito/chasquid) ብቋንቋ Go ዝተጻሕፈ ክፉት ምንጪ SMTP server እዩ።

ከም መተካእታ ናይቶም ጥንታውያን ናይ ፖስታ ሰርቨር ፕሮግራማት ከም ፖስትፊክስን ሴንድሜይልን፡ ሻስኪድ ዝቐለለን ንኣጠቓቕማ ዝቐለለን ኮይኑ፡ ንካልኣዊ ምዕባለ እውን ዝቐለለ እዩ።

Run `./chasquid/init.sh 123.com` ብሓደ ጠውቂ ብኣውቶማቲክ ክተክል እዩ (123.com ብናይ ዝለኣኽ ዶሜይን ስምካ ተክኦ)።

## ናይ ኢመይል ፊርማ DKIM ምውቃር

DKIM ደብዳቤታት ከም ስፓም ከይሕሰቡ ናይ ኢመይል ፌርማ ንምልኣኽ ይጥቀመሉ።

እቲ ትእዛዝ ብዓወት ምስተሰርሐ፡ መዝገብ DKIM ከተቐምጥ ትሕተት (ከምቲ ኣብ ታሕቲ ዘሎ)።

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp)

ኣብ DNS ናትካ TXT record ጥራይ ምውሳኽ (ከምቲ ኣብ ታሕቲ ዘሎ)።

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp)

## ኩነታት ኣገልግሎት & ምዝገባታት ርአ

`systemctl status chasquid` ኩነታት ኣገልግሎት ርአ።

ኩነታት ንቡር ስርሒት ከምዚ ኣብ ታሕቲ ዘሎ ስእሊ ንርእዮ ዘለና እዩ።

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp)

`grep chasquid /var/log/syslog` ወይ `journalctl -xeu chasquid` ነቲ ናይ ጌጋ መዝገብ ክርእዮ ይኽእል።

## ውቅር ስም ዓውዲ ንድሕሪት ምምላስ

እቲ ብግልባጥ ስም ዓውዲ እቲ IP ኣድራሻ ናብቲ ዝሰማማዕ ስም ዓውዲ ንኽፍታሕ ንምፍቃድ እዩ።

ሪቨርስ ዶሜይን ስም ምቕማጥ ኢመይላት ከም ስፓም ከይልለዩ ክኽልክል ይኽእል።

እቲ ፖስታ ምስ ተቐበለ፡ እቲ ተቐባሊ ኣገልጋሊ ኣብ IP ኣድራሻ ናይቲ ዝልእኽ ኣገልጋሊ፡ እቲ ዝልእኽ ኣገልጋሊ ቅኑዕ ናይ ምግልባጥ ዓውዲ ስም ኣለዎ ድዩ የብሉን ንምርግጋጽ፡ ትንተና ስም ዓውዲ ምግልባጥ ክገብር እዩ።

እቲ ዝልእኽ ኣገልጋሊ ሪቨርስ ዶሜይን ስም እንተዘይብሉ ወይ እቲ ሪቨርስ ዶሜይን ስም ምስቲ IP ኣድራሻ ናይቲ ዝልእኽ ሰርቨር ዘይቃዶ እንተኾይኑ፡ እቲ ዝልእኽ ሰርቨር ነቲ ኢመይል ከም ስፓም ከለልዮ ወይ ክነጽጎ ይኽእል።

[https://my.contabo.com/rdns](https://my.contabo.com/rdns) ብምእታው ከምዚ ኣብ ታሕቲ ዘሎ ንውቅሮ

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp)

ድሕሪ ምቕማጥ ናይቲ ንድሕሪት ዓውዲ ስም፡ ንቕድሚት ርዝነት ናይቲ ዓውዲ ስም ipv4ን ipv6ን ናብቲ ኣገልጋሊ ምውቃር ኣይትረስዕ።

## ናይ chasquid.conf ስም ኣአንጋዲ ኣርትዕ

`conf/chasquid/chasquid.conf` ናብ ዋጋ ናይቲ ተገላባጢ ስም ዓውዲ ኣዐርዮ።

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp)

ድሕሪኡ ነቲ ኣገልግሎት ዳግማይ ንምጅማር `systemctl restart chasquid` ኣካይድ።

## ምትሕብባር conf ናብ git መኽዘን

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp)

ንኣብነት ነቲ conf folder ናብ ናይ ገዛእ ርእሰይ github process ከምዚ ዝስዕብ backup እገብሮ

መጀመርታ ናይ ብሕቲ መኽዘን ምፍጣር

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp)

ኣብቲ conf directory ኣቲኻ ናብቲ መኽዘን ኣቕርብ

```
git init
git add .
git commit -m "init"
git branch -M main
git remote add origin git@github.com:user-tax-key/conf.git
git push -u origin main
```

## ላኣኺ ምውሳኽ

ጉየ

```
chasquid-util user-add i@user.tax
```

ላኣኺ ክውስኽ ይኽእል እዩ።

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp)

### እቲ ፓስዎርድ ብትኽክል ከምዝተሰርዐ ኣረጋግጽ

```
chasquid-util authenticate i@user.tax --password=xxxxxxx
```

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp)

ተጠቃሚ ድሕሪ ምውሳኽ `chasquid/domains/user.tax/users` ክመሓየሽ እዩ፣ ናብ መኽዘን ምቕራብ ኣይትረስዕ።

## DNS SPF መዝገብ ይውስኽ

SPF ( Sender Policy Framework ) ምትላል ኢመይል ንምክልኻል ዝጥቀመሉ ናይ ኢመይል ምርግጋጽ ቴክኖሎጂ እዩ።

መንነት ናይ ሓደ ላኣኺ መልእኽቲ ዘረጋግጽ፡ ናይቲ ላኣኺ IP ኣድራሻ ምስቲ ንሱ ዝበሎ ናይ ዶሜይን ስም DNS መዛግብቲ ይሰማማዕ ምዃኑ ብምርግጋጽ፡ መጭበርበርቲ ናይ ሓሶት ኢመይላት ከይሰዱ ይከላኸል።

መዛግብቲ SPF ምውሳኽ ብዝተኻእለ መጠን ኢመይላት ከም ስፓም ከይልለዩ ክኽልክል ይኽእል።

ናትካ ዶመይን ስም ሰርቨር SPF ዓይነት ዘይድግፍ እንተኾይኑ፡ TXT ዓይነት መዝገብ ጥራይ ወስኽ።

ንኣብነት ናይ `user.tax` SPF ከምዚ ዝስዕብ እዩ።

`v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all`

SPF ን `_spf.user.tax` ዝኸውን

`v=spf1 a:smtp.user.tax ~all`

ኣብዚ `include:_spf.google.com` ከም ዘለኹ ኣስተውዕል፣ ምኽንያቱ ድሒረ ኣብ ሳጹን ፖስታ Google `i@user.tax` ከም ናይ ምልኣኽ ኣድራሻ ክውቅሮ እየ።

## ናይ DNS ውቅር DMARC

DMARC ኣሕጽሮተ ቃል (Domain-based Message Authentication, Reporting & Conformance) እዩ።

ንSPF bounces ንምቕራጽ ይጥቀመሉ (ምናልባት ብሰንኪ ናይ ውቅር ጌጋታት ዝመጽእ ክኸውን ይኽእል እዩ፡ ወይ ካልእ ሰብ ንስኻ መሲሉ ስፓም ክሰድድ ይገብር)።

መዝገብ TXT ምውሳኽ `_dmarc` , .

ትሕዝቶኡ ከምዚ ዝስዕብ እዩ።

```
v=DMARC1; p=quarantine; fo=1; ruf=mailto:ruf@user.tax; rua=mailto:rua@user.tax
```

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp)

ትርጉም ነፍሲ ወከፍ መለክዒ ከምዚ ዝስዕብ እዩ።

### p (ፖሊሲ)

SPF (Sender Policy Framework) ወይ DKIM (DomainKeys Identified Mail) ምርግጋጽ ዝፈሸሉ ኢመይላት ከመይ ጌርካ ከም እትሕዞም ይሕብር። እቲ p መለክዒ ናብ ሓደ ካብ ሰለስተ ክብርታት ክቕየር ይኽእል፤

* none: ዝኾነ ስጉምቲ ኣይውሰድን፣ ውጽኢት ምርግጋጽ ጥራይ እዩ ብመንገዲ እቲ ናይ ኢመይል ጸብጻብ ኣገባብ ናብቲ ላኣኺ ዝምለስ።
* ምውሻብ፦ ነቲ ምርግጋጽ ዘይሓለፈ ፖስታ ናብቲ ናይ ስፓም ማህደር ኣእትዎ፡ ግን ከኣ ነቲ መልእኽቲ ብቐጥታ ዘይነጽጎ።
* reject: ምርግጋጽ ዝፈሸለ ኢመይላት ብቐጥታ ምንጻግ።

### fo (ናይ ውድቀት ኣማራጺታት)

ብመካኒዝም ጸብጻብ ዝምለስ መጠን ሓበሬታ ይገልጽ። ናብ ሓደ ካብዞም ዝስዕቡ ክብርታት ክቕየር ይኽእል፤

* 0: ንኹሎም መልእኽትታት ውጽኢት ምርግጋጽ ጸብጻብ
* 1: ምርግጋጽ ዝፈሸሉ መልእኽትታት ጥራይ ሪፖርት ምግባር
* መ: ናይ ዶሜይን ስም ምርግጋጽ ውድቀት ጥራይ ምሕባር
* s: ናይ SPF ምርግጋጽ ውድቀት ጥራይ ምሕባር
* l: ናይ DKIM ምርግጋጽ ውድቀት ጥራይ ምሕባር

### rua & ruf ዝብል ጽሑፍ ኣሎ።

* rua (Reporting URI for Aggregate reports): ንዝተጠርነፉ ጸብጻባት ንምቕባል ዝሕግዝ ኢመይል ኣድራሻ
* ruf (Reporting URI for Forensic reports): ዝርዝር ጸብጻባት ንምቕባል ኢመይል ኣድራሻ

## ኢመይላት ናብ Google Mail ንምትሕልላፍ MX records ምውሳኽ

ኣድማሳዊ ኣድራሻታት ዝድግፍ ነጻ ናይ ትካል ፖስታ ሳጹን ስለዘይረኸብኩ (Catch-All, ዝኾነ ናብዚ ዶመይን ስም ዝለኣኽ ኢመይላት ክቕበል ይኽእል እዩ፣ ብዘይ ገደብ ቅድመ-ጥብቆታት)፣ ንኹሉ ኢመይላት ናብ ጂሜይል ፖስታ ሳጹነይ ንምምሕልላፍ chasquid ተጠቒመ።

**ናይ ገዛእ ርእስኻ ዝኽፈል ናይ ንግዲ ሳጹን ፖስታ እንተሃልዩካ፡ በጃኻ ነቲ MX ኣይትቕይሮ እሞ ነዚ ስጉምቲ ስግሮ።**

`conf/chasquid/domains/user.tax/aliases` ኣርትዕ፣ ናይ ምቕራብ ሳጹን ፖስታ ኣቐምጥ

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp)

`*` ንኹሎም ኢመይላት የመልክት፣ `i` ኣብ ላዕሊ ዝተፈጥረ ናይ ኢመይል ኣድራሻ ቅድመ-ጥብቆ ናይቲ ዝልእኽ ተጠቃሚ እዩ። መልእኽቲ ንምምሕልላፍ፡ ነፍሲ ወከፍ ተጠቃሚ መስመር ክውስኽ ኣለዎ።

ድሕሪኡ ነቲ MX record ንውስኸሉ (ኣብዚ ብቐጥታ ናብቲ ኣድራሻ ናይቲ reverse domain name እየ ዘመልክት፣ ከምቲ ኣብ ቀዳማይ መስመር ኣብ ታሕቲ ዘሎ ስእሊ ዘሎ)።

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp)

እቲ ውቅር ምስተዛዘመ፡ ካልኦት ኢመይላት ኣድራሻታት ተጠቒምካ ናብ `i@user.tax` ኢመይላት ክትሰድድ ትኽእል ኢኻ፡ ከምኡ’ውን `any123@user.tax` ኢመይላት ብምልኣኽ ኣብ Gmail ኢመይላት ክትቅበል ትኽእል እንተኾንካ ክትዕዘብ ትኽእል።

እንተዘይኮይኑ፡ ነቲ ናይ ቻስኪድ ሎግ ( `grep chasquid /var/log/syslog` ) መርምሮ።

## ብ Google Mail ናብ i@user.tax ኢመይል ስደዱ

Google Mail እቲ መልእኽቲ ምስ በጽሖ፡ ኣብ ክንዲ i.user.tax@gmail.com ብ `i@user.tax` መልሲ ክትህብ ምድላይ ባህርያዊ እዩ።

[https://mail.google.com/mail/u/1/#settings/accounts](https://mail.google.com/mail/u/1/#settings/accounts) ብምእታው "Add another email address" ዝብል ጠውቕ።

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp)

ድሕሪኡ፡ በቲ ዝተመሓላለፈ ኢመይል ዝበጽሖ ናይ ምርግጋጽ ኮድ ኣእቱ።

ኣብ መወዳእታ ከም ነባሪ ላኣኺ ኣድራሻ (ምስ ተመሳሳሊ ኣድራሻ መልሲ ናይ ምሃብ ኣማራጺ) ክቕመጥ ይኽእል።

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp)

በዚ መንገዲ ድማ ምምስራት SMTP mail server ወዲእና ብተመሳሳሊ ድማ Google Mail ተጠቒምና ኢመይላት ክንሰድድን ክንቅበልን ኢና።

## እቲ ውቅር ዕዉት ድዩ ኣይኮነን ንምርግጋጽ ናይ ፈተነ ኢመይል ስደድ

`ops/chasquid` ዝብል ኣእትዉ

Run `direnv allow` to install dependencies (direnv ኣብቲ ዝሓለፈ ናይ ሓደ-መፍትሕ ምጅማር መስርሕ ተተኺሉ ኣሎ፡ ኣብቲ ሸል ድማ መንጠልጠሊ ተወሰኸ)

ድሕሪኡ ጐየ

```
user=i@user.tax pass=xxxx to=iuser.link@gmail.com ./sendmail.coffee
```

ትርጉም ናይቶም መለክዒታት ከምዚ ዝስዕብ እዩ።

* ተጠቃሚ፡ ስም ተጠቃሚ SMTP
* pass: ናይ SMTP ምልክት ቃል
* ናብ: ተቐባሊ

ናይ ፈተነ ኢመይል ክትሰዱ ትኽእሉ ኢኹም።

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp)

እቶም ውቅርታት ዕዉታት ምዃኖም ንምፍላጥ ናይ ፈተነ ኢመይላት ንምቕባል ጂሜይል ምጥቃም ይምከር።

### TLS ስታንዳርድ ኢንክሪፕሽን እዩ።

ከምቲ ኣብ ታሕቲ ዘሎ ስእሊ ንርእዮ ዘለና፡ እዚ ንእሽቶ መዕጸዊ ኣሎ፡ እዚ ማለት ድማ ​​እቲ ናይ SSL ምስክር ወረቐት ብዓወት ተኸፊቱ ማለት እዩ።

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp)

ድሕሪኡ "Show Original Email" ዝብል ጠውቕ።

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp)

### ዲኪም

ከምቲ ኣብ ታሕቲ ዘሎ ስእሊ ንርእዮ ዘለና፡ እቲ ናይ ጂሜይል ኦሪጅናል ፖስታ ገጽ DKIM የርኢ፡ እዚ ማለት ድማ ​​እቲ ናይ DKIM ውቅር ዕዉት እዩ ማለት እዩ።

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp)

ኣብ ርእሲ ናይቲ መበቆላዊ ኢመይል Received ምልክት ግበር፣ እቲ ላኣኺ ኣድራሻ IPV6 ምዃኑ ክትዕዘብ ትኽእል፣ እዚ ማለት IPV6 እውን ብዓወት ተዋቒሩ ኣሎ ማለት እዩ።