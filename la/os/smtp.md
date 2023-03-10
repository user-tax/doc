# Mittens servo tuo ESMTP mail aedificare

## exordium

ESMTP officia ex nube mercatoribus immediate emere potest, ut:

* [Amazon SES SMTP](https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html)
* [Ali nubes inscriptio dis](https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods)

Potes etiam aedificare servo tuo tabellario - illimitata mittendo, sumptus humiles altiore.

Infra demonstramus gradatim quomodo servo nostro aedificare litteras electronicas.

## Servo delectu

Servus auto-hospitatus ESMTP requirit publicum IP cum portubus 25 456, et 587 apertum.

Communiter nubes publicas has portus defalta obstruxerunt, eosque operis ordine edendo aperiri posse, sed post omnes molestissimum est.

Commendo emptionem ab hospite quae hos portus apertos habet et sustentat nomina domain nomina opposita.

Commendo hic [Contabo](https://contabo.com) .

Contabo est provisor obnoxius Munich fundata in Germania, anno 2003 fundata cum pretiis valde competitive.

Si Euronum ut monetam emptionis vis, pretium vilius erit (serviens cum 8GB memoria et 4 CPUs constat circiter 529 Yuan per annum, et prima institutio feudi unius anni libera est).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp)

Cum ordinem ponatur, animadverte `prefer AMD` , et cultor cum AMD CPU melius effectus erit.

In sequentibus, exemplum Contabo accipiam VPS demonstrare quomodo aedifices servo tuo epistulam tuam.

## Ubuntu systema configuratione

Ratio operandi hic Ubuntu 22.04

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp)

Si server in ssh ostensionibus `Welcome to TinyCore 13!` (ut in figura infra ostendetur), significat systema nondum inauguratum esse. Please disconnect ssh and wait for a few minutes to log in again.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp)

Cum `Welcome to Ubuntu 22.04.1 LTS` apparet, initialisatio perfecta est, et cum sequentibus gradibus pergere potes.

### [Libitum] initialize progressionem amet

Hic gradus ad libitum est.

Pro commodo , pono institutionem ac systema programmatis decuria programmatis in [github.com/user-tax-dev/os/tree/main/ubuntu](https://github.com/user-tax-dev/os/tree/main/ubuntu) .

Mandatum hoc currite ut inaugurationi clic.

```
bash <(curl -s https://raw.githubusercontent.com/user-tax-dev/os/main/ubuntu/boot.sh)
```

Sinenses usores, commodo sequenti loco utere imperio, et lingua, zona temporis, etc. automatice ponentur.

```
CN=1 bash <(curl -s https://ghproxy.com/https://raw.githubusercontent.com/user-tax-dev/os/main/ubuntu/boot.sh)
```

### Contabo dat IPV6

Admitte IPV6 ut ESMTP etiam electronicas electronicas cum IPV6 mittere possit.

edit `/etc/sysctl.conf`

Modificare vel addere lineas sequentes

```
net.ipv6.conf.all.disable_ipv6 = 0
net.ipv6.conf.default.disable_ipv6 = 0
net.ipv6.conf.lo.disable_ipv6 = 0
```

Sequere cum [contabo consequat: addens IPv6 connectivity ad servo tuo](https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/)

Edit `/etc/netplan/01-netcfg.yaml` , paucas lineas adde ut in figura infra monstratum est (Contabo VPS fasciculus default configurationem has lineas iam habet, sicut eas uncomment).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp)

Tunc sileo calculonis servi.

Post figurationem bene gestam, `curl 6.ipw.cn` uti potes ut electronicam ipv6 retiacula externa tuae videre possis.

## Clone in configuratione Reconditorium Opis

```
git clone https://github.com/user-tax/ops.git
```

## SSL generate liberum libellum pro domain nomen tuum

Mittens epistulas postulat an SSL libellum encryption et subscriptionem.

Utimur [acme.sh](https://github.com/acmesh-official/acme.sh) ad testimonium generandum.

acme.sh fons apertum est libellum subscriptionis instrumentum automated;

Configurationem Opis apothecae ingredere, `./ssl.sh` curre, et `conf` folder in directorio superiore creabitur.

Directorium structura haec est:

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp)

DNS provisorem tuum reperi ab [acme.sh dnsapi](https://github.com/acmesh-official/acme.sh/wiki/dnsapi) , edit `conf/conf.sh` .

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp)

Tunc currunt `./ssl.sh 123.com` generare `123.com` et `*.123.com` testimoniales pro nomine tuo.

Primum curriculum automatice [acme.sh](https://github.com/acmesh-official/acme.sh) instituet et opus scheduled pro renovatione latae adde. `crontab -l` videre potest quod talis linea talis est.

```
52 0 * * * "/mnt/www/.acme.sh"/acme.sh --cron --home "/mnt/www/.acme.sh" > /dev/null
```

Via certificamenti generati simile est `/mnt/www/.acme.sh/123.com_ecc。`

Certificatorium renovationis vocabit scripturam `conf/reload/123.com.sh` , hoc scriptum edit, mandata addere potes ut `nginx -s reload` ad renovandum cella documentorum applicationum cognatorum.

## Ædificate ESMTP servo cum chasquid

[chasquid](https://github.com/albertito/chasquid) fons apertus ESMTP servo in Go lingua scripta.

Sicut pro programmatibus antiquorum electronicorum servientium ut Postfix et Sendmail substitutus est, chasquid simplicius et facilius ad utendum est et ad secundarium progressum facilius etiam.

Curre `./chasquid/init.sh 123.com` automatice instituetur cum una clic (repone 123.com cum mittendo nomen dominii).

## Configurare Email Subscriptio DKIM

DKIM signaturas electronicas mittere adhibetur, ne litterae a spamma tractatae sint.

Post mandatum feliciter currit, promptus eris ut testimonium DKIM (ut infra patebit).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp)

Modo adde TXT recordum tuo DNS (ut infra patebit).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp)

## View ministerium status & omnia

`systemctl status chasquid` View service status.

De statu normalis operatio ut in figura patebit

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp)

`grep chasquid /var/log/syslog` vel `journalctl -xeu chasquid` videre potes errorem log.

## Reverse domain nomen configuratione

Nomen domain nomen contrarium est permittere ut IP oratio solvatur nomini regio respondente.

Ponere nomen dominii incommodum impedire potest ne epistulae ut spamma notae sint.

Cum epistulae electronicae recipiuntur, Servus recipiens analysin nomen analysin contrarium faciet in inscriptione IP mittentis ad confirmandum num mittens servo validum habeat nomen dominii contrarium.

Si server mittens non habet nomen dominii inversum vel si nomen fundi inversum non congruit IP inscriptioni mittentis servo, accipiens server potest agnoscere electronicam spamma vel reicere.

Visita [https://my.contabo.com/rdns](https://my.contabo.com/rdns) et configurare ut infra

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp)

Post positionem e regione nominis e converso, memento deinceps solutionem nominis domain ipv4 et ipv6 servo configurare.

## Edit the hostname of chasquid.conf

Conmutare `conf/chasquid/chasquid.conf` valorem nominis e regione nominis.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp)

Tunc currite `systemctl restart chasquid` ut servitium sileo.

## Tergum conf ad git repositio

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp)

For example, I tergum sursum confirmo folder ad meum github processum ut sequitur

CELLA primum creare privatum

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp)

Intrant conf directorium et subire horreis

```
git init
git add .
git commit -m "init"
git branch -M main
git remote add origin git@github.com:user-tax-key/conf.git
git push -u origin main
```

## Mittens addere

Curre

```
chasquid-util user-add i@user.tax
```

Mittens potest addere

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp)

### Cognoscere quod signum non recte positum

```
chasquid-util authenticate i@user.tax --password=xxxxxxx
```

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp)

His additis utentis, `chasquid/domains/user.tax/users` renovabuntur, memento eam in horreis submittere.

## DNS adde SPF record

SPF (Misso Policy Framework) est inscriptio verificationis technologiae adhibita ne fraus electronica.

Indicat identitatem mittentis epistulae annotando quod IP electronica mittentis congruit monumentis DNS nomine regio quod praedicat, ne fraudes emitterent ementiti electronicos.

Additiones SPF monumenta impedire possunt sodales ut quam maxime spamma notentur.

Si servo regio nomen tuum SPF genus non sustinet, tantum TXT recordum generis addas.

Exempli gratia, SPF of `user.tax` talis est

`v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all`

SPF pro `_spf.user.tax`

`v=spf1 a:smtp.user.tax ~all`

Nota me hic `include:_spf.google.com` hic, quia configurabo `i@user.tax` sicut electronica in Google mailbox postea mittendo.

## DNS configuration DMARC

DMARC est abbreviatio (Domain-substructio Nuntius authenticitatis, Opinio & Conformance).

Solebat SPF resilit capere (fortasse ex errore conformationis causatus, vel aliquis alius se spamma te mittere fingit).

Add TXT record `_dmarc` ,

Contentum sic est

```
v=DMARC1; p=quarantine; fo=1; ruf=mailto:ruf@user.tax; rua=mailto:rua@user.tax
```

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp)

Cuiusque moduli significatio talis est

### p (Policy)

Indicat tractare emails quae desunt SPF (Consilium Missio Framework) vel DKIM (DomainKeys Identified Mail) verificationem. Modulus p uni e tribus valoribus apponi potest;

* nulla: Nihil agit, tantum eventus verificationis reficitur mittenti per mechanismum electronicum.
* Quarantina: Mitte epistulam quae verificationem in spamma folder non praeteriit, sed epistulam directam non repudiabit.
* rejiciunt: protinus rejiciunt emails quae deficient verificationem.

### fo (Defectum Options)

Copia informationum specificat per relationem mechanismum redditum. Poni potest uni ex sequentibus valoribus.

* 0: Relatio de omnibus nuntiis sanatio
* I: Tantum referunt mandata quae deficient verificationem
* d: tantum referunt nomen domain verificationem defectis
* s: tantum referre SPF verificationem defectis
* l: tantum referunt DKIM verificationem defectis

### rua & ruf

* rua (Reporting URI pro Subgenera tradit) Electronicus ad recipiendum aggregata tradit
* ruf (Reporting URI ad Forensic tradit): inscriptio electronica ad detailed tradit

## Add MX monumenta ut deinceps sodales Google Mail

Quia non potui invenire liberum corporatum mailbox quae inscriptiones universales sustinet (Capere-All, recipere possunt aliquas electronicas electronicas huic dominio nomine, sine praefixis praescriptionibus missas), chasquid usus sum ut omnes electronicas ad Gmail mailbox meam transmitterem.

**Si proprium tuum solvendum negotium mailbox, quaeso ne MX mutare et hunc gradum transilire.**

Emendo `conf/chasquid/domains/user.tax/aliases` , transmissio mailbox

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp)

`*` omnes electronicas indicat, `i` est inscriptio electronica praepositionis mittentis utentis supra creatae. Ad epistulam transmittere, quilibet usor debet lineam addere.

Deinde adde MX recordum (directe designo in inscriptione nominis domicilii inversae hic, ut in linea prima infra figuram ostenditur).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp)

Configuratione perfecta, aliis electronicis inscriptionibus electronicis uti potes mittere ad `i@user.tax` et `any123@user.tax` ut videas si emails in Gmail accipere potes.

sin minus, chasquid stipes ( `grep chasquid /var/log/syslog` ).

## Mitte inscriptionem ad i@user.tax cum Google Mail

Postquam Google Mail epistulas accipit, naturale est velle respondere cum `i@user.tax` loco i.user.tax@gmail.com.

Visita [https://mail.google.com/mail/u/1/#settings/accounts](https://mail.google.com/mail/u/1/#settings/accounts) ac deprime "aliam electronicam addere".

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp)

Deinde intrant tesseram receptam ab electronica quae transmittuntur.

Denique constitui potest sicut inscriptionem electronicam defaltam mittente (una cum facultate respondere cum eadem inscriptione).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp)

Hoc modo constitutionem ESMTP electronicarum litterarum explevimus et simul utimur Google Mail ad electronicas mittendas et accipiendas.

## Mitte test email sisto sive configuratione proficiat

Intra `ops/chasquid`

Curre `direnv allow` ut clientelas instituat (direnv in priore processus initializationis clavis inauguratus est et hamus testae adiectus est)

tunc currunt

```
user=i@user.tax pass=xxxx to=iuser.link@gmail.com ./sendmail.coffee
```

Sensus parametri talis est

* user: ESMTP username
* transiet: ESMTP password
* ad: recipient

Test email mittere potes.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp)

Commendatur ut Gmail utebar emails recipiendis ut sisto utrum configurationes succedant.

### TLS vexillum encryption

Ut in figura infra ostendetur, haec parva secula est, quae significat libellum SSL feliciter datum est.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp)

Tunc click "Show Originale Email"

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp)

### DKIM

Ut in figura infra ostendetur, Gmail originalis paginae epistulae DKIM ostentat, quod significat DKIM configurationem prosperam esse.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp)

Perscriptio in capite inscriptionem originalis receptam, et videre potes electronicam mittentem esse IPV6, quod significat IPV6 etiam configurari feliciter.