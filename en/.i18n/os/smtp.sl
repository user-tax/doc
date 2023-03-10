|       ?pD?l?8?ws?8(L佌?ev???p????  
<ul>
<li>0: Poročilo o rezultatih preverjanja za vsa sporočila</li>
<li>1: Prijavite samo sporočila, ki ne prestanejo preverjanja</li>
<li>d: poročajte samo o napakah pri preverjanju imena domene</li>
<li>s: poročajte samo o napakah pri preverjanju SPF</li>
<li>l: Sporoči samo napake pri preverjanju DKIM</li>
</ul>
<h3>rua &amp; ruf</h3>
<ul>
<li>rua (URI poročanja za združena poročila): E-poštni naslov za prejemanje združenih poročil</li>
<li>ruf (URI poročanja za forenzična poročila): e-poštni naslov za prejemanje podrobnih poročil</li>
</ul>
<h2>Dodajte zapise MX za posredovanje e-pošte v Google Mail</h2>
<p>Ker nisem mogel najti brezplačnega službenega poštnega predala, ki podpira univerzalne naslove (Catch-All, lahko prejema vsa e-poštna sporočila, poslana na to ime domene, brez omejitev glede predpon), sem uporabil chasquid za posredovanje vseh e-poštnih sporočil v svoj nabiralnik Gmail.</p>    Z?I?`O???J??<?ۜc(?ƀ?0??'?o   
<p>V nadaljevanju bom vzel Contabojev VPS kot primer, da pokažem, kako zgraditi lasten poštni strežnik.</p>    6???ZE?k߀P???T???Ӡ??y?S??   
<h2>Konfigurirajte DKIM za e-poštni podpis</h2>
<p>DKIM se uporablja za pošiljanje e-poštnih podpisov, da se pisma ne obravnavajo kot neželena pošta.</p>    ?f=??9M????,??ƿ?wɨ"&aj?l??S   
<p><code>v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all</code></p>    	z??????	9?#.??Oœ?2J@u.?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp" alt="" /></p>    
 	_??8????*??7Jm?j?7??.X?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp" alt="" /></p>    v??H??v-Hv????W?;?|??Kn-???-   
<p>Najprej ustvarite zasebno skladišče</p>    ?|=?.??2?^??w?j6??}Y'?Ϩ$?pe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp" alt="" /></p>    B??$??eb??u??`V???e???4?)?   
<p>Upoštevajte, da imam tukaj <code>include:_spf.google.com</code> , ker bom pozneje konfiguriral <code>i@user.tax</code> kot naslov za pošiljanje v Googlovem nabiralniku.</p>    E?????<??ܶ9??????<lJ?gP??;????   
<p><code>*</code> označuje vsa e-poštna sporočila, <code>i</code> je predpona e-poštnega naslova uporabnika pošiljatelja, ustvarjenega zgoraj. Za posredovanje pošte mora vsak uporabnik dodati vrstico.</p>    ???+&?gI??E??:-?TE?R???^?DG?ض??   
<p>Če kot valuto nakupa izberete evro, bo cena nižja (strežnik z 8 GB pomnilnika in 4 procesorji stane približno 529 juanov na leto, začetna namestitev pa je brezplačna eno leto).</p>    ?Z????x?2?+ճGh??RA2?4???C|?   
<h2>Pošljite e-pošto na i@user.tax z Google Mail</h2>
<p>Ko Google Mail prejme pošto, je naravno, da želite odgovoriti z <code>i@user.tax</code> namesto z i.user.tax@gmail.com.</p>    ?t???NJ?` ???????06@??Uѭ?3??   
<img 0>
<p>Kitajski uporabniki, namesto tega uporabite naslednji ukaz in jezik, časovni pas itd. bodo samodejno nastavljeni.</p>    ???O?P?????v??g?? ??!t?D???lbe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp" alt="" /></p>    $?@?w???N????4?i?{?P????}my   
<h2>Pošljite testno e-pošto, da preverite, ali je konfiguracija uspešna</h2>
<p>Vnesite <code>ops/chasquid</code></p>    ???? ?ۆ??c:[>$??????S??K?ض??k   
<img 4>
<p>Pot za ustvarjeno potrdilo je nekaj podobnega <code>/mnt/www/.acme.sh/123.com_ecc。</code></p>    %|????lG???;ت?{??Ǽ?E7 ??fe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp" alt="" /></p>    &??9? ?????????h???EN???|?̦V   
<h2>Konfiguracija sistema Ubuntu</h2>
<p>Operacijski sistem tukaj je Ubuntu 22.04</p>    'u?-?-??:h*????*?2zg???@??U?   
<h3>Preverite, ali je geslo pravilno nastavljeno</h3>
<img 7>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp" alt="" /></p>    '????_yU?j??????!???????2???   
<p>Običajno uporabljeni javni oblaki so ta vrata privzeto blokirali in morda jih je mogoče odpreti z izdajo delovnega naloga, vendar je navsezadnje zelo težavno.</p>    (???2?T?G??U?=?c5??????#d??   
<p>Nato dodajte zapis MX (tukaj pokažem neposredno na naslov imena povratne domene, kot je prikazano v prvi vrstici na spodnji sliki).</p>    )?U9ؾ1?a?'?R0]?*?Jo???v??21t   
<img 1>
<h3>Contabo omogoča IPV6</h3>
<p>Omogočite IPV6, da lahko SMTP pošilja tudi e-pošto z naslovi IPV6.</p>    )Q???VmV;u?????ͽ8B?	
L| ?z   
    *&?]p/?<WO?-?I??\??B?x?9#?!n   
<p>Uredite <code>conf/chasquid/domains/user.tax/aliases</code> , nastavite poštni predal za posredovanje</p>    ,'? ?/a??Lޣ?Xf{????0??K? ?0   
<p>Spremenite ali dodajte naslednje vrstice</p>    2?5ǜO\?=???z-??????d?????*oFP?   
<p>Vsebina je naslednja</p>    2?I*<kucX1Nկ??*?VFr?S?;dJޱx??   
<p>Po nastavitvi povratnega imena domene ne pozabite konfigurirati posredovane ločljivosti imena domene ipv4 in ipv6 na strežnik.</p>    5?-??ϸ?'?
W *k2zfF7?lX^?&?GJ???   
<p>Na ta način smo zaključili vzpostavitev poštnega strežnika SMTP in hkrati uporabljamo Google Mail za pošiljanje in prejemanje elektronske pošte.</p>    6%p4??g5?+f???m.?i\?Y?9x??TA 2   
<p>Nato kliknite »Pokaži izvirno e-pošto«</p>    63?g?:??X???C@?Q????Doe:?<:?H?{m   
<img 8>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp" alt="" /></p>    9ڕ?O/;??9??cƷ??v>?G???cP?-?A   
<p>Stanje normalnega delovanja je prikazano na spodnji sliki</p>    =E?f?o???I?????????F,??x?>???|   
<p>Če nastavite ime obratne domene, lahko preprečite, da bi bila e-poštna sporočila prepoznana kot vsiljena pošta.</p>    ?O?-B???-???[,-????Q?a?iT#@o?m0   
<p><code>v=spf1 a:smtp.user.tax ~all</code></p>    A?????T?3|7c?b?ve?B?"_?
??r?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp" alt="" /></p>    F?Ra9/]???I^??@i??????0G??l   
<p>Za ustvarjanje potrdil uporabljamo <a href="https://github.com/acmesh-official/acme.sh">acme.sh.</a></p>    G|Tۍ?։0?a??????g??$??;??jC?   <h1>Zgradite svoj strežnik za pošiljanje pošte SMTP</h1>
<h2>preambula</h2>
<p>SMTP lahko neposredno kupi storitve od prodajalcev oblakov, kot so:</p>    M?XOqh?N_jw?W?y6o?'?E(!:?????e   
<p>Ko se ukaz uspešno izvede, boste pozvani, da nastavite zapis DKIM (kot je prikazano spodaj).</p>    Q<qV???dB=6U????v?=??M?w\TMee   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp" alt="" /></p>    U?3i?O??捣~?z????z??x.????]e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp" alt="" /></p>    V	?????+t???^?j??s???}?HY'??   
<p>Ko je pošta prejeta, bo prejemni strežnik izvedel analizo povratnega imena domene na naslovu IP strežnika pošiljatelja, da potrdi, ali ima strežnik pošiljatelj veljavno ime povratne domene.</p>    W0?!?'{?'??[p???7Xr%?l????????iH?   
<h2>Zgradite strežnik SMTP s chasquid</h2>
<p><a href="https://github.com/albertito/chasquid">chasquid</a> je odprtokodni strežnik SMTP, napisan v jeziku Go.</p>    W?SJ?۸Ͽ??mA?C}??\̮r?PNo?+v3,   
<p>Pomen vsakega parametra je naslednji</p>    X[????
ҋa??e^??[=?e?A]d}~0??q   
<p>Pri oddaji naročila navedite <code>prefer AMD</code> in strežnik s CPE AMD bo imel boljšo zmogljivost.</p>    X???߶g=????{?????????d??5/p?   
<p>Ko je konfiguracija uspešna, lahko uporabite <code>curl 6.ipw.cn</code> za ogled naslova ipv6 vašega zunanjega omrežja.</p>    Yn??B_??W9?9?nJGYV? ?Y=@???Gb???   
<h2>DNS konfiguracija DMARC</h2>
<p>DMARC je okrajšava za (Domain-based Message Authentication, Reporting &amp; Conformance).</p>    `Q8Y?7??,L???(X??Ʋ&D	??????   
<p>Kot nadomestek za stare programe poštnega strežnika, kot sta Postfix in Sendmail, je chasquid preprostejši in enostavnejši za uporabo, lažji pa je tudi za sekundarni razvoj.</p>    `?G?4?Xj????}?8?a?????F??ay$?]?E   
<p>Tukaj priporočam <a href="https://contabo.com">Contabo</a> .</p>    a?# Rr?ͥ?c???*??>?As1?>p?)}???'   
<p>Struktura imenika je naslednja:</p>    e}?????e˃?h??_???Y-?
>??َb^UĔ   
<h3>DKIM</h3>
<p>Kot je prikazano na spodnji sliki, izvirna poštna stran Gmaila prikazuje DKIM, kar pomeni, da je konfiguracija DKIM uspešna.</p>    g?0?Q?-k-B?????j-???㻒???~On?'   
<p>Nato znova zaženite strežnik.</p>    j?Q????mK?????W???&?P?!?8?lhz   
<h2>Oglejte si stanje storitve in dnevnike</h2>
<p><code>systemctl status chasquid</code> Oglejte si status storitve.</p>    kr
5?????4[82O?%??,?J	wQe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp" alt="" /></p>    m??O?fFȟ?%?~,b?Sn?37}???1B?{n   
<h2>Izbira strežnika</h2>
<p>Samostojni strežnik SMTP zahteva javni IP z odprtimi vrati 25, 456 in 587.</p>    pE?????,?????@??*M#??h???)?   
<p>Vnesite konfiguracijsko skladišče ops, zaženite <code>./ssl.sh</code> in mapa <code>conf</code> bo ustvarjena v zgornjem imeniku.</p>    t?̏s?@7??B? V???v?ݯ?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp" alt="" /></p>    y?	??U,Ճ?&?;ks]?f????-BuW???   
<p>Nato zaženite <code>./ssl.sh 123.com</code> , da ustvarite potrdila <code>123.com</code> in <code>*.123.com</code> za vaše ime domene.</p>    y?o??y?|?uভ?!?O???b?Vʕ_'?z???   
<p>Po dodajanju uporabnika bo <code>chasquid/domains/user.tax/users</code> posodobljen, ne pozabite ga poslati v skladišče.</p>    zEz?k?.'ۆ?qo??CӚx? ??mL!vYe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp" alt="" /></p>    zI?c?H???lbSi̕͡9A?ԣ??????#e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp" alt="" /></p>    |?L?65x????????:80??=%??
P1 ?N   
<p>Na primer, mapo conf varnostno kopiram v svoj proces github, kot sledi</p>    #???Z?!?{)?#*mm??Ӣ?!S?<?????   
<p>Uporablja se za zajemanje odklonov SPF (morda zaradi konfiguracijskih napak ali pa se nekdo drug pretvarja, da ste vi, da bi poslal vsiljeno pošto).</p>    ?n??? H+?B68?;"???)?S??¼̝?|   
<p>Contabo je ponudnik gostovanja s sedežem v Münchnu v Nemčiji, ustanovljen leta 2003 z zelo konkurenčnimi cenami.</p>    ??w??????B?EG????%>??h???MnM?D   
<p>Samo dodajte zapis TXT v svoj DNS (kot je prikazano spodaj).</p>    ?ϱ@W?a?t#?/d????u?D?v??Y??e0/?   
<h3>Standardno šifriranje TLS</h3>
<p>Kot je prikazano na spodnji sliki, obstaja ta majhna ključavnica, kar pomeni, da je bilo potrdilo SSL uspešno omogočeno.</p>    ?>?vH??o?? ?Ap
p???f?e"??ve   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp" alt="" /></p>    ?sO?s?o?NR??Ac?G8??>?6cǈ(w?{   
<p>Če dodate zapise SPF, lahko čim bolj preprečite, da bi bila e-poštna sporočila prepoznana kot vsiljena pošta.</p>    ? >v?Ii?J???[F)??F?f?B0O???
  
<ul>
<li>brez: Izvedeno ni bilo nobeno dejanje, samo rezultat preverjanja se vrne pošiljatelju prek mehanizma za poročanje po e-pošti.</li>
<li>Karantena: pošto, ki ni prestala preverjanja, postavite v mapo z vsiljeno pošto, vendar je ne boste neposredno zavrnili.</li>
<li>zavrni: Neposredno zavrnite e-poštna sporočila, ki ne prestanejo preverjanja.</li>
</ul>
<h3>fo (Možnosti napake)</h3>
<p>Podaja količino informacij, ki jih vrne mehanizem poročanja. Nastavite ga lahko na eno od naslednjih vrednosti:</p>    ?^?k? A??]t??????W?Ty?Ubsw?[  
<ul>
<li><a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html">Amazon SES SMTP</a></li>
<li><a href="https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods">Ali potisna e-pošta v oblak</a></li>
</ul>
<p>Prav tako lahko zgradite svoj poštni strežnik - neomejeno pošiljanje, nizki skupni stroški.</p>    ?)??~z?uE???R3Q???????e?X?2ϖ*?   
<h3>p (Politika)</h3>
<p>Označuje, kako ravnati z e-pošto, ki ne prestane preverjanja SPF (Sender Policy Framework) ali DKIM (DomainKeys Identified Mail). Parameter p je mogoče nastaviti na eno od treh vrednosti:</p>    ?i??
0?]??P????u???)R??甄A+??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp" alt="" /></p>    ??|?T?#]1g?8D??N???????>?Z??Ǒ?   
<h2>Povratna konfiguracija imena domene</h2>
<p>Obratno ime domene omogoča, da se naslov IP razreši v ustrezno ime domene.</p>    ??,3??.o?".???@-?"?:?j?*??H{??   
<p>Obiščite <a href="https://my.contabo.com/rdns">https://my.contabo.com/rdns</a> in konfigurirajte, kot je prikazano spodaj</p>    ????8???AіKO?t.?!TN߂A?A??hv?   
<p>Zaradi udobja sem namestitev in sistemsko konfiguracijo programske opreme ubuntu postavil na <a href="https://github.com/user-tax-dev/os/tree/main/ubuntu">github.com/user-tax-dev/os/tree/main/ubuntu</a> .</p>    ?ֲ?b?_[??X*:(?9???? Gઠ?0"??   
<p>Če strežnik pošiljatelj nima imena povratne domene ali če se ime povratne domene ne ujema z naslovom IP strežnika pošiljatelja, lahko sprejemni strežnik prepozna e-pošto kot neželeno pošto ali jo zavrne.</p>    ?+J??sun?ž${??o7?t'?=s	^B?I-   
<img 9>
<p>Pomen parametrov je naslednji</p>    ?ڨ`?e?-???9aQw?>??z??6?j??T!??   
<p>Prvi zagon bo samodejno namestil <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> in dodal načrtovano nalogo za samodejno obnovitev. <code>crontab -l</code> lahko vidim, da obstaja taka vrstica, kot sledi.</p>    ???'U?V,?5`s?D%?y??A?W]???|\??   
<h2>Klonirajte ops konfiguracijskega repozitorija</h2>
<img 3>
<h2>Ustvarite brezplačen SSL certifikat za vaše ime domene</h2>
<p>Pošiljanje pošte zahteva potrdilo SSL za šifriranje in podpisovanje.</p>    ?y5M<r?[Yd?_ţ1B??P????ڥva?   
<p>Zaženi <code>./chasquid/init.sh 123.com</code> bo nameščen samodejno z enim klikom (zamenjaj 123.com z imenom domene pošiljatelja).</p>    ??Z\????Ƥu?bz??D?a????p'??FM   
<p>acme.sh je odprtokodno avtomatizirano orodje za podpisovanje potrdil,</p>    ?\Kmڔ&EY?7?(mx?u???b?L?5??   
<p>Obnova potrdila bo poklicala skript <code>conf/reload/123.com.sh</code> , uredite ta skript, lahko dodate ukaze, kot je <code>nginx -s reload</code> , da osvežite predpomnilnik potrdil sorodnih aplikacij.</p>    ?e???[e??@??uO?????%?2?	zRu   
<p>Končno ga lahko nastavite kot privzeti naslov pošiljatelja (skupaj z možnostjo odgovora z istim naslovom).</p>    ?y????n?p?b?;?F\{????k7h? 0????   
<img 2>
<p>Nadaljujte z <a href="https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/">vadnico contabo: Dodajanje povezave IPv6 v vaš strežnik</a></p>    ?9Y'?8}ߢ????-?`?2n??
p?Fa$~?   
<p>Preverite Prejeto v glavi izvirnega e-poštnega sporočila in videli boste, da je naslov pošiljatelja IPV6, kar pomeni, da je tudi IPV6 uspešno konfiguriran.</p>    ??<UY????+?F̽^@;??ku????6xe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp" alt="" /></p>    ?????c??Y???!??P??w(l????5??2???   
<p>Če strežnik na ssh prikaže <code>Welcome to TinyCore 13!</code> (kot je prikazano na spodnji sliki), to pomeni, da sistem še ni bil nameščen. Prekinite povezavo ssh in počakajte nekaj minut, da se znova prijavite.</p>    ??ȫ?[k'y^?X??_???J??ݵ?*#T?Ds   
<p><strong>Če imate svoj plačljivi poslovni nabiralnik, ne spreminjajte MX in preskočite ta korak.</strong></p>    ??̟??q9JW?ڞG?>??C?
fsHa?j?c   
<p>Nato vnesite kodo za preverjanje, ki ste jo prejeli po e-pošti, ki je bila posredovana na.</p>    ?Ό}T)?>E=?c?-??v?its????Pބ?l   
<p>Priporočam nakup pri gostitelju, ki ima ta vrata odprta in podpira nastavitev povratnih imen domen.</p>    ?U???!m)f0??uΣG?o7?HVtS?????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp" alt="" /></p>    ???m? e7]Lo???_b??C%??>???X??   
<h2>Varnostno kopirajte conf v repozitorij git</h2>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp" alt="" /></p>    ???Y??'?Ȏ?)??̶A/;/???;??:`ŗ?   
<p>Priporočljivo je, da uporabite Gmail za prejemanje testnih e-poštnih sporočil, da preverite, ali so konfiguracije uspešne.</p>    ?=???G?JzI>ʥ?'???`??P`F?Ӯ??/   
<p>Dodajte zapis TXT <code>_dmarc</code> ,</p>    ??Я?ߠuOgr??#Y(?\?3?9nֿ?z??   
<p>Ko se pojavi <code>Welcome to Ubuntu 22.04.1 LTS</code> , je inicializacija končana in lahko nadaljujete z naslednjimi koraki.</p>    ????*Ao"`?,????Y??U?]SkӶp???1?   
<h2>DNS doda zapis SPF</h2>
<p>SPF (Sender Policy Framework) je tehnologija za preverjanje e-pošte, ki se uporablja za preprečevanje goljufij po e-pošti.</p>    ?;2??j?6???C??5=?&|?_x????;?b?)   
<p>SPF za <code>_spf.user.tax</code></p>    ?O?O??顾??l???s??l?7?6?{?z?~   
<p>potem teči</p>    ?Q?,?ir????u???d?wt;0?ZU?,X?M?4   
<p>Vnesite imenik conf in oddajte v skladišče</p>    ?,?7??"?Ku?????2&un?Ir??]_?   
<p>Zaženi <code>direnv allow</code> namestitev odvisnosti (direnv je bil nameščen v prejšnjem procesu inicializacije z enim ključem in lupini je bil dodan kavelj)</p>    ?jV?????ǔ????5??=L???c??t?V<   
<p>Na primer, SPF za <code>user.tax</code> je naslednji</p>    ƃ??0zn1?? ??BA??`>?k-?,\Z?   
<p>Uredite <code>/etc/netplan/01-netcfg.yaml</code> , dodajte nekaj vrstic, kot je prikazano na spodnji sliki (privzeta konfiguracijska datoteka Contabo VPS že vsebuje te vrstice, samo odkomentirajte jih).</p>    ?_;?<̉f=Fx?  i???T??.?F?_??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp" alt="" /></p>    ?7?=???????d?bA??????????J+?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp" alt="" /></p>    ?tu????9? 4?????I0]о!???P?d   
<p>Če vaš domenski imenski strežnik ne podpira vrste SPF, preprosto dodajte zapis vrste TXT.</p>    ???Uk??vvJfQ???N??W?1?!?
dmP?   
<p>Ko je konfiguracija končana, lahko uporabite druge e-poštne naslove za pošiljanje e-pošte na <code>i@user.tax</code> in <code>any123@user.tax</code> , da preverite, ali lahko prejemate e-pošto v Gmailu.</p>    ???}??YLrT???ݥ?ܗr??9՜	{   
<p><code>grep chasquid /var/log/syslog</code> ali <code>journalctl -xeu chasquid</code> si lahko ogleda dnevnik napak.</p>    ?@Ә??S?A??u?q&? ?v?,*sgH??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp" alt="" /></p>    ?j?v$?k?C-??Bݦ??R?4??a?????>?   
<p>Obiščite <a href="https://mail.google.com/mail/u/1/#settings/accounts">https://mail.google.com/mail/u/1/#settings/accounts</a> in kliknite »Dodaj drug e-poštni naslov«.</p>    ?]?F?%?Y"?????_P?0????[M??Ke   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp" alt="" /></p>    ڜ? ??~?dЬ?^p"?}?y?43?	????Z   
<p>Če ne, preverite dnevnik chasquid ( <code>grep chasquid /var/log/syslog</code> ).</p>    ?0?F?b?????[6D???????s?
??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp" alt="" /></p>    ߮?B?D?J?%???]?^?P??????f??+   
<p>uredi <code>/etc/sysctl.conf</code></p>    ??2???Ԟ3E,|??y???V??t??ߔ"9???=   
<p>Zaženite naslednji ukaz za namestitev z enim klikom.</p>    ?^????~?%?t?4	?@7?K?j w"??W?(   
<img 6>
<p>Lahko doda pošiljatelja</p>    ???^??PK??s??7<U????;w?Gf?=????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp" alt="" /></p>    ??N>??7]u????v_XI?[?s??k?o]   
<p>Nato zaženite <code>systemctl restart chasquid</code> , da znova zaženete storitev.</p>    ?>???u$R???Bu>??T??JO/S(7???   
<p>Poiščite svojega ponudnika DNS v <a href="https://github.com/acmesh-official/acme.sh/wiki/dnsapi">acme.sh dnsapi</a> , uredite <code>conf/conf.sh</code> .</p>    ??,NN???DR????Dz?s??F??5ظqζV   
<p>Spodaj vam korak za korakom pokažemo, kako zgraditi lasten poštni strežnik.</p>    ?ꁶn??w޶?ѭD????C?C)?@??B7??2   
<img 5>
<h2>Dodaj pošiljatelja</h2>
<p>teči</p>    ??"???gb??㪼+?lJZ?ۃ?]O;??QO?   
<ul>
<li>uporabnik: uporabniško ime SMTP</li>
<li>pass: geslo SMTP</li>
<li>za: prejemnik</li>
</ul>
<p>Lahko pošljete testno e-pošto.</p>    ???]?D(#?????!v??8ꀂ?>Z?@L%?   
<p>Preveri identiteto pošiljatelja pošte tako, da preveri, ali se naslov IP pošiljatelja ujema z zapisi DNS imena domene, za katerega se predstavlja, s čimer prepreči goljufom pošiljanje lažnih e-poštnih sporočil.</p>    ??:???颕?m?ç???n???M蠘Ce   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp" alt="" /></p>    ??^?/f??`???M-}??zú???o($F?p??   
<h2>Uredite ime gostitelja chasquid.conf</h2>
<p>Spremenite <code>conf/chasquid/chasquid.conf</code> na vrednost imena povratne domene.</p>    ????k<?I?m3i??K?O?*Oy?;L??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp" alt="" /></p>    ?[??r.p/܅ ???Q?	??G"2?/?O   
<h3>[Izbirno] Inicializirajte razvojno okolje</h3>
<p>Ta korak ni obvezen.</p>