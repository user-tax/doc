# สร้างเซิร์ฟเวอร์ส่งเมล SMTP ของคุณเอง

## คำนำ

SMTP สามารถซื้อบริการโดยตรงจากผู้จำหน่ายระบบคลาวด์ เช่น:

* [Amazon SES SMTP](https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html)
* [ผลักดันอีเมลเมฆอาลี](https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods)

คุณยังสามารถสร้างเมลเซิร์ฟเวอร์ของคุณเอง - ส่งไม่จำกัด ต้นทุนโดยรวมต่ำ

ด้านล่างนี้ เราสาธิตวิธีสร้างเซิร์ฟเวอร์อีเมลของเราเองทีละขั้นตอน

## การเลือกเซิร์ฟเวอร์

เซิร์ฟเวอร์ SMTP ที่โฮสต์เองต้องการ IP สาธารณะที่เปิดพอร์ต 25, 456 และ 587

คลาวด์สาธารณะที่ใช้กันทั่วไปได้ปิดกั้นพอร์ตเหล่านี้โดยค่าเริ่มต้น และอาจเป็นไปได้ที่จะเปิดโดยออกใบสั่งงาน แต่ท้ายที่สุดแล้วมันก็ลำบากมาก

ฉันแนะนำให้ซื้อจากโฮสต์ที่เปิดพอร์ตเหล่านี้และรองรับการตั้งค่าชื่อโดเมนย้อนกลับ

ที่นี่ฉันแนะนำ [Contabo](https://contabo.com)

Contabo เป็นผู้ให้บริการโฮสต์ในเมืองมิวนิก ประเทศเยอรมนี ก่อตั้งขึ้นในปี 2546 ด้วยราคาที่แข่งขันได้

หากคุณเลือกสกุลเงินยูโรเป็นสกุลเงินในการซื้อ ราคาจะถูกกว่า (เซิร์ฟเวอร์ที่มีหน่วยความจำ 8GB และ 4 CPUs มีค่าใช้จ่ายประมาณ 529 หยวนต่อปี และค่าติดตั้งครั้งแรกฟรีเป็นเวลาหนึ่งปี)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp)

เมื่อทำการสั่งซื้อ ให้สังเกต `prefer AMD` และเซิร์ฟเวอร์ที่ใช้ AMD CPU จะมีประสิทธิภาพที่ดีกว่า

ต่อไปนี้ ฉันจะใช้ VPS ของ Contabo เป็นตัวอย่างเพื่อสาธิตวิธีสร้างเมลเซิร์ฟเวอร์ของคุณเอง

## การกำหนดค่าระบบอูบุนตู

ระบบปฏิบัติการที่นี่คือ Ubuntu 22.04

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp)

หากเซิร์ฟเวอร์บน ssh แสดง `Welcome to TinyCore 13!` (ตามรูปด้านล่าง) แสดงว่ายังไม่ได้ติดตั้งระบบ โปรดยกเลิกการเชื่อมต่อ ssh และรอสักครู่เพื่อเข้าสู่ระบบอีกครั้ง

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp)

เมื่อ `Welcome to Ubuntu 22.04.1 LTS` ปรากฏขึ้น แสดงว่าการเริ่มต้นเสร็จสมบูรณ์ และคุณสามารถทำตามขั้นตอนต่อไปนี้ได้

### [ไม่บังคับ] เริ่มต้นสภาพแวดล้อมการพัฒนา

ขั้นตอนนี้เป็นทางเลือก

เพื่อความสะดวก ฉันใส่การติดตั้งและการกำหนดค่าระบบของซอฟต์แวร์ Ubuntu ใน [github.com/user-tax-dev/os/tree/main/ubuntu](https://github.com/user-tax-dev/os/tree/main/ubuntu)

เรียกใช้คำสั่งต่อไปนี้เพื่อติดตั้งได้ด้วยคลิกเดียว

```
bash <(curl -s https://raw.githubusercontent.com/user-tax-dev/os/main/ubuntu/boot.sh)
```

ผู้ใช้ภาษาจีน โปรดใช้คำสั่งต่อไปนี้แทน และภาษา เขตเวลา ฯลฯ จะถูกตั้งค่าโดยอัตโนมัติ

```
CN=1 bash <(curl -s https://ghproxy.com/https://raw.githubusercontent.com/user-tax-dev/os/main/ubuntu/boot.sh)
```

### Contabo เปิดใช้งาน IPV6

เปิดใช้งาน IPV6 เพื่อให้ SMTP สามารถส่งอีเมลด้วยที่อยู่ IPV6

แก้ไข `/etc/sysctl.conf`

แก้ไขหรือเพิ่มบรรทัดต่อไปนี้

```
net.ipv6.conf.all.disable_ipv6 = 0
net.ipv6.conf.default.disable_ipv6 = 0
net.ipv6.conf.lo.disable_ipv6 = 0
```

ติดตาม [บทช่วยสอน contabo: การเพิ่มการเชื่อมต่อ IPv6 ให้กับเซิร์ฟเวอร์ของคุณ](https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/)

แก้ไข `/etc/netplan/01-netcfg.yaml` เพิ่ม 2-3 บรรทัดดังที่แสดงในรูปด้านล่าง (ไฟล์คอนฟิกูเรชันเริ่มต้นของ Contabo VPS มีบรรทัดเหล่านี้อยู่แล้ว เพียงแค่ไม่แสดงความคิดเห็น)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp)

จากนั้นรีสตาร์ทเซิร์ฟเวอร์

หลังจากการกำหนดค่าสำเร็จ คุณสามารถใช้ `curl 6.ipw.cn` เพื่อดูที่อยู่ ipv6 ของเครือข่ายภายนอกของคุณได้

## ops โคลนพื้นที่เก็บข้อมูลการกำหนดค่า

```
git clone https://github.com/user-tax/ops.git
```

## สร้างใบรับรอง SSL ฟรีสำหรับชื่อโดเมนของคุณ

การส่งเมลต้องใช้ใบรับรอง SSL สำหรับการเข้ารหัสและการเซ็นชื่อ

เราใช้ [acme.sh](https://github.com/acmesh-official/acme.sh) เพื่อสร้างใบรับรอง

acme.sh เป็นเครื่องมือลงนามใบรับรองอัตโนมัติแบบโอเพ่นซอร์ส

ป้อน ops ของคลังสินค้าการกำหนดค่า เรียกใช้ `./ssl.sh` และโฟลเดอร์ `conf` จะถูกสร้างขึ้นในไดเร็กทอรีด้านบน

โครงสร้างไดเรกทอรีมีดังนี้:

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp)

ค้นหาผู้ให้บริการ DNS ของคุณจาก [acme.sh dnsapi](https://github.com/acmesh-official/acme.sh/wiki/dnsapi) แก้ไข `conf/conf.sh`

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp)

จากนั้นเรียกใช้ `./ssl.sh 123.com` เพื่อสร้างใบรับรอง `123.com` และ `*.123.com` สำหรับชื่อโดเมนของคุณ

การเรียกใช้ครั้งแรกจะติดตั้ง [acme.sh](https://github.com/acmesh-official/acme.sh) โดยอัตโนมัติ และเพิ่มงานตามกำหนดการสำหรับการต่ออายุอัตโนมัติ `crontab -l` จะเห็นว่ามีบรรทัดดังนี้

```
52 0 * * * "/mnt/www/.acme.sh"/acme.sh --cron --home "/mnt/www/.acme.sh" > /dev/null
```

เส้นทางสำหรับใบรับรองที่สร้างขึ้นคือ `/mnt/www/.acme.sh/123.com_ecc。`

การต่ออายุใบรับรองจะเรียกใช้สคริปต์ `conf/reload/123.com.sh` แก้ไขสคริปต์นี้ คุณสามารถเพิ่มคำสั่งเช่น `nginx -s reload` เพื่อรีเฟรชแคชใบรับรองของแอปพลิเคชันที่เกี่ยวข้อง

## สร้างเซิร์ฟเวอร์ SMTP ด้วย chasquid

[chasquid](https://github.com/albertito/chasquid) เป็นเซิร์ฟเวอร์ SMTP โอเพ่นซอร์สที่เขียนด้วยภาษา Go

แทนที่จะใช้แทนโปรแกรมเมลเซิร์ฟเวอร์โบราณ เช่น Postfix และ Sendmail chasquid นั้นง่ายกว่าและใช้งานง่ายกว่า และยังง่ายกว่าสำหรับการพัฒนารองอีกด้วย

Run `./chasquid/init.sh 123.com` จะถูกติดตั้งโดยอัตโนมัติด้วยคลิกเดียว (แทนที่ 123.com ด้วยชื่อโดเมนที่ใช้ส่งของคุณ)

## กำหนดค่าลายเซ็นอีเมล DKIM

DKIM ใช้เพื่อส่งลายเซ็นอีเมลเพื่อป้องกันไม่ให้จดหมายถูกมองว่าเป็นสแปม

หลังจากรันคำสั่งสำเร็จ คุณจะได้รับแจ้งให้ตั้งค่าบันทึก DKIM (ตามที่แสดงด้านล่าง)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp)

เพียงเพิ่มระเบียน TXT ลงใน DNS ของคุณ (ตามที่แสดงด้านล่าง)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp)

## ดูสถานะบริการและบันทึก

`systemctl status chasquid` ดูสถานะบริการ

สถานะการทำงานปกติดังรูปด้านล่าง

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp)

`grep chasquid /var/log/syslog` หรือ `journalctl -xeu chasquid` สามารถดูบันทึกข้อผิดพลาดได้

## ย้อนกลับการกำหนดค่าชื่อโดเมน

ชื่อโดเมนย้อนกลับคือการอนุญาตให้แก้ไขที่อยู่ IP เป็นชื่อโดเมนที่เกี่ยวข้อง

การตั้งชื่อโดเมนย้อนกลับสามารถป้องกันไม่ให้อีเมลถูกระบุว่าเป็นสแปม

เมื่อได้รับจดหมาย เซิร์ฟเวอร์ที่รับจะทำการวิเคราะห์ชื่อโดเมนย้อนกลับบนที่อยู่ IP ของเซิร์ฟเวอร์ที่ส่งเพื่อยืนยันว่าเซิร์ฟเวอร์ที่ส่งมีชื่อโดเมนย้อนกลับที่ถูกต้องหรือไม่

หากเซิร์ฟเวอร์ที่ส่งไม่มีชื่อโดเมนย้อนกลับ หรือหากชื่อโดเมนย้อนกลับไม่ตรงกับที่อยู่ IP ของเซิร์ฟเวอร์ที่ส่ง เซิร์ฟเวอร์ที่รับอาจรับรู้อีเมลว่าเป็นสแปมหรือปฏิเสธอีเมลนั้น

ไปที่ [https://my.contabo.com/rdns](https://my.contabo.com/rdns) และกำหนดค่าตามที่แสดงด้านล่าง

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp)

หลังจากตั้งชื่อโดเมนย้อนกลับ อย่าลืมกำหนดค่าการส่งต่อของชื่อโดเมน ipv4 และ ipv6 ไปยังเซิร์ฟเวอร์

## แก้ไขชื่อโฮสต์ของ chasquid.conf

แก้ไข `conf/chasquid/chasquid.conf` เป็นค่าของชื่อโดเมนย้อนกลับ

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp)

จากนั้นเรียกใช้ `systemctl restart chasquid` เพื่อเริ่มบริการใหม่

## สำรอง conf ไปยังที่เก็บ git

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp)

ตัวอย่างเช่น ฉันสำรองข้อมูลโฟลเดอร์ conf ไปยังกระบวนการ GitHub ของฉันเอง ดังนี้

สร้างคลังสินค้าส่วนตัวก่อน

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp)

ป้อนไดเร็กทอรี conf และส่งไปยังคลังสินค้า

```
git init
git add .
git commit -m "init"
git branch -M main
git remote add origin git@github.com:user-tax-key/conf.git
git push -u origin main
```

## เพิ่มผู้ส่ง

วิ่ง

```
chasquid-util user-add i@user.tax
```

สามารถเพิ่มผู้ส่ง

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp)

### ตรวจสอบว่าตั้งรหัสผ่านถูกต้อง

```
chasquid-util authenticate i@user.tax --password=xxxxxxx
```

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp)

หลังจากเพิ่มผู้ใช้แล้ว `chasquid/domains/user.tax/users` จะได้รับการอัปเดต อย่าลืมส่งไปยังคลังสินค้า

## DNS เพิ่มระเบียน SPF

SPF ( Sender Policy Framework ) คือเทคโนโลยีการยืนยันอีเมลที่ใช้ป้องกันการฉ้อโกงทางอีเมล

โดยจะตรวจสอบตัวตนของผู้ส่งอีเมลโดยตรวจสอบว่าที่อยู่ IP ของผู้ส่งตรงกับบันทึก DNS ของชื่อโดเมนที่อ้างว่าเป็น เพื่อป้องกันไม่ให้มิจฉาชีพส่งอีเมลปลอม

การเพิ่มบันทึก SPF สามารถป้องกันไม่ให้อีเมลถูกระบุว่าเป็นสแปมได้มากที่สุด

หากเซิร์ฟเวอร์ชื่อโดเมนของคุณไม่รองรับประเภท SPF เพียงเพิ่มระเบียนประเภท TXT

ตัวอย่างเช่น ค่า SPF ของ `user.tax` จะเป็นดังนี้

`v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all`

SPF สำหรับ `_spf.user.tax`

`v=spf1 a:smtp.user.tax ~all`

โปรดทราบว่าฉันได้ `include:_spf.google.com` ที่นี่ เนื่องจากฉันจะกำหนด `i@user.tax` เป็นที่อยู่สำหรับส่งในกล่องจดหมายของ Google ในภายหลัง

## การกำหนดค่า DNS DMARC

DMARC เป็นตัวย่อของ (Domain-based Message Authentication, Reporting & Conformance)

ใช้เพื่อบันทึกการตีกลับของ SPF (อาจเกิดจากข้อผิดพลาดในการกำหนดค่า หรือมีคนอื่นแอบอ้างเป็นคุณเพื่อส่งสแปม)

เพิ่มระเบียน TXT `_dmarc` ,

เนื้อหามีดังนี้

```
v=DMARC1; p=quarantine; fo=1; ruf=mailto:ruf@user.tax; rua=mailto:rua@user.tax
```

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp)

ความหมายของแต่ละพารามิเตอร์มีดังนี้

### หน้า (นโยบาย)

ระบุวิธีจัดการกับอีเมลที่ไม่ผ่านการตรวจสอบ SPF (Sender Policy Framework) หรือ DKIM (DomainKeys Identified Mail) พารามิเตอร์ p สามารถตั้งค่าเป็นหนึ่งในสามค่า:

* ไม่มี: ไม่มีการดำเนินการใดๆ มีเพียงผลการยืนยันเท่านั้นที่จะถูกส่งกลับไปยังผู้ส่งผ่านทางกลไกการรายงานทางอีเมล
* กักกัน: ใส่จดหมายที่ไม่ผ่านการยืนยันลงในโฟลเดอร์สแปม แต่จะไม่ปฏิเสธจดหมายโดยตรง
* ปฏิเสธ: ปฏิเสธอีเมลที่ไม่ผ่านการตรวจสอบโดยตรง

### สำหรับ (ตัวเลือกความล้มเหลว)

ระบุจำนวนข้อมูลที่ส่งคืนโดยกลไกการรายงาน สามารถตั้งค่าเป็นค่าใดค่าหนึ่งต่อไปนี้:

* 0: รายงานผลการตรวจสอบสำหรับข้อความทั้งหมด
* 1: รายงานเฉพาะข้อความที่ไม่ผ่านการตรวจสอบ
* d: รายงานเฉพาะการยืนยันชื่อโดเมนที่ล้มเหลว
* s: รายงานเฉพาะความล้มเหลวในการตรวจสอบ SPF
* l: รายงานเฉพาะการตรวจสอบ DKIM ที่ล้มเหลว

### รัว&รูฟ

* rua (การรายงาน URI สำหรับรายงานรวม): ที่อยู่อีเมลสำหรับรับรายงานรวม
* ruf (การรายงาน URI สำหรับรายงานทางนิติวิทยาศาสตร์): ที่อยู่อีเมลเพื่อรับรายงานโดยละเอียด

## เพิ่มระเบียน MX เพื่อส่งต่ออีเมลไปยัง Google Mail

เนื่องจากฉันไม่พบกล่องจดหมายขององค์กรฟรีที่รองรับที่อยู่สากล (Catch-All สามารถรับอีเมลใดๆ ที่ส่งไปยังชื่อโดเมนนี้โดยไม่มีข้อจำกัดเกี่ยวกับคำนำหน้า) ฉันจึงใช้ chasquid เพื่อส่งต่ออีเมลทั้งหมดไปยังกล่องจดหมาย Gmail ของฉัน

**หากคุณมีกล่องจดหมายธุรกิจแบบชำระเงินของคุณเอง โปรดอย่าแก้ไข MX และข้ามขั้นตอนนี้**

แก้ไข `conf/chasquid/domains/user.tax/aliases` ตั้งค่ากล่องจดหมายส่งต่อ

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp)

`*` ระบุอีเมลทั้งหมด `i` เป็นคำนำหน้าที่อยู่อีเมลของผู้ใช้ที่ส่งที่สร้างขึ้นด้านบน ในการส่งต่อจดหมาย ผู้ใช้แต่ละคนจำเป็นต้องเพิ่มบรรทัด

จากนั้นเพิ่มระเบียน MX (ฉันชี้ตรงไปยังที่อยู่ของชื่อโดเมนย้อนกลับที่นี่ ตามที่แสดงในบรรทัดแรกในรูปด้านล่าง)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp)

หลังจากการกำหนดค่าเสร็จสิ้น คุณสามารถใช้ที่อยู่อีเมลอื่นเพื่อส่งอีเมลไปที่ `i@user.tax` และ `any123@user.tax` เพื่อดูว่าคุณสามารถรับอีเมลใน Gmail ได้หรือไม่

ถ้าไม่ ตรวจสอบบันทึก chasquid ( `grep chasquid /var/log/syslog` )

## ส่งอีเมลไปที่ i@user.tax ด้วย Google Mail

หลังจากที่ Google Mail ได้รับอีเมลแล้ว เป็นเรื่องปกติที่จะตอบกลับด้วย `i@user.tax` แทน i.user.tax@gmail.com

ไปที่ [https://mail.google.com/mail/u/1/#settings/accounts](https://mail.google.com/mail/u/1/#settings/accounts) แล้วคลิก "เพิ่มที่อยู่อีเมลอื่น"

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp)

จากนั้นป้อนรหัสยืนยันที่ได้รับจากอีเมลที่ส่งต่อ

สุดท้าย สามารถตั้งค่าเป็นที่อยู่ผู้ส่งเริ่มต้น (พร้อมกับตัวเลือกในการตอบกลับด้วยที่อยู่เดียวกัน)

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp)

ด้วยวิธีนี้ เราได้ดำเนินการสร้างเซิร์ฟเวอร์อีเมล SMTP เสร็จเรียบร้อยแล้ว และในขณะเดียวกันก็ใช้ Google Mail เพื่อส่งและรับอีเมล

## ส่งอีเมลทดสอบเพื่อตรวจสอบว่าการกำหนดค่าสำเร็จหรือไม่

ป้อน `ops/chasquid`

เรียกใช้ `direnv allow` ให้ติดตั้งการพึ่งพา (direnv ได้รับการติดตั้งในกระบวนการเริ่มต้นแบบคีย์เดียวก่อนหน้านี้ และเพิ่ม hook ลงในเชลล์)

จากนั้นเรียกใช้

```
user=i@user.tax pass=xxxx to=iuser.link@gmail.com ./sendmail.coffee
```

ความหมายของพารามิเตอร์มีดังนี้

* ผู้ใช้: ชื่อผู้ใช้ SMTP
* ผ่าน: รหัสผ่าน SMTP
* ถึง: ผู้รับ

คุณสามารถส่งอีเมลทดสอบ

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp)

ขอแนะนำให้ใช้ Gmail เพื่อรับอีเมลทดสอบเพื่อตรวจสอบว่าการกำหนดค่าสำเร็จหรือไม่

### การเข้ารหัสมาตรฐาน TLS

ดังที่แสดงในรูปด้านล่าง มีล็อคเล็กๆ นี้ ซึ่งหมายความว่าใบรับรอง SSL เปิดใช้งานสำเร็จแล้ว

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp)

จากนั้นคลิก "แสดงอีเมลต้นฉบับ"

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp)

### ดีเคไอเอ็ม

ดังที่แสดงในรูปด้านล่าง หน้าเมลต้นฉบับของ Gmail แสดง DKIM ซึ่งหมายความว่าการกำหนดค่า DKIM สำเร็จ

![](https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp)

ตรวจสอบที่ได้รับในส่วนหัวของอีเมลต้นฉบับ และคุณจะเห็นว่าที่อยู่ผู้ส่งคือ IPV6 ซึ่งหมายความว่า IPV6 ได้รับการกำหนดค่าเรียบร้อยแล้ว