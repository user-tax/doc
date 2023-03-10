# ສ້າງເຄື່ອງແມ່ຂ່າຍການສົ່ງເມລ SMTP ຂອງທ່ານເອງ

## ຄໍາບັນຍາຍ

SMTP ສາມາດຊື້ບໍລິການໂດຍກົງຈາກຜູ້ຂາຍຄລາວ, ເຊັ່ນ:

* [Amazon SES SMTP](https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html)
* [Ali cloud email push](https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods)

ນອກນັ້ນທ່ານຍັງສາມາດສ້າງເຄື່ອງແມ່ຂ່າຍເມລຂອງທ່ານເອງ - ການສົ່ງບໍ່ຈໍາກັດ, ຄ່າໃຊ້ຈ່າຍທັງຫມົດຕ່ໍາ.

ຂ້າງລຸ່ມນີ້, ພວກເຮົາສະແດງໃຫ້ເຫັນຂັ້ນຕອນວິທີການສ້າງເຄື່ອງແມ່ຂ່າຍເມລຂອງພວກເຮົາເອງ.

## ການເລືອກເຊີບເວີ

ເຊີບເວີ SMTP ທີ່ໂຮສເອງຕ້ອງການ IP ສາທາລະນະທີ່ມີພອດ 25, 456 ແລະ 587 ເປີດ.

cloud ສາທາລະນະທີ່ໃຊ້ທົ່ວໄປໄດ້ຂັດຂວາງພອດເຫຼົ່ານີ້ໂດຍຄ່າເລີ່ມຕົ້ນ, ແລະມັນອາດຈະເປັນໄປໄດ້ທີ່ຈະເປີດພວກມັນໂດຍການອອກຄໍາສັ່ງເຮັດວຽກ, ແຕ່ມັນກໍ່ມີບັນຫາຫຼາຍ.

ຂ້າພະເຈົ້າແນະນໍາໃຫ້ຊື້ຈາກເຈົ້າພາບທີ່ມີພອດເຫຼົ່ານີ້ເປີດແລະສະຫນັບສະຫນູນການຕັ້ງຊື່ໂດເມນແບບປີ້ນກັບກັນ.

ທີ່ນີ້, ຂ້າພະເຈົ້າແນະນໍາໃຫ້ [Contabo](https://contabo.com) .

Contabo ເປັນຜູ້ໃຫ້ບໍລິການໂຮດຕິ້ງຢູ່ໃນ Munich, ເຢຍລະມັນ, ສ້າງຕັ້ງຂຶ້ນໃນປີ 2003 ດ້ວຍລາຄາທີ່ແຂ່ງຂັນຫຼາຍ.

ຖ້າທ່ານເລືອກ Euro ເປັນສະກຸນເງິນຂອງການຊື້, ລາຄາຈະຖືກກວ່າ (ເຄື່ອງແມ່ຂ່າຍທີ່ມີຫນ່ວຍຄວາມຈໍາ 8GB ແລະ 4 CPU ລາຄາປະມານ 529 ຢວນຕໍ່ປີ, ແລະຄ່າທໍານຽມການຕິດຕັ້ງເບື້ອງຕົ້ນແມ່ນບໍ່ເສຍຄ່າສໍາລັບຫນຶ່ງປີ).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp)

ເມື່ອສັ່ງ, ໃຫ້ສັງເກດວ່າ `prefer AMD` , ແລະເຄື່ອງແມ່ຂ່າຍທີ່ມີ CPU AMD ຈະມີການປະຕິບັດທີ່ດີກວ່າ.

ໃນຕໍ່ໄປນີ້, ຂ້າພະເຈົ້າຈະເອົາ VPS ຂອງ Contabo ເປັນຕົວຢ່າງເພື່ອສະແດງໃຫ້ເຫັນວິທີການສ້າງເຄື່ອງແມ່ຂ່າຍເມລຂອງທ່ານເອງ.

## ການຕັ້ງຄ່າລະບົບ Ubuntu

ລະບົບປະຕິບັດການຢູ່ທີ່ນີ້ແມ່ນ Ubuntu 22.04

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp)

ຖ້າເຊີບເວີໃນການສະແດງ ssh `Welcome to TinyCore 13!` (ດັ່ງທີ່ສະແດງຢູ່ໃນຮູບຂ້າງລຸ່ມນີ້), ມັນຫມາຍຄວາມວ່າລະບົບຍັງບໍ່ທັນໄດ້ຕິດຕັ້ງເທື່ອ. ກະລຸນາຕັດການເຊື່ອມຕໍ່ ssh ແລະລໍຖ້າສອງສາມນາທີເພື່ອເຂົ້າສູ່ລະບົບອີກຄັ້ງ.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp)

ເມື່ອ `Welcome to Ubuntu 22.04.1 LTS` ປາກົດ, ການເລີ່ມຕົ້ນແມ່ນສໍາເລັດ, ແລະທ່ານສາມາດສືບຕໍ່ກັບຂັ້ນຕອນຕໍ່ໄປນີ້.

### [ທາງເລືອກ] ເລີ່ມຕົ້ນສະພາບແວດລ້ອມການພັດທະນາ

ຂັ້ນຕອນນີ້ແມ່ນທາງເລືອກ.

ເພື່ອຄວາມສະດວກ, ຂ້ອຍເອົາການຕິດຕັ້ງ ແລະການຕັ້ງຄ່າລະບົບຂອງຊອບແວ ubuntu ໄວ້ໃນ [github.com/user-tax-dev/os/tree/main/ubuntu](https://github.com/user-tax-dev/os/tree/main/ubuntu) .

ດໍາເນີນການຄໍາສັ່ງຕໍ່ໄປນີ້ເພື່ອຕິດຕັ້ງດ້ວຍການຄລິກດຽວ.

```
bash <(curl -s https://raw.githubusercontent.com/user-tax-dev/os/main/ubuntu/boot.sh)
```

ຜູ້ໃຊ້ຈີນ, ກະລຸນາໃຊ້ຄໍາສັ່ງຕໍ່ໄປນີ້ແທນ, ແລະພາສາ, ເຂດເວລາ, ແລະອື່ນໆຈະຖືກຕັ້ງໂດຍອັດຕະໂນມັດ.

```
CN=1 bash <(curl -s https://ghproxy.com/https://raw.githubusercontent.com/user-tax-dev/os/main/ubuntu/boot.sh)
```

### Contabo ເປີດໃຊ້ IPV6

ເປີດໃຊ້ IPV6 ເພື່ອໃຫ້ SMTP ສາມາດສົ່ງອີເມວທີ່ມີທີ່ຢູ່ IPV6 ໄດ້.

ແກ້ໄຂ `/etc/sysctl.conf`

ແກ້ໄຂຫຼືເພີ່ມສາຍຕໍ່ໄປນີ້

```
net.ipv6.conf.all.disable_ipv6 = 0
net.ipv6.conf.default.disable_ipv6 = 0
net.ipv6.conf.lo.disable_ipv6 = 0
```

ຕິດຕາມດ້ວຍ [ການສອນ contabo: ເພີ່ມການເຊື່ອມຕໍ່ IPv6 ກັບເຄື່ອງແມ່ຂ່າຍຂອງທ່ານ](https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/)

ແກ້ໄຂ `/etc/netplan/01-netcfg.yaml` , ເພີ່ມສອງສາມເສັ້ນດັ່ງທີ່ສະແດງຢູ່ໃນຮູບຂ້າງລຸ່ມນີ້ (ໄຟລ໌ການຕັ້ງຄ່າມາດຕະຖານ Contabo VPS ມີເສັ້ນເຫຼົ່ານີ້ແລ້ວ, ພຽງແຕ່ບໍ່ຄໍາເຫັນໃຫ້ເຂົາເຈົ້າ).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp)

ຫຼັງຈາກນັ້ນ, restart server.

ຫຼັງຈາກການຕັ້ງຄ່າປະສົບຜົນສໍາເລັດ, ທ່ານສາມາດນໍາໃຊ້ `curl 6.ipw.cn` ເພື່ອເບິ່ງທີ່ຢູ່ ipv6 ຂອງເຄືອຂ່າຍພາຍນອກຂອງທ່ານ.

## Clone the configuration repository ops

```
git clone https://github.com/user-tax/ops.git
```

## ສ້າງໃບຢັ້ງຢືນ SSL ຟຣີສໍາລັບຊື່ໂດເມນຂອງທ່ານ

ການສົ່ງຈົດໝາຍຕ້ອງການໃບຢັ້ງຢືນ SSL ສຳລັບການເຂົ້າລະຫັດ ແລະເຊັນຊື່.

ພວກເຮົາໃຊ້ [acme.sh](https://github.com/acmesh-official/acme.sh) ເພື່ອສ້າງໃບຢັ້ງຢືນ.

acme.sh ເປັນແຫຼ່ງເປີດເຄື່ອງມືການເຊັນໃບຢັ້ງຢືນອັດຕະໂນມັດ,

ກະລຸນາໃສ່ ops warehouse ການຕັ້ງຄ່າ, ແລ່ນ `./ssl.sh` , ແລະໂຟນເດີ `conf` ຈະຖືກສ້າງຂື້ນຢູ່ໃນໄດເລກະທໍລີເທິງ.

ໂຄງສ້າງໄດເລກະທໍລີມີດັ່ງນີ້:

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp)

ຊອກຫາຜູ້ໃຫ້ບໍລິການ DNS ຂອງທ່ານຈາກ [acme.sh dnsapi](https://github.com/acmesh-official/acme.sh/wiki/dnsapi) , ແກ້ໄຂ `conf/conf.sh` .

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp)

ຫຼັງຈາກນັ້ນ, ດໍາເນີນການ `./ssl.sh 123.com` ເພື່ອສ້າງໃບຢັ້ງຢືນ `123.com` ແລະ `*.123.com` ສໍາລັບຊື່ໂດເມນຂອງທ່ານ.

ການແລ່ນຄັ້ງທຳອິດຈະຕິດຕັ້ງ [acme.sh](https://github.com/acmesh-official/acme.sh) ໂດຍອັດຕະໂນມັດ ແລະເພີ່ມວຽກທີ່ກຳນົດເວລາໄວ້ສຳລັບການຕໍ່ອາຍຸອັດຕະໂນມັດ. `crontab -l` ສາມາດເຫັນໄດ້ວ່າມີເສັ້ນດັ່ງກ່າວດັ່ງຕໍ່ໄປນີ້.

```
52 0 * * * "/mnt/www/.acme.sh"/acme.sh --cron --home "/mnt/www/.acme.sh" > /dev/null
```

ເສັ້ນທາງສໍາລັບໃບຢັ້ງຢືນທີ່ສ້າງຂຶ້ນແມ່ນບາງສິ່ງບາງຢ່າງເຊັ່ນ: `/mnt/www/.acme.sh/123.com_ecc。`

ການຕໍ່ອາຍຸໃບຢັ້ງຢືນຈະໂທຫາ `conf/reload/123.com.sh` script, ແກ້ໄຂສະຄິບນີ້, ທ່ານສາມາດເພີ່ມຄໍາສັ່ງເຊັ່ນ `nginx -s reload` ເພື່ອໂຫຼດຫນ້າຈໍຄືນ cache ຂອງໃບຢັ້ງຢືນຂອງຄໍາຮ້ອງສະຫມັກທີ່ກ່ຽວຂ້ອງ.

## ສ້າງເຄື່ອງແມ່ຂ່າຍ SMTP ດ້ວຍ chasquid

[chasquid](https://github.com/albertito/chasquid) ແມ່ນເຄື່ອງແມ່ຂ່າຍ SMTP ແຫຼ່ງເປີດທີ່ຂຽນເປັນພາສາ Go.

ແທນທີ່ໂປຣແກຣມເຊີບເວີເມລບູຮານເຊັ່ນ Postfix ແລະ Sendmail, chasquid ແມ່ນງ່າຍດາຍແລະງ່າຍຕໍ່ການໃຊ້, ແລະມັນຍັງງ່າຍຂຶ້ນສໍາລັບການພັດທະນາຂັ້ນສອງ.

ແລ່ນ `./chasquid/init.sh 123.com` ຈະຖືກຕິດຕັ້ງໂດຍອັດຕະໂນມັດດ້ວຍການຄລິກດຽວ (ແທນທີ່ 123.com ດ້ວຍຊື່ໂດເມນທີ່ສົ່ງຂອງເຈົ້າ).

## ຕັ້ງຄ່າລາຍເຊັນອີເມວ DKIM

DKIM ຖືກນໍາໃຊ້ເພື່ອສົ່ງລາຍເຊັນອີເມລ໌ເພື່ອປ້ອງກັນບໍ່ໃຫ້ຈົດຫມາຍຖືກປະຕິບັດວ່າເປັນ spam.

ຫຼັງຈາກຄໍາສັ່ງດໍາເນີນການຢ່າງສໍາເລັດຜົນ, ທ່ານຈະຖືກກະຕຸ້ນໃຫ້ຕັ້ງບັນທຶກ DKIM (ຕາມຮູບຂ້າງລຸ່ມນີ້).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp)

ພຽງແຕ່ເພີ່ມບັນທຶກ TXT ໃສ່ DNS ຂອງທ່ານ (ຕາມຮູບຂ້າງລຸ່ມນີ້).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp)

## ເບິ່ງສະຖານະບໍລິການ ແລະບັນທຶກ

`systemctl status chasquid` ເບິ່ງສະຖານະບໍລິການ.

ສະຖານະຂອງການເຮັດວຽກປົກກະຕິແມ່ນສະແດງຢູ່ໃນຮູບຂ້າງລຸ່ມນີ້

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp)

`grep chasquid /var/log/syslog` ຫຼື `journalctl -xeu chasquid` ສາມາດເບິ່ງບັນທຶກຄວາມຜິດພາດໄດ້.

## Reverse ການຕັ້ງຄ່າຊື່ໂດເມນ

ຊື່ໂດເມນທີ່ປີ້ນກັບກັນແມ່ນເພື່ອໃຫ້ທີ່ຢູ່ IP ໄດ້ຮັບການແກ້ໄຂກັບຊື່ໂດເມນທີ່ສອດຄ້ອງກັນ.

ການຕັ້ງຊື່ໂດເມນແບບປີ້ນກັບກັນສາມາດປ້ອງກັນອີເມວຈາກການຖືກລະບຸວ່າເປັນສະແປມ.

ເມື່ອເມລໄດ້ຮັບ, ເຄື່ອງແມ່ຂ່າຍທີ່ໄດ້ຮັບຈະປະຕິບັດການວິເຄາະຊື່ໂດເມນແບບປີ້ນກັບທີ່ຢູ່ IP ຂອງເຄື່ອງແມ່ຂ່າຍທີ່ສົ່ງເພື່ອຢືນຢັນວ່າເຄື່ອງແມ່ຂ່າຍທີ່ສົ່ງມີຊື່ໂດເມນທີ່ກົງກັນຂ້າມທີ່ຖືກຕ້ອງ.

ຖ້າເຄື່ອງແມ່ຂ່າຍທີ່ສົ່ງບໍ່ມີຊື່ໂດເມນທີ່ກົງກັນຂ້າມຫຼືຖ້າຊື່ໂດເມນທີ່ກົງກັນຂ້າມບໍ່ກົງກັບທີ່ຢູ່ IP ຂອງເຄື່ອງແມ່ຂ່າຍທີ່ສົ່ງ, ເຄື່ອງແມ່ຂ່າຍທີ່ໄດ້ຮັບອາດຈະຮັບຮູ້ອີເມວເປັນ spam ຫຼືປະຕິເສດມັນ.

ເຂົ້າໄປທີ່ [https://my.contabo.com/rdns](https://my.contabo.com/rdns) ແລະກຳນົດຄ່າຕາມຮູບຂ້າງລຸ່ມນີ້

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp)

ຫຼັງຈາກທີ່ຕັ້ງຊື່ໂດເມນແບບປີ້ນກັບກັນ, ຈື່ຈໍາທີ່ຈະກໍານົດການແກ້ໄຂການສົ່ງຕໍ່ຂອງຊື່ໂດເມນ ipv4 ແລະ ipv6 ກັບເຄື່ອງແມ່ຂ່າຍ.

## ແກ້ໄຂຊື່ເຈົ້າພາບຂອງ chasquid.conf

ແກ້ໄຂ `conf/chasquid/chasquid.conf` ກັບຄ່າຂອງຊື່ໂດເມນທີ່ປີ້ນກັບກັນ.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp)

ຫຼັງຈາກນັ້ນ, ດໍາເນີນການ `systemctl restart chasquid` ເພື່ອ restart ການບໍລິການ.

## ສໍາຮອງຂໍ້ມູນ conf ກັບ git repository

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp)

ຕົວຢ່າງ, ຂ້ອຍສໍາຮອງໂຟນເດີ conf ກັບຂະບວນການ github ຂອງຂ້ອຍເອງດັ່ງຕໍ່ໄປນີ້

ສ້າງສາງສ່ວນຕົວກ່ອນ

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp)

ໃສ່ບັນຊີ conf ແລະສົ່ງໄປທີ່ສາງ

```
git init
git add .
git commit -m "init"
git branch -M main
git remote add origin git@github.com:user-tax-key/conf.git
git push -u origin main
```

## ເພີ່ມຜູ້ສົ່ງ

ແລ່ນ

```
chasquid-util user-add i@user.tax
```

ສາມາດເພີ່ມຜູ້ສົ່ງໄດ້

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp)

### ກວດ​ສອບ​ວ່າ​ລະ​ຫັດ​ຜ່ານ​ໄດ້​ຖືກ​ຕັ້ງ​ຖືກ​ຕ້ອງ​

```
chasquid-util authenticate i@user.tax --password=xxxxxxx
```

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp)

ຫຼັງຈາກເພີ່ມຜູ້ໃຊ້, `chasquid/domains/user.tax/users` ຈະຖືກປັບປຸງ, ຈື່ຈໍາທີ່ຈະສົ່ງມັນໄປຫາສາງ.

## DNS ເພີ່ມບັນທຶກ SPF

SPF (Sender Policy Framework ) ເປັນເທັກໂນໂລຍີການກວດສອບອີເມວທີ່ໃຊ້ເພື່ອປ້ອງກັນການສໍ້ໂກງອີເມວ.

ມັນຢືນຢັນຕົວຕົນຂອງຜູ້ສົ່ງອີເມວໂດຍການກວດສອບວ່າທີ່ຢູ່ IP ຂອງຜູ້ສົ່ງກົງກັບບັນທຶກ DNS ຂອງຊື່ໂດເມນທີ່ມັນອ້າງວ່າເປັນ, ປ້ອງກັນຜູ້ສໍ້ໂກງຈາກການສົ່ງອີເມວປອມ.

ການເພີ່ມບັນທຶກ SPF ສາມາດປ້ອງກັນອີເມວຈາກການຖືກລະບຸວ່າເປັນ spam ຫຼາຍເທົ່າທີ່ເປັນໄປໄດ້.

ຖ້າເຄື່ອງແມ່ຂ່າຍຊື່ໂດເມນຂອງທ່ານບໍ່ສະຫນັບສະຫນູນປະເພດ SPF, ພຽງແຕ່ເພີ່ມບັນທຶກປະເພດ TXT.

ຕົວຢ່າງ, SPF ຂອງ `user.tax` ແມ່ນດັ່ງຕໍ່ໄປນີ້

`v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all`

SPF ສໍາລັບ `_spf.user.tax`

`v=spf1 a:smtp.user.tax ~all`

ໃຫ້ສັງເກດວ່າຂ້ອຍ `include:_spf.google.com` ຢູ່ທີ່ນີ້, ເພາະວ່າຂ້ອຍຈະຕັ້ງຄ່າ `i@user.tax` ເປັນທີ່ຢູ່ສົ່ງໃນກ່ອງຈົດຫມາຍ Google ຕໍ່ມາ.

## ການຕັ້ງຄ່າ DNS DMARC

DMARC ແມ່ນຕົວຫຍໍ້ຂອງ (ການຢືນຢັນຂໍ້ຄວາມທີ່ອີງໃສ່ໂດເມນ, ການລາຍງານ & ຄວາມສອດຄ່ອງ).

ມັນຖືກນໍາໃຊ້ເພື່ອເກັບກໍາການຕີຕົວຂອງ SPF (ອາດຈະເກີດຈາກຄວາມຜິດພາດໃນການຕັ້ງຄ່າ, ຫຼືຄົນອື່ນກໍາລັງທໍາທ່າວ່າເປັນທ່ານທີ່ຈະສົ່ງ spam).

ເພີ່ມບັນທຶກ TXT `_dmarc` ,

ເນື້ອໃນແມ່ນດັ່ງຕໍ່ໄປນີ້

```
v=DMARC1; p=quarantine; fo=1; ruf=mailto:ruf@user.tax; rua=mailto:rua@user.tax
```

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp)

ຄວາມຫມາຍຂອງແຕ່ລະຕົວກໍານົດການແມ່ນດັ່ງຕໍ່ໄປນີ້

### p (ນະໂຍບາຍ)

ຊີ້ບອກວິທີການຈັດການອີເມວທີ່ລົ້ມເຫລວໃນການກວດສອບ SPF (Sender Policy Framework) ຫຼື DKIM (DomainKeys Identified Mail). ພາຣາມິເຕີ p ສາມາດຖືກຕັ້ງເປັນໜຶ່ງໃນສາມຄ່າ:

* none: ບໍ່ມີການດໍາເນີນການ, ພຽງແຕ່ຜົນໄດ້ຮັບການຢັ້ງຢືນໄດ້ຖືກປ້ອນກັບຄືນໄປບ່ອນຜູ້ສົ່ງໂດຍຜ່ານກົນໄກການລາຍງານອີເມລ໌.
* ການກັກກັນ: ເອົາເມລທີ່ຍັງບໍ່ໄດ້ຜ່ານການກວດສອບເຂົ້າໄປໃນໂຟເດີ spam, ແຕ່ຈະບໍ່ປະຕິເສດເມລໂດຍກົງ.
* ປະຕິເສດ: ປະຕິເສດໂດຍກົງກັບອີເມວທີ່ລົ້ມເຫລວໃນການກວດສອບ.

### fo (ຕົວເລືອກຄວາມລົ້ມເຫລວ)

ລະບຸຈໍານວນຂໍ້ມູນທີ່ສົ່ງຄືນໂດຍກົນໄກການລາຍງານ. ມັນສາມາດຖືກຕັ້ງເປັນໜຶ່ງໃນຄ່າຕໍ່ໄປນີ້:

* 0: ລາຍງານຜົນການກວດສອບສໍາລັບຂໍ້ຄວາມທັງໝົດ
* 1: ພຽງແຕ່ລາຍງານຂໍ້ຄວາມທີ່ລົ້ມເຫລວໃນການກວດສອບ
* d: ພຽງແຕ່ລາຍງານຄວາມລົ້ມເຫລວໃນການກວດສອບຊື່ໂດເມນ
* s: ພຽງແຕ່ລາຍງານຄວາມລົ້ມເຫລວໃນການກວດສອບ SPF
* l: ພຽງແຕ່ລາຍງານຄວາມລົ້ມເຫລວໃນການກວດສອບ DKIM

### rua & ruf

* rua (ການລາຍງານ URI ສໍາລັບບົດລາຍງານລວມ): ທີ່ຢູ່ອີເມວສໍາລັບການໄດ້ຮັບບົດລາຍງານລວມ
* ruf (ການລາຍງານ URI ສໍາລັບບົດລາຍງານ Forensic): ທີ່ຢູ່ອີເມວທີ່ຈະໄດ້ຮັບບົດລາຍງານລາຍລະອຽດ

## ເພີ່ມບັນທຶກ MX ເພື່ອສົ່ງຕໍ່ອີເມວໄປຫາ Google Mail

ເນື່ອງຈາກວ່າຂ້ອຍບໍ່ສາມາດຊອກຫາກ່ອງຈົດຫມາຍຂອງບໍລິສັດທີ່ບໍ່ເສຍຄ່າທີ່ສະຫນັບສະຫນູນທີ່ຢູ່ທົ່ວໄປ (Catch-All, ສາມາດຮັບອີເມວໃດໆທີ່ຖືກສົ່ງໄປຫາຊື່ໂດເມນນີ້, ໂດຍບໍ່ມີຂໍ້ຈໍາກັດກ່ຽວກັບຄໍານໍາຫນ້າ), ຂ້ອຍໄດ້ໃຊ້ chasquid ເພື່ອສົ່ງຕໍ່ອີເມວທັງຫມົດໄປຫາກ່ອງຈົດຫມາຍ Gmail ຂອງຂ້ອຍ.

**ຖ້າທ່ານມີກ່ອງຈົດຫມາຍທຸລະກິດຂອງທ່ານເອງ, ກະລຸນາຢ່າດັດແປງ MX ແລະຂ້າມຂັ້ນຕອນນີ້.**

ແກ້ໄຂ `conf/chasquid/domains/user.tax/aliases` , ຕັ້ງກ່ອງຈົດໝາຍສົ່ງຕໍ່

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp)

`*` ຊີ້ບອກເຖິງອີເມວທັງໝົດ, `i` ເປັນທີ່ຢູ່ອີເມລ໌ຂອງຜູ້ສົ່ງທີ່ສ້າງຂຶ້ນຂ້າງເທິງ. ເພື່ອສົ່ງຕໍ່ເມລ, ຜູ້ໃຊ້ແຕ່ລະຄົນຕ້ອງການເພີ່ມແຖວ.

ຫຼັງຈາກນັ້ນ, ເພີ່ມບັນທຶກ MX (ຂ້າພະເຈົ້າຊີ້ໂດຍກົງກັບທີ່ຢູ່ຂອງຊື່ໂດເມນທີ່ກົງກັນຂ້າມຢູ່ທີ່ນີ້, ດັ່ງທີ່ສະແດງຢູ່ໃນແຖວທໍາອິດໃນຮູບຂ້າງລຸ່ມນີ້).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp)

ຫຼັງ​ຈາກ​ການ​ຕັ້ງ​ຄ່າ​ສໍາ​ເລັດ​ສົມ​ບູນ​, ທ່ານ​ສາ​ມາດ​ນໍາ​ໃຊ້​ທີ່​ຢູ່​ອີ​ເມວ​ອື່ນໆ​ທີ່​ຈະ​ສົ່ງ​ອີ​ເມວ​ໄປ `i@user.tax` ແລະ `any123@user.tax` ເພື່ອ​ເບິ່ງ​ວ່າ​ທ່ານ​ສາ​ມາດ​ໄດ້​ຮັບ​ອີ​ເມວ​ໃນ Gmail ໄດ້​.

ຖ້າບໍ່ແມ່ນ, ໃຫ້ກວດເບິ່ງບັນທຶກ chasquid ( `grep chasquid /var/log/syslog` ).

## ສົ່ງອີເມວຫາ i@user.tax ດ້ວຍ Google Mail

ຫຼັງຈາກ Google Mail ໄດ້ຮັບຈົດໝາຍແລ້ວ, ມັນເປັນເລື່ອງທຳມະດາທີ່ຈະຕ້ອງການຕອບກັບດ້ວຍ `i@user.tax` ແທນ i.user.tax@gmail.com.

ເຂົ້າເບິ່ງ [https://mail.google.com/mail/u/1/#settings/accounts](https://mail.google.com/mail/u/1/#settings/accounts) ແລະຄລິກ "ເພີ່ມທີ່ຢູ່ອີເມວອື່ນ".

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp)

ຫຼັງຈາກນັ້ນ, ໃຫ້ໃສ່ລະຫັດຢືນຢັນທີ່ໄດ້ຮັບໂດຍອີເມລ໌ທີ່ຖືກສົ່ງໄປຫາ.

ສຸດທ້າຍ, ມັນສາມາດຖືກກໍານົດເປັນທີ່ຢູ່ຜູ້ສົ່ງເລີ່ມຕົ້ນ (ພ້ອມກັບທາງເລືອກທີ່ຈະຕອບກັບທີ່ຢູ່ດຽວກັນ).

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp)

ດ້ວຍວິທີນີ້, ພວກເຮົາໄດ້ສໍາເລັດການສ້າງຕັ້ງເຄື່ອງແມ່ຂ່າຍເມລ SMTP ແລະໃນເວລາດຽວກັນໃຊ້ Google Mail ເພື່ອສົ່ງແລະຮັບອີເມວ.

## ສົ່ງອີເມວທົດສອບເພື່ອກວດເບິ່ງວ່າການຕັ້ງຄ່າສຳເລັດຫຼືບໍ່

ໃສ່ `ops/chasquid`

ແລ່ນ `direnv allow` ໃຫ້ຕິດຕັ້ງ dependencies (direnv ໄດ້ຖືກຕິດຕັ້ງໃນຂະບວນການເລີ່ມຕົ້ນຫນຶ່ງທີ່ສໍາຄັນທີ່ຜ່ານມາແລະ hook ໄດ້ຖືກເພີ່ມເຂົ້າໄປໃນ shell)

ແລ້ວແລ່ນ

```
user=i@user.tax pass=xxxx to=iuser.link@gmail.com ./sendmail.coffee
```

ຄວາມຫມາຍຂອງພາລາມິເຕີແມ່ນດັ່ງຕໍ່ໄປນີ້

* ຜູ້ໃຊ້: ຊື່ຜູ້ໃຊ້ SMTP
* ຜ່ານ: ລະຫັດຜ່ານ SMTP
* ເຖິງ: ຜູ້ຮັບ

ທ່ານສາມາດສົ່ງອີເມວທົດສອບໄດ້.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp)

ຂໍແນະນຳໃຫ້ໃຊ້ Gmail ເພື່ອຮັບອີເມວທົດສອບເພື່ອກວດເບິ່ງວ່າການຕັ້ງຄ່າສຳເລັດຫຼືບໍ່.

### ການເຂົ້າລະຫັດມາດຕະຖານ TLS

ດັ່ງທີ່ສະແດງຢູ່ໃນຮູບຂ້າງລຸ່ມນີ້, ມີ lock ຂະຫນາດນ້ອຍນີ້, ຊຶ່ງຫມາຍຄວາມວ່າໃບຢັ້ງຢືນ SSL ໄດ້ຖືກເປີດໃຊ້ຢ່າງສໍາເລັດຜົນ.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp)

ຫຼັງຈາກນັ້ນ, ໃຫ້ຄລິກໃສ່ "ສະແດງອີເມລ໌ຕົ້ນສະບັບ"

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp)

### DKIM

ດັ່ງທີ່ສະແດງຢູ່ໃນຮູບຂ້າງລຸ່ມນີ້, ຫນ້າເມລຕົ້ນສະບັບຂອງ Gmail ສະແດງ DKIM, ຊຶ່ງຫມາຍຄວາມວ່າການຕັ້ງຄ່າ DKIM ປະສົບຜົນສໍາເລັດ.

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp)

ກວດເບິ່ງທີ່ໄດ້ຮັບໃນສ່ວນຫົວຂອງອີເມລ໌ຕົ້ນສະບັບ, ແລະທ່ານສາມາດເຫັນໄດ້ວ່າທີ່ຢູ່ຜູ້ສົ່ງແມ່ນ IPV6, ຊຶ່ງຫມາຍຄວາມວ່າ IPV6 ຍັງຖືກຕັ້ງຄ່າຢ່າງສໍາເລັດຜົນ.