|       ?pD?l?8?ws?8(L佌?ev???p???]  
<ul>
<li>0: Laporkan hasil pengesahan untuk semua mesej</li>
<li>1: Hanya laporkan mesej yang gagal pengesahan</li>
<li>d: Hanya laporkan kegagalan pengesahan nama domain</li>
<li>s: hanya laporkan kegagalan pengesahan SPF</li>
<li>l: Hanya laporkan kegagalan pengesahan DKIM</li>
</ul>
<h3>rua &amp; ruf</h3>
<ul>
<li>rua (URI pelaporan untuk laporan Agregat): Alamat e-mel untuk menerima laporan agregat</li>
<li>ruf (Melaporkan URI untuk laporan Forensik): alamat e-mel untuk menerima laporan terperinci</li>
</ul>
<h2>Tambahkan rekod MX untuk memajukan e-mel ke Google Mail</h2>
<p>Oleh kerana saya tidak menemui peti mel korporat percuma yang menyokong alamat universal (Catch-All, boleh menerima sebarang e-mel yang dihantar ke nama domain ini, tanpa sekatan pada awalan), saya menggunakan chasquid untuk memajukan semua e-mel ke peti mel Gmail saya.</p>    Z?I?`O???J??<?ۜc(?ƀ?0??'??   
<p>Dalam perkara berikut, saya akan mengambil VPS Contabo sebagai contoh untuk menunjukkan cara membina pelayan mel anda sendiri.</p>    6???ZE?k߀P???T???Ӡ??y?S??   
<h2>Konfigurasikan Tandatangan E-mel DKIM</h2>
<p>DKIM digunakan untuk menghantar tandatangan e-mel untuk mengelakkan surat daripada dianggap sebagai spam.</p>    ?f=??9M????,??ƿ?wɨ"&aj?l??S   
<p><code>v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all</code></p>    	z??????	9?#.??Oœ?2J@u.?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp" alt="" /></p>    
 	_??8????*??7Jm?j?7??.X?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp" alt="" /></p>    v??H??v-Hv????W?;?|??Kn-???'   
<p>Buat gudang persendirian dahulu</p>    ?|=?.??2?^??w?j6??}Y'?Ϩ$?pe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp" alt="" /></p>    B??$??eb??u??`V???e???4?)?   
<p>Harap maklum bahawa saya telah <code>include:_spf.google.com</code> di sini, kerana saya akan mengkonfigurasi <code>i@user.tax</code> sebagai alamat penghantaran dalam peti mel Google kemudian.</p>    E?????<??ܶ9??????<lJ?gP??;?诼   
<p><code>*</code> menunjukkan semua e-mel, <code>i</code> ialah awalan alamat e-mel pengguna penghantar yang dibuat di atas. Untuk memajukan mel, setiap pengguna perlu menambah baris.</p>    ???+&?gI??E??:-?TE?R???^?DG?ض??   
<p>Jika anda memilih Euro sebagai mata wang pembelian, harganya akan lebih murah (pelayan dengan memori 8GB dan 4 CPU berharga kira-kira 529 yuan setahun, dan yuran pemasangan permulaan adalah percuma selama satu tahun).</p>    ?Z????x?2?+ճGh??RA2?4???C|?   
<h2>Hantar e-mel ke i@user.tax dengan Google Mail</h2>
<p>Selepas Google Mail menerima mel, adalah wajar untuk membalas dengan <code>i@user.tax</code> dan bukannya i.user.tax@gmail.com.</p>    ?t???NJ?` ???????06@??Uѭ?3?x   
<img 0>
<p>Pengguna Cina, sila gunakan arahan berikut dan bahasa, zon waktu, dsb. akan ditetapkan secara automatik.</p>    ???O?P?????v??g?? ??!t?D???lbe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp" alt="" /></p>    $?@?w???N????4?i?{?P????}mr   
<h2>Hantar e-mel ujian untuk menyemak sama ada konfigurasi berjaya</h2>
<p>Masukkan <code>ops/chasquid</code></p>    ???? ?ۆ??c:[>$??????S??K?ض??k   
<img 4>
<p>Laluan untuk sijil yang dijana adalah seperti <code>/mnt/www/.acme.sh/123.com_ecc。</code></p>    %|????lG???;ت?{??Ǽ?E7 ??fe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp" alt="" /></p>    &??9? ?????????h???EN???|?̦Y   
<h2>Konfigurasi sistem Ubuntu</h2>
<p>Sistem pengendalian di sini ialah Ubuntu 22.04</p>    'u?-?-??:h*????*?2zg???@??U?   
<h3>Sahkan bahawa kata laluan ditetapkan dengan betul</h3>
<img 7>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp" alt="" /></p>    '????_yU?j??????!???????2???   
<p>Awan awam yang biasa digunakan telah menyekat port ini secara lalai, dan ia mungkin boleh dibuka dengan mengeluarkan perintah kerja, tetapi ia sangat menyusahkan.</p>    (???2?T?G??U?=?c5??????#d??   
<p>Kemudian tambah rekod MX (saya menunjuk terus ke alamat nama domain terbalik di sini, seperti yang ditunjukkan dalam baris pertama dalam rajah di bawah).</p>    )?U9ؾ1?a?'?R0]?*?Jo???v??21z   
<img 1>
<h3>Contabo membolehkan IPV6</h3>
<p>Dayakan IPV6 supaya SMTP juga boleh menghantar e-mel dengan alamat IPV6.</p>    )Q???VmV;u?????ͽ8B?	
L| ?z   
    *&?]p/?<WO?-?I??\??B?x?9#?!]   
<p>Edit <code>conf/chasquid/domains/user.tax/aliases</code> , tetapkan peti mel pemajuan</p>    ,'? ?/a??Lޣ?Xf{????0??K? ?+   
<p>Ubah suai atau tambah baris berikut</p>    2?5ǜO\?=???z-??????d?????*oFP?+   
<p>Kandungannya adalah seperti berikut</p>    2?I*<kucX1Nկ??*?VFr?S?;dJޱx??   
<p>Selepas menetapkan nama domain terbalik, ingat untuk mengkonfigurasi resolusi hadapan nama domain ipv4 dan ipv6 ke pelayan.</p>    5?-??ϸ?'?
W *k2zfF7?lX^?&?GJ???   
<p>Dengan cara ini, kami telah menyelesaikan penubuhan pelayan mel SMTP dan pada masa yang sama menggunakan Google Mail untuk menghantar dan menerima e-mel.</p>    6%p4??g5?+f???m.?i\?Y?9x??TA 6   
<p>Kemudian klik &quot;Tunjukkan E-mel Asal&quot;</p>    63?g?:??X???C@?Q????Doe:?<:?H?{m   
<img 8>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp" alt="" /></p>    9ڕ?O/;??9??cƷ??v>?G???cP?-?R   
<p>Keadaan operasi biasa adalah seperti yang ditunjukkan dalam rajah di bawah</p>    =E?f?o???I?????????F,??x?>???c   
<p>Menetapkan nama domain terbalik boleh menghalang e-mel daripada dikenal pasti sebagai spam.</p>    ?O?-B???-???[,-????Q?a?iT#@o?m0   
<p><code>v=spf1 a:smtp.user.tax ~all</code></p>    A?????T?3|7c?b?ve?B?"_?
??r?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp" alt="" /></p>    F?Ra9/]???I^??@i??????0G??n   
<p>Kami menggunakan <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> untuk menjana sijil.</p>    G|Tۍ?։0?a??????g??$??;??jC?   <h1>Bina pelayan penghantaran mel SMTP anda sendiri</h1>
<h2>mukadimah</h2>
<p>SMTP boleh membeli terus perkhidmatan daripada vendor awan, seperti:</p>    M?XOqh?N_jw?W?y6o?'?E(!:??????   
<p>Selepas arahan berjalan dengan jayanya, anda akan digesa untuk menetapkan rekod DKIM (seperti yang ditunjukkan di bawah).</p>    Q<qV???dB=6U????v?=??M?w\TMee   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp" alt="" /></p>    U?3i?O??捣~?z????z??x.????]e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp" alt="" /></p>    V	?????+t???^?j??s???}?HY'??   
<p>Apabila mel diterima, pelayan penerima akan melakukan analisis nama domain terbalik pada alamat IP pelayan penghantaran untuk mengesahkan sama ada pelayan penghantar mempunyai nama domain terbalik yang sah.</p>    W0?!?'{?'??[p???7Xr%?l????????iH?   
<h2>Bina pelayan SMTP dengan chasquid</h2>
<p><a href="https://github.com/albertito/chasquid">chasquid</a> ialah pelayan SMTP sumber terbuka yang ditulis dalam bahasa Go.</p>    W?SJ?۸Ͽ??mA?C}??\̮r?PNo?+v36   
<p>Maksud setiap parameter adalah seperti berikut</p>    X[????
ҋa??e^??[=?e?A]d}~0???   
<p>Apabila membuat pesanan, komen <code>prefer AMD</code> , dan pelayan dengan CPU AMD akan mempunyai prestasi yang lebih baik.</p>    X???߶g=????{?????????d??5/p?   
<p>Selepas konfigurasi berjaya, anda boleh menggunakan <code>curl 6.ipw.cn</code> untuk melihat alamat ipv6 rangkaian luaran anda.</p>    Yn??B_??W9?9?nJGYV? ?Y=@???Gb???   
<h2>Konfigurasi DNS DMARC</h2>
<p>DMARC ialah singkatan daripada (Pengesahan, Pelaporan &amp; Pematuhan Mesej berasaskan Domain).</p>    `Q8Y?7??,L???(X??Ʋ&D	??????   
<p>Sebagai pengganti program pelayan mel purba seperti Postfix dan Sendmail, chasquid lebih ringkas dan mudah digunakan, dan ia juga lebih mudah untuk pembangunan sekunder.</p>    `?G?4?Xj????}?8?a?????F??ay$?]?K   
<p>Di sini, saya cadangkan <a href="https://contabo.com">Contabo</a> .</p>    a?# Rr?ͥ?c???*??>?As1?>p?)}???2   
<p>Struktur direktori adalah seperti berikut:</p>    e}?????e˃?h??_???Y-?
>??َb^UĜ   
<h3>DKIM</h3>
<p>Seperti yang ditunjukkan dalam rajah di bawah, halaman mel asal Gmail memaparkan DKIM, yang bermaksud bahawa konfigurasi DKIM berjaya.</p>    g?0?Q?-k-B?????j-???㻒???~On?(   
<p>Kemudian mulakan semula pelayan.</p>    j?Q????mK?????W???&?P?!?8?lhv   
<h2>Lihat status perkhidmatan &amp; log</h2>
<p><code>systemctl status chasquid</code> Lihat status perkhidmatan.</p>    kr
5?????4[82O?%??,?J	wQe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp" alt="" /></p>    m??O?fFȟ?%?~,b?Sn?37}???1B?{}   
<h2>Pemilihan pelayan</h2>
<p>Pelayan SMTP yang dihoskan sendiri memerlukan IP awam dengan port 25, 456 dan 587 terbuka.</p>    pE?????,?????@??*M#??h???)?   
<p>Masukkan ops gudang konfigurasi, jalankan <code>./ssl.sh</code> , dan folder <code>conf</code> akan dibuat dalam direktori atas.</p>    t?̏s?@7??B? V???v?ݯ?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp" alt="" /></p>    y?	??U,Ճ?&?;ks]?f????-BuW???   
<p>Kemudian jalankan <code>./ssl.sh 123.com</code> untuk menjana sijil <code>123.com</code> dan <code>*.123.com</code> untuk nama domain anda.</p>    y?o??y?|?uভ?!?O???b?Vʕ_'?z???   
<p>Selepas menambah pengguna, <code>chasquid/domains/user.tax/users</code> akan dikemas kini, ingat untuk menyerahkannya ke gudang.</p>    zEz?k?.'ۆ?qo??CӚx? ??mL!vYe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp" alt="" /></p>    zI?c?H???lbSi̕͡9A?ԣ??????#e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp" alt="" /></p>    |?L?65x????????:80??=%??
P1 ?g   
<p>Sebagai contoh, saya menyandarkan folder conf kepada proses github saya sendiri seperti berikut</p>    #???Z?!?{)?#*mm??Ӣ?!S?<?????   
<p>Ia digunakan untuk menangkap lantunan SPF (mungkin disebabkan oleh ralat konfigurasi, atau orang lain berpura-pura menjadi anda untuk menghantar spam).</p>    ?n??? H+?B68?;"???)?S??¼̝ώ   
<p>Contabo ialah penyedia pengehosan yang berpangkalan di Munich, Jerman, ditubuhkan pada tahun 2003 dengan harga yang sangat kompetitif.</p>    ??w??????B?EG????%>??h???MnM?S   
<p>Cuma tambahkan rekod TXT pada DNS anda (seperti yang ditunjukkan di bawah).</p>    ?ϱ@W?a?t#?/d????u?D?v??Y??e0/?   
<h3>penyulitan standard TLS</h3>
<p>Seperti yang ditunjukkan dalam rajah di bawah, terdapat kunci kecil ini, yang bermaksud bahawa sijil SSL telah berjaya didayakan.</p>    ?>?vH??o?? ?Ap
p???f?e"??ve   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp" alt="" /></p>    ?sO?s?o?NR??Ac?G8??>?6cǈ(w?g   
<p>Menambah rekod SPF boleh menghalang e-mel daripada dikenal pasti sebagai spam sebanyak mungkin.</p>    ? >v?Ii?J???[F)??F?f?B0O????  
<ul>
<li>tiada: Tiada tindakan diambil, hanya hasil pengesahan dihantar semula kepada pengirim melalui mekanisme pelaporan e-mel.</li>
<li>Kuarantin: Letakkan mel yang belum lulus pengesahan ke dalam folder spam, tetapi tidak akan menolak mel secara langsung.</li>
<li>tolak: Tolak terus e-mel yang gagal pengesahan.</li>
</ul>
<h3>fo (Pilihan Kegagalan)</h3>
<p>Menentukan jumlah maklumat yang dikembalikan oleh mekanisme pelaporan. Ia boleh ditetapkan kepada salah satu daripada nilai berikut:</p>    ?^?k? A??]t??????W?Ty?Ubsw?[  
<ul>
<li><a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html">Amazon SES SMTP</a></li>
<li><a href="https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods">Tolak e-mel awan Ali</a></li>
</ul>
<p>Anda juga boleh membina pelayan mel anda sendiri - penghantaran tanpa had, kos keseluruhan yang rendah.</p>    ?)??~z?uE???R3Q???????e?X?2ϖ*?   
<h3>p (Dasar)</h3>
<p>Menunjukkan cara mengendalikan e-mel yang gagal pengesahan SPF (Rangka Kerja Dasar Penghantar) atau DKIM (Mel Pengenalpastian DomainKeys). Parameter p boleh ditetapkan kepada salah satu daripada tiga nilai:</p>    ?i??
0?]??P????u???)R??甄A+??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp" alt="" /></p>    ??|?T?#]1g?8D??N???????>?Z??Ǒ?   
<h2>Terbalikkan konfigurasi nama domain</h2>
<p>Nama domain terbalik adalah untuk membolehkan alamat IP diselesaikan dengan nama domain yang sepadan.</p>    ??,3??.o?".???@-?"?:?j?*??H{??   
<p>Lawati <a href="https://my.contabo.com/rdns">https://my.contabo.com/rdns</a> dan konfigurasikan seperti yang ditunjukkan di bawah</p>    ????8???AіKO?t.?!TN߂A?A??hv?   
<p>Untuk kemudahan, saya meletakkan pemasangan dan konfigurasi sistem perisian ubuntu dalam <a href="https://github.com/user-tax-dev/os/tree/main/ubuntu">github.com/user-tax-dev/os/tree/main/ubuntu</a> .</p>    ?ֲ?b?_[??X*:(?9???? Gઠ?0"??   
<p>Jika pelayan penghantar tidak mempunyai nama domain terbalik atau jika nama domain terbalik tidak sepadan dengan alamat IP pelayan penghantar, pelayan penerima mungkin mengenali e-mel sebagai spam atau menolaknya.</p>    ?+J??sun?ž${??o7?t'?=s	^B?I7   
<img 9>
<p>Maksud parameter adalah seperti berikut</p>    ?ڨ`?e?-???9aQw?>??z??6?j??T!??   
<p>Larian pertama akan memasang <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> secara automatik dan menambah tugas berjadual untuk pembaharuan automatik. <code>crontab -l</code> dapat melihat bahawa terdapat baris seperti berikut.</p>    ???'U?V,?5`s?D%?y??A?W]???|\??   
<h2>Klon ops repositori konfigurasi</h2>
<img 3>
<h2>Hasilkan sijil SSL percuma untuk nama domain anda</h2>
<p>Menghantar mel memerlukan sijil SSL untuk penyulitan dan tandatangan.</p>    ?y5M<r?[Yd?_ţ1B??P????ڥva?   
<p>Jalankan <code>./chasquid/init.sh 123.com</code> akan dipasang secara automatik dengan satu klik (ganti 123.com dengan nama domain penghantaran anda).</p>    ??Z\????Ƥu?bz??D?a????p'??FF   
<p>acme.sh ialah alat tandatangan sijil automatik sumber terbuka,</p>    ?\Kmڔ&EY?7?(mx?u???b?L?5??   
<p>Pembaharuan sijil akan memanggil skrip <code>conf/reload/123.com.sh</code> , edit skrip ini, anda boleh menambah arahan seperti <code>nginx -s reload</code> untuk menyegarkan cache sijil aplikasi berkaitan.</p>    ?e???[e??@??uO?????%?2?	zR?   
<p>Akhir sekali, ia boleh ditetapkan sebagai alamat penghantar lalai (bersama-sama dengan pilihan untuk membalas dengan alamat yang sama).</p>    ?y????n?p?b?;?F\{????k7h? 0????   
<img 2>
<p>Susulan dengan <a href="https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/">tutorial contabo: Menambah sambungan IPv6 pada pelayan anda</a></p>    ?9Y'?8}ߢ????-?`?2n??
p?Fa$~?   
<p>Semak Diterima dalam pengepala e-mel asal, dan anda boleh melihat bahawa alamat pengirim ialah IPV6, yang bermaksud bahawa IPV6 juga berjaya dikonfigurasikan.</p>    ??<UY????+?F̽^@;??ku????6xe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp" alt="" /></p>    ?????c??Y???!??P??w(l????5??2???   
<p>Jika pelayan pada ssh memaparkan <code>Welcome to TinyCore 13!</code> (seperti yang ditunjukkan dalam rajah di bawah), ia bermakna sistem belum dipasang lagi. Sila putuskan sambungan ssh dan tunggu beberapa minit untuk log masuk semula.</p>    ??ȫ?[k'y^?X??_???J??ݵ?*#T?D?   
<p><strong>Jika anda mempunyai peti mel perniagaan berbayar anda sendiri, sila jangan ubah suai MX dan langkau langkah ini.</strong></p>    ??̟??q9JW?ڞG?>??C?
fsHa?j?_   
<p>Kemudian, masukkan kod pengesahan yang diterima oleh e-mel yang telah dimajukan kepada.</p>    ?Ό}T)?>E=?c?-??v?its????Pބ?s   
<p>Saya mengesyorkan membeli daripada hos yang membuka port ini dan menyokong penyediaan nama domain terbalik.</p>    ?U???!m)f0??uΣG?o7?HVtS?????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp" alt="" /></p>    ???m? e7]Lo???_b??C%??>???X??   
<h2>Sandarkan conf ke repositori git</h2>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp" alt="" /></p>    ???Y??'?Ȏ?)??̶A/;/???;??:`ŗx   
<p>Adalah disyorkan untuk menggunakan Gmail untuk menerima e-mel ujian untuk menyemak sama ada konfigurasi berjaya.</p>    ?=???G?JzI>ʥ?'???`??P`F?Ӯ??1   
<p>Tambahkan rekod TXT <code>_dmarc</code> ,</p>    ??Я?ߠuOgr??#Y(?\?3?9nֿ?z?~   
<p>Apabila <code>Welcome to Ubuntu 22.04.1 LTS</code> muncul, pemulaan selesai dan anda boleh meneruskan langkah berikut.</p>    ????*Ao"`?,????Y??U?]SkӶp???1?   
<h2>DNS tambah rekod SPF</h2>
<p>SPF ( Rangka Kerja Dasar Pengirim ) ialah teknologi pengesahan e-mel yang digunakan untuk mencegah penipuan e-mel.</p>    ?;2??j?6???C??5=?&|?_x????;?b?,   
<p>SPF untuk <code>_spf.user.tax</code></p>    ?O?O??顾??l???s??l?7?6?{?z?~   
<p>kemudian lari</p>    ?Q?,?ir????u???d?wt;0?ZU?,X?M?6   
<p>Masukkan direktori conf dan serahkan ke gudang</p>    ?,?7??"?Ku?????2&un?Ir??]_?   
<p>Jalankan <code>direnv allow</code> untuk memasang kebergantungan (direnv telah dipasang dalam proses permulaan satu kekunci sebelumnya dan cangkuk telah ditambahkan pada cangkerang)</p>    ?jV?????ǔ????5??=L???c??t?VH   
<p>Sebagai contoh, SPF <code>user.tax</code> adalah seperti berikut</p>    ƃ??0zn1?? ??BA??`>?k-?,\Z?   
<p>Edit <code>/etc/netplan/01-netcfg.yaml</code> , tambahkan beberapa baris seperti yang ditunjukkan dalam rajah di bawah (Fail konfigurasi lalai Contabo VPS sudah mempunyai baris ini, cuma nyahkomennya).</p>    ?_;?<̉f=Fx?  i???T??.?F?_??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp" alt="" /></p>    ?7?=???????d?bA??????????J+?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp" alt="" /></p>    ?tu????9? 4?????I0]о!???P?]   
<p>Jika pelayan nama domain anda tidak menyokong jenis SPF, cuma tambah rekod jenis TXT.</p>    ???Uk??vvJfQ???N??W?1?!?
dmP?   
<p>Selepas konfigurasi selesai, anda boleh menggunakan alamat e-mel lain untuk menghantar e-mel ke <code>i@user.tax</code> dan <code>any123@user.tax</code> untuk melihat sama ada anda boleh menerima e-mel dalam Gmail.</p>    ???}??YLrT???ݥ?ܗr??9՜	v   
<p><code>grep chasquid /var/log/syslog</code> atau <code>journalctl -xeu chasquid</code> boleh melihat log ralat.</p>    ?@Ә??S?A??u?q&? ?v?,*sgH??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp" alt="" /></p>    ?j?v$?k?C-??Bݦ??R?4??a?????>?   
<p>Lawati <a href="https://mail.google.com/mail/u/1/#settings/accounts">https://mail.google.com/mail/u/1/#settings/accounts</a> dan klik &quot;Tambah alamat e-mel lain&quot;.</p>    ?]?F?%?Y"?????_P?0????[M??Ke   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp" alt="" /></p>    ڜ? ??~?dЬ?^p"?}?y?43?	????V   
<p>Jika tidak, semak log chasquid ( <code>grep chasquid /var/log/syslog</code> ).</p>    ?0?F?b?????[6D???????s?
??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp" alt="" /></p>    ߮?B?D?J?%???]?^?P??????f??*   
<p>edit <code>/etc/sysctl.conf</code></p>    ??2???Ԟ3E,|??y???V??t??ߔ"9???@   
<p>Jalankan arahan berikut untuk memasang dengan satu klik.</p>    ?^????~?%?t?4	?@7?K?j w"??W?'   
<img 6>
<p>Boleh tambah penghantar</p>    ???^??PK??s??7<U????;w?Gf?=????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp" alt="" /></p>    ??N>??7]u????v_XI?[?s??k?of   
<p>Kemudian jalankan <code>systemctl restart chasquid</code> untuk memulakan semula perkhidmatan.</p>    ?>???u$R???Bu>??T??JO/S(7???   
<p>Cari pembekal DNS anda daripada <a href="https://github.com/acmesh-official/acme.sh/wiki/dnsapi">acme.sh dnsapi</a> , edit <code>conf/conf.sh</code> .</p>    ??,NN???DR????Dz?s??F??5ظqζ^   
<p>Di bawah, kami menunjukkan langkah demi langkah cara membina pelayan mel kami sendiri.</p>    ?ꁶn??w޶?ѭD????C?C)?@??B7??/   
<img 5>
<h2>Tambah penghantar</h2>
<p>lari</p>    ??"???gb??㪼+?lJZ?ۃ?]O;??QO?   
<ul>
<li>pengguna: nama pengguna SMTP</li>
<li>pas: kata laluan SMTP</li>
<li>kepada: penerima</li>
</ul>
<p>Anda boleh menghantar e-mel ujian.</p>    ???]?D(#?????!v??8ꀂ?>Z?@L%?   
<p>Ia mengesahkan identiti penghantar mel dengan menyemak sama ada alamat IP penghantar sepadan dengan rekod DNS bagi nama domain yang didakwanya, menghalang penipu daripada menghantar e-mel palsu.</p>    ??:???颕?m?ç???n???M蠘Ce   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp" alt="" /></p>    ??^?/f??`???M-}??zú???o($F?p??   
<h2>Edit nama hos chasquid.conf</h2>
<p>Ubah suai <code>conf/chasquid/chasquid.conf</code> kepada nilai nama domain terbalik.</p>    ????k<?I?m3i??K?O?*Oy?;L??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp" alt="" /></p>    ?[??r.p/܅ ???Q?	??G"2?/?W   
<h3>[Pilihan] Mulakan persekitaran pembangunan</h3>
<p>Langkah ini adalah pilihan.</p>