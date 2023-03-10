# Изградете сопствен сервер за испраќање пошта SMTP

## преамбула

SMTP може директно да купува услуги од продавачите на облак, како што се:

* [Amazon SES SMTP](https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html)
* [Али облак е-пошта притисок](https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods)

Можете исто така да изградите сопствен сервер за пошта - неограничено испраќање, ниска вкупна цена.

Подолу, ќе демонстрираме чекор по чекор како да изградиме сопствен сервер за пошта.

## Избор на сервер

Само-домаќин SMTP-сервер бара јавна IP со отворени порти 25, 456 и 587.

Најчесто користените јавни облаци стандардно ги блокираа овие пристаништа и можеби е можно да се отворат со издавање налог за работа, но сепак тоа е многу проблематично.

Препорачувам да купувате од домаќин кој ги има овие порти отворени и поддржува поставување обратни имиња на домени.

Еве, го препорачувам [Contabo](https://contabo.com) .

Contabo е хостинг провајдер со седиште во Минхен, Германија, основан во 2003 година со многу конкурентни цени.

Ако изберете евро како валута за купување, цената ќе биде поевтина (сервер со 8 GB меморија и 4 процесори чини околу 529 јуани годишно, а почетната такса за инсталација е бесплатна за една година).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp)

Кога правите нарачка, забележете `prefer AMD` , а серверот со AMD CPU ќе има подобри перформанси.

Во продолжение, ќе го земам VPS на Contabo како пример за да покажам како да изградите сопствен сервер за пошта.

## Конфигурација на системот на Ubuntu

Оперативниот систем овде е Ubuntu 22.04

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp)

Ако серверот на ssh прикажува `Welcome to TinyCore 13!` (како што е прикажано на сликата подолу), тоа значи дека системот сè уште не е инсталиран. Ве молиме исклучете го ssh и почекајте неколку минути за повторно да се најавите.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp)

Кога ќе се појави `Welcome to Ubuntu 22.04.1 LTS` , иницијализацијата е завршена и можете да продолжите со следните чекори.

### [Изборно] Иницијализирајте ја околината за развој

Овој чекор е опционален.

За погодност, ја ставив инсталацијата и системската конфигурација на софтверот Ubuntu во [github.com/user-tax-dev/os/tree/main/ubuntu](https://github.com/user-tax-dev/os/tree/main/ubuntu) .

Извршете ја следнава команда за инсталирање со еден клик.

```
bash <(curl -s https://raw.githubusercontent.com/user-tax-dev/os/main/ubuntu/boot.sh)
```

Кинески корисници, користете ја следнава команда наместо тоа, и јазикот, временската зона итн. ќе бидат автоматски поставени.

```
CN=1 bash <(curl -s https://ghproxy.com/https://raw.githubusercontent.com/user-tax-dev/os/main/ubuntu/boot.sh)
```

### Contabo овозможува IPV6

Овозможете IPV6 за да може и SMTP да испраќа е-пошта со IPV6 адреси.

уреди `/etc/sysctl.conf`

Изменете ги или додајте ги следните редови

```
net.ipv6.conf.all.disable_ipv6 = 0
net.ipv6.conf.default.disable_ipv6 = 0
net.ipv6.conf.lo.disable_ipv6 = 0
```

Следете го [упатството за contabo: Додавање IPv6 поврзување на вашиот сервер](https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/)

Уредете `/etc/netplan/01-netcfg.yaml` , додајте неколку линии како што е прикажано на сликата подолу (стандардната конфигурациска датотека Contabo VPS веќе ги има овие линии, само отстранете ги од коментар).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp)

Потоа рестартирајте го серверот.

Откако конфигурацијата е успешна, можете да ја користите `curl 6.ipw.cn` за да ја видите адресата ipv6 на вашата надворешна мрежа.

## Клонирајте ги операциите на складиштето за конфигурација

```
git clone https://github.com/user-tax/ops.git
```

## Генерирајте бесплатен SSL сертификат за вашето име на домен

Испраќањето пошта бара SSL сертификат за шифрирање и потпишување.

Ние користиме [acme.sh](https://github.com/acmesh-official/acme.sh) за да генерираме сертификати.

acme.sh е автоматизирана алатка за потпишување сертификати со отворен код,

Внесете ги операциите на складиштето за конфигурација, извршете `./ssl.sh` и ќе се креира папка `conf` во горниот директориум.

Структурата на директориумот е како што следува:

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp)

Најдете го вашиот DNS провајдер од [acme.sh dnsapi](https://github.com/acmesh-official/acme.sh/wiki/dnsapi) , уредете `conf/conf.sh` .

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp)

Потоа извршете `./ssl.sh 123.com` за да генерирате сертификати `123.com` и `*.123.com` за името на вашиот домен.

Првото извршување автоматски ќе го инсталира [acme.sh](https://github.com/acmesh-official/acme.sh) и ќе додаде закажана задача за автоматско обновување. `crontab -l` може да види дека постои таква линија како што следува.

```
52 0 * * * "/mnt/www/.acme.sh"/acme.sh --cron --home "/mnt/www/.acme.sh" > /dev/null
```

Патеката за генерираниот сертификат е нешто како `/mnt/www/.acme.sh/123.com_ecc。`

Обновувањето на сертификатот ќе ја повика скриптата `conf/reload/123.com.sh` , уредете ја оваа скрипта, можете да додадете команди како што се `nginx -s reload` за да го освежите кешот на сертификатот на поврзаните апликации.

## Изградете SMTP сервер со chasquid

[chasquid](https://github.com/albertito/chasquid) е SMTP сервер со отворен код напишан на јазик Go.

Како замена за античките програми за сервер за пошта како што се Postfix и Sendmail, chasquid е поедноставен и полесен за користење, а исто така е полесен и за секундарен развој.

Стартувај `./chasquid/init.sh 123.com` ќе се инсталира автоматски со еден клик (заменете го 123.com со вашето име на домен што испраќа).

## Конфигурирајте го потписот за е-пошта DKIM

DKIM се користи за испраќање потписи за е-пошта за да се спречи писмата да се третираат како спам.

Откако командата ќе се изврши успешно, ќе ви биде побарано да го поставите записот DKIM (како што е прикажано подолу).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp)

Само додадете TXT запис на вашиот DNS (како што е прикажано подолу).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp)

## Погледнете го статусот и дневниците на услугата

`systemctl status chasquid` Приказ на статусот на услугата.

Состојбата на нормална работа е како што е прикажана на сликата подолу

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp)

`grep chasquid /var/log/syslog` или `journalctl -xeu chasquid` може да го прегледа дневникот за грешки.

## Обратна конфигурација на име на домен

Обратно име на домен е да дозволи IP адресата да се реши на соодветното име на доменот.

Поставувањето обратно име на домен може да спречи е-поштата да се идентификува како спам.

Кога ќе се прими поштата, серверот што прима ќе изврши анализа на обратно име на домен на IP адресата на серверот што испраќа за да потврди дали серверот што испраќа има важечко име на обратен домен.

Ако серверот за испраќање нема обратно име на домен или ако обратното име на домен не се совпаѓа со IP адресата на серверот што испраќа, серверот што прима може да ја препознае е-поштата како спам или да ја одбие.

Посетете [https://my.contabo.com/rdns](https://my.contabo.com/rdns) и конфигурирајте како што е прикажано подолу

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp)

Откако ќе го поставите обратното име на доменот, запомнете да ја конфигурирате резолуцијата напред на името на доменот ipv4 и ipv6 на серверот.

## Уредете го името на домаќинот на chasquid.conf

Изменете го `conf/chasquid/chasquid.conf` до вредноста на обратното име на доменот.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp)

Потоа извршете `systemctl restart chasquid` за да ја рестартирате услугата.

## Резервна конфигурација во складиштето на git

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp)

На пример, правам резервна копија од папката conf во мојот сопствен процес github на следниов начин

Прво направете приватен магацин

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp)

Внесете го директориумот conf и испратете го во складиштето

```
git init
git add .
git commit -m "init"
git branch -M main
git remote add origin git@github.com:user-tax-key/conf.git
git push -u origin main
```

## Додадете испраќач

трчај

```
chasquid-util user-add i@user.tax
```

Може да додаде испраќач

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp)

### Проверете дали лозинката е правилно поставена

```
chasquid-util authenticate i@user.tax --password=xxxxxxx
```

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp)

По додавањето на корисникот, `chasquid/domains/user.tax/users` ќе се ажурираат, не заборавајте да го поднесете во складиштето.

## DNS додаде запис со SPF

SPF (Sender Policy Framework) е технологија за верификација на е-пошта што се користи за да се спречи измама со е-пошта.

Го потврдува идентитетот на испраќачот на пошта проверувајќи дали IP адресата на испраќачот се совпаѓа со записите на DNS на името на доменот за кој тврди дека е, спречувајќи ги измамниците да испраќаат лажни е-пошта.

Додавањето записи со SPF може да спречи колку што е можно повеќе е-пошта да се идентификуваат како спам.

Ако вашиот сервер за име на домен не поддржува тип на SPF, само додадете запис од типот TXT.

На пример, SPF на `user.tax` е како што следува

`v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all`

SPF за `_spf.user.tax`

`v=spf1 a:smtp.user.tax ~all`

Имајте предвид дека овде `include:_spf.google.com` , бидејќи подоцна ќе го конфигурирам `i@user.tax` како адреса за испраќање во поштенското сандаче на Google.

## DNS конфигурација DMARC

DMARC е кратенка од (домен-базирана автентикација на пораки, известување и усогласеност).

Се користи за снимање на отскокнувања на SPF (можеби предизвикани од грешки во конфигурацијата, или некој друг се преправа дека сте вие ​​дека испраќате спам).

Додадете TXT запис `_dmarc` ,

Содржината е следна

```
v=DMARC1; p=quarantine; fo=1; ruf=mailto:ruf@user.tax; rua=mailto:rua@user.tax
```

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp)

Значењето на секој параметар е како што следува

### стр (Политика)

Покажува како да се справите со е-пораките што не успеваат да ја потврдат SPF (Рамка за политики на испраќачот) или DKIM (Идентификувана пошта со клучеви на домен). Параметарот p може да се постави на една од трите вредности:

* нема: Не се презема никакво дејство, само резултатот од верификацијата се враќа на испраќачот преку механизмот за известување по е-пошта.
* Карантин: Ставете ја поштата што не ја поминала потврдата во папката спам, но нема директно да ја одбие поштата.
* одбие: Директно отфрлете ги е-поштата што не успеваат да ја потврдат.

### fo (Опции за неуспех)

Ја одредува количината на информации вратени од механизмот за известување. Може да се постави на една од следниве вредности:

* 0: Пријавете ги резултатите од валидацијата за сите пораки
* 1: Пријавувајте само пораки кои не успеваат да се потврдат
* г: Пријавете само неуспеси за проверка на името на доменот
* s: пријавете само неуспеси за проверка на SPF
* l: Пријавете само неуспеси за проверка на DKIM

### руа и руф

* rua (URI известување за збирни извештаи): Адреса на е-пошта за примање збирни извештаи
* ruf (URI известување за форензички извештаи): адреса на е-пошта за да добивате детални извештаи

## Додадете MX записи за препраќање е-пошта до Google Mail

Бидејќи не можев да најдам бесплатно корпоративно поштенско сандаче кое поддржува универзални адреси (Catch-All, може да прима какви било е-пораки испратени до ова име на домен, без ограничувања за префиксите), користев chasquid за да ги препратам сите е-пораки до моето поштенско сандаче на Gmail.

**Ако имате сопствено платено деловно поштенско сандаче, немојте да го менувате MX и прескокнете го овој чекор.**

Уреди `conf/chasquid/domains/user.tax/aliases` , поставете поштенско сандаче за препраќање

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp)

`*` ги означува сите е-пораки, `i` е префиксот на адресата на е-пошта на корисникот што испраќа креиран погоре. За препраќање пошта, секој корисник треба да додаде линија.

Потоа додадете го записот MX (тука укажувам директно на адресата на обратното име на доменот, како што е прикажано во првата линија на сликата подолу).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp)

Откако ќе заврши конфигурацијата, можете да користите други адреси за е-пошта за да испраќате е-пораки на `i@user.tax` и `any123@user.tax` за да видите дали можете да примате е-пораки во Gmail.

Ако не, проверете го дневникот на chasquid ( `grep chasquid /var/log/syslog` ).

## Испратете е-пошта на i@user.tax со Google Mail

Откако Google Mail ќе ја прими поштата, природно е да сакате да одговорите со `i@user.tax` наместо со i.user.tax@gmail.com.

Посетете [https://mail.google.com/mail/u/1/#settings/accounts](https://mail.google.com/mail/u/1/#settings/accounts) и кликнете „Додај друга адреса на е-пошта“.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp)

Потоа, внесете го кодот за потврда добиен од е-поштата до која е препратена.

Конечно, може да се постави како стандардна адреса на испраќачот (заедно со опцијата да се одговори со истата адреса).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp)

На овој начин го завршивме воспоставувањето на SMTP серверот за пошта и во исто време користиме Google Mail за испраќање и примање е-пошта.

## Испратете тест е-пошта за да проверите дали конфигурацијата е успешна

Внесете `ops/chasquid`

Изврши `direnv allow` инсталирање на зависности (direnv е инсталиран во претходниот процес на иницијализација со еден клуч и додадена е кука на школка)

потоа трчај

```
user=i@user.tax pass=xxxx to=iuser.link@gmail.com ./sendmail.coffee
```

Значењето на параметрите е како што следува

* корисник: корисничко име SMTP
* помине: SMTP лозинка
* до: примач

Можете да испратите тест е-пошта.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp)

Препорачливо е да користите Gmail за да примате тест-пораки за да проверите дали конфигурациите се успешни.

### TLS стандардно шифрирање

Како што е прикажано на сликата подолу, постои ова мало заклучување, што значи дека SSL сертификатот е успешно овозможен.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp)

Потоа кликнете на „Прикажи оригинална е-пошта“

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp)

### ДКИМ

Како што е прикажано на сликата подолу, оригиналната страница за пошта на Gmail прикажува DKIM, што значи дека конфигурацијата на DKIM е успешна.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp)

Проверете го Received во заглавието на оригиналната е-пошта и можете да видите дека адресата на испраќачот е IPV6, што значи дека IPV6 исто така е успешно конфигуриран.