|       ?pD?l?8?ws?8(L佌?ev???p???  
<ul>
<li>0: Mag-ulat ng mga resulta ng pagpapatunay para sa lahat ng mga mensahe</li>
<li>1: Mag-ulat lamang ng mga mensaheng nabigo sa pag-verify</li>
<li>d: Iulat lamang ang mga pagkabigo sa pag-verify ng domain name</li>
<li>s: iulat lamang ang mga pagkabigo sa pag-verify ng SPF</li>
<li>l: Iulat lamang ang mga pagkabigo sa pag-verify ng DKIM</li>
</ul>
<h3>rua at ruf</h3>
<ul>
<li>rua (Pag-uulat ng URI para sa Pinagsama-samang mga ulat): Email address para sa pagtanggap ng pinagsama-samang mga ulat</li>
<li>ruf (Pag-uulat ng URI para sa Forensic na mga ulat): email address upang makatanggap ng mga detalyadong ulat</li>
</ul>
<h2>Magdagdag ng mga tala ng MX para ipasa ang mga email sa Google Mail</h2>
<p>Dahil hindi ako makahanap ng libreng corporate mailbox na sumusuporta sa mga unibersal na address (Catch-All, maaaring makatanggap ng anumang mga email na ipinadala sa domain name na ito, nang walang mga paghihigpit sa mga prefix), gumamit ako ng chasquid para ipasa ang lahat ng email sa aking Gmail mailbox.</p>    Z?I?`O???J??<?ۜc(?ƀ?0??'??   
<p>Sa mga sumusunod, kukunin ko ang VPS ng Contabo bilang isang halimbawa upang ipakita kung paano bumuo ng iyong sariling mail server.</p>    6???ZE?k߀P???T???Ӡ??y?S??   
<h2>I-configure ang Email Signature DKIM</h2>
<p>Ginagamit ang DKIM upang magpadala ng mga lagda sa email upang maiwasang ituring ang mga titik bilang spam.</p>    ?f=??9M????,??ƿ?wɨ"&aj?l??S   
<p><code>v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all</code></p>    	z??????	9?#.??Oœ?2J@u.?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp" alt="" /></p>    
 	_??8????*??7Jm?j?7??.X?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp" alt="" /></p>    v??H??v-Hv????W?;?|??Kn-???'   
<p>Gumawa muna ng pribadong bodega</p>    ?|=?.??2?^??w?j6??}Y'?Ϩ$?pe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp" alt="" /></p>    B??$??eb??u??`V???e???4?)?   
<p>Tandaan na <code>include:_spf.google.com</code> dito, dahil iko-configure ko <code>i@user.tax</code> bilang address ng pagpapadala sa Google mailbox sa ibang pagkakataon.</p>    E?????<??ܶ9??????<lJ?gP??;????   
<p><code>*</code> ay nagpapahiwatig ng lahat ng mga email, <code>i</code> ay ang email address na prefix ng nagpapadalang user na ginawa sa itaas. Upang ipasa ang mail, kailangang magdagdag ng linya ang bawat user.</p>    ???+&?gI??E??:-?TE?R???^?DG?ض?  
<p>Kung pipiliin mo ang Euro bilang currency ng pagbili, ang presyo ay magiging mas mura (isang server na may 8GB memory at 4 na CPU ay nagkakahalaga ng humigit-kumulang 529 yuan bawat taon, at ang paunang bayad sa pag-install ay libre para sa isang taon).</p>    ?Z????x?2?+ճGh??RA2?4???C|?   
<h2>Magpadala ng email sa i@user.tax gamit ang Google Mail</h2>
<p>Pagkatapos matanggap ng Google Mail ang mail, natural na hilinging tumugon gamit <code>i@user.tax</code> sa halip na i.user.tax@gmail.com.</p>    ?t???NJ?` ???????06@??Uѭ?3??   
<img 0>
<p>Mga Chinese user, mangyaring gamitin ang sumusunod na command sa halip, at ang wika, time zone, atbp. ay awtomatikong itatakda.</p>    ???O?P?????v??g?? ??!t?D???lbe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp" alt="" /></p>    $?@?w???N????4?i?{?P????}m   
<h2>Magpadala ng pansubok na email para tingnan kung matagumpay ang configuration</h2>
<p>Ipasok <code>ops/chasquid</code></p>    ???? ?ۆ??c:[>$??????S??K?ض??l   
<img 4>
<p>Ang path para sa nabuong certificate ay parang <code>/mnt/www/.acme.sh/123.com_ecc。</code></p>    %|????lG???;ت?{??Ǽ?E7 ??fe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp" alt="" /></p>    &??9? ?????????h???EN???|?̦\   
<h2>Configuration ng system ng Ubuntu</h2>
<p>Ang operating system dito ay Ubuntu 22.04</p>    'u?-?-??:h*????*?2zg???@??U?   
<h3>I-verify na ang password ay naitakda nang tama</h3>
<img 7>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp" alt="" /></p>    '????_yU?j??????!???????2???   
<p>Ang mga karaniwang ginagamit na pampublikong ulap ay na-block ang mga port na ito bilang default, at maaaring posible na buksan ang mga ito sa pamamagitan ng pag-isyu ng isang utos sa trabaho, ngunit ito ay napakahirap pagkatapos ng lahat.</p>    (???2?T?G??U?=?c5??????#d??   
<p>Pagkatapos ay idagdag ang MX record (Direkta akong tumuturo sa address ng reverse domain name dito, tulad ng ipinapakita sa unang linya sa figure sa ibaba).</p>    )?U9ؾ1?a?'?R0]?*?Jo???v??21?   
<img 1>
<h3>Pinapagana ng Contabo ang IPV6</h3>
<p>I-enable ang IPV6 para makapagpadala rin ang SMTP ng mga email na may mga IPV6 address.</p>    )Q???VmV;u?????ͽ8B?	
L| ?z   
    *&?]p/?<WO?-?I??\??B?x?9#?!d   
<p>I-edit <code>conf/chasquid/domains/user.tax/aliases</code> , itakda ang pagpapasa ng mailbox</p>    ,'? ?/a??Lޣ?Xf{????0??K? ?4   
<p>Baguhin o idagdag ang mga sumusunod na linya</p>    2?5ǜO\?=???z-??????d?????*oFP?*   
<p>Ang nilalaman ay ang mga sumusunod</p>    2?I*<kucX1Nկ??*?VFr?S?;dJޱx??   
<p>Pagkatapos itakda ang reverse domain name, tandaan na i-configure ang forward resolution ng domain name na ipv4 at ipv6 sa server.</p>    5?-??ϸ?'?
W *k2zfF7?lX^?&?GJ???   
<p>Sa ganitong paraan, natapos na namin ang pagtatatag ng SMTP mail server at sa parehong oras ay gumagamit ng Google Mail upang magpadala at tumanggap ng mga email.</p>    6%p4??g5?+f???m.?i\?Y?9x??TA K   
<p>Pagkatapos ay i-click ang &quot;Ipakita ang Orihinal na Email&quot;</p>    63?g?:??X???C@?Q????Doe:?<:?H?{m   
<img 8>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp" alt="" /></p>    9ڕ?O/;??9??cƷ??v>?G???cP?-?T   
<p>Ang estado ng normal na operasyon ay tulad ng ipinapakita sa figure sa ibaba</p>    =E?f?o???I?????????F,??x?>???h   
<p>Ang pagtatakda ng reverse domain name ay maaaring maiwasan ang mga email na matukoy bilang spam.</p>    ?O?-B???-???[,-????Q?a?iT#@o?m0   
<p><code>v=spf1 a:smtp.user.tax ~all</code></p>    A?????T?3|7c?b?ve?B?"_?
??r?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp" alt="" /></p>    F?Ra9/]???I^??@i??????0G??|   
<p>Ginagamit namin <a href="https://github.com/acmesh-official/acme.sh">ang acme.sh</a> upang makabuo ng mga sertipiko.</p>    G|Tۍ?։0?a??????g??$??;??jC?   <h1>Bumuo ng sarili mong server ng pagpapadala ng SMTP mail</h1>
<h2>pambungad</h2>
<p>Maaaring direktang bumili ng SMTP ng mga serbisyo mula sa mga cloud vendor, gaya ng:</p>    M?XOqh?N_jw?W?y6o?'?E(!:?????{   
<p>Matapos gumana nang matagumpay ang command, ipo-prompt kang itakda ang DKIM record (tulad ng ipinapakita sa ibaba).</p>    Q<qV???dB=6U????v?=??M?w\TMee   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp" alt="" /></p>    U?3i?O??捣~?z????z??x.????]e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp" alt="" /></p>    V	?????+t???^?j??s???}?HY'??   
<p>Kapag natanggap ang mail, magsasagawa ang receiving server ng reverse domain name analysis sa IP address ng nagpapadalang server upang kumpirmahin kung ang nagpapadalang server ay may wastong reverse domain name.</p>    W0?!?'{?'??[p???7Xr%?l????????iH?   
<h2>Bumuo ng SMTP server na may chasquid</h2>
<p><a href="https://github.com/albertito/chasquid">Ang chasquid</a> ay isang open source SMTP server na nakasulat sa Go language.</p>    W?SJ?۸Ͽ??mA?C}??\̮r?PNo?+v3=   
<p>Ang kahulugan ng bawat parameter ay ang mga sumusunod</p>    X[????
ҋa??e^??[=?e?A]d}~0???   
<p>Kapag naglalagay ng order, <code>prefer AMD</code> , at ang server na may AMD CPU ay magkakaroon ng mas mahusay na pagganap.</p>    X???߶g=????{?????????d??5/p?   
<p>Pagkatapos na matagumpay ang pagsasaayos, maaari mong gamitin <code>curl 6.ipw.cn</code> upang tingnan ang ipv6 address ng iyong panlabas na network.</p>    Yn??B_??W9?9?nJGYV? ?Y=@???Gb???   
<h2>DNS configuration DMARC</h2>
<p>Ang DMARC ay ang pagdadaglat ng (Domain-based Message Authentication, Reporting &amp; Conformance).</p>    `Q8Y?7??,L???(X??Ʋ&D	??????   
<p>Bilang isang kapalit para sa mga sinaunang mail server program tulad ng Postfix at Sendmail, ang chasquid ay mas simple at mas madaling gamitin, at mas madali din ito para sa pangalawang pag-unlad.</p>    `?G?4?Xj????}?8?a?????F??ay$?]?O   
<p>Dito, inirerekomenda ko <a href="https://contabo.com">ang Contabo</a> .</p>    a?# Rr?ͥ?c???*??>?As1?>p?)}???:   
<p>Ang istraktura ng direktoryo ay ang mga sumusunod:</p>    e}?????e˃?h??_???Y-?
>??َb^UĴ   
<h3>DKIM</h3>
<p>Gaya ng ipinapakita sa figure sa ibaba, ipinapakita ng orihinal na pahina ng mail ng Gmail ang DKIM, na nangangahulugang matagumpay ang configuration ng DKIM.</p>    g?0?Q?-k-B?????j-???㻒???~On?+   
<p>Pagkatapos ay i-restart ang server.</p>    j?Q????mK?????W???&?P?!?8?lh?   
<h2>Tingnan ang katayuan ng serbisyo at mga log</h2>
<p><code>systemctl status chasquid</code> Tingnan ang katayuan ng serbisyo.</p>    kr
5?????4[82O?%??,?J	wQe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp" alt="" /></p>    m??O?fFȟ?%?~,b?Sn?37}???1B?{?   
<h2>Pagpili ng server</h2>
<p>Ang self-hosted SMTP server ay nangangailangan ng pampublikong IP na may mga port na 25, 456, at 587 na bukas.</p>    pE?????,?????@??*M#??h???)?   
<p>Ipasok ang configuration warehouse ops, patakbuhin <code>./ssl.sh</code> , at isang <code>conf</code> folder ang gagawin sa itaas na direktoryo.</p>    t?̏s?@7??B? V???v?ݯ?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp" alt="" /></p>    y?	??U,Ճ?&?;ks]?f????-BuW???   
<p>Pagkatapos ay patakbuhin <code>./ssl.sh 123.com</code> upang bumuo ng <code>123.com</code> at <code>*.123.com</code> na mga sertipiko para sa iyong domain name.</p>    y?o??y?|?uভ?!?O???b?Vʕ_'?z???   
<p>Pagkatapos idagdag ang user, maa-update <code>chasquid/domains/user.tax/users</code> , tandaan na isumite ito sa warehouse.</p>    zEz?k?.'ۆ?qo??CӚx? ??mL!vYe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp" alt="" /></p>    zI?c?H???lbSi̕͡9A?ԣ??????#e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp" alt="" /></p>    |?L?65x????????:80??=%??
P1 ?f   
<p>Halimbawa, bina-back ko ang conf folder sa sarili kong proseso ng github gaya ng mga sumusunod</p>    #???Z?!?{)?#*mm??Ӣ?!S?<?????   
<p>Ginagamit ito upang makuha ang mga pagtalbog ng SPF (maaaring sanhi ng mga error sa pagsasaayos, o may ibang nagpapanggap na ikaw para magpadala ng spam).</p>    ?n??? H+?B68?;"???)?S??¼̝ς   
<p>Ang Contabo ay isang hosting provider na nakabase sa Munich, Germany, na itinatag noong 2003 na may napakahusay na presyo.</p>    ??w??????B?EG????%>??h???MnM?R   
<p>Magdagdag lang ng TXT record sa iyong DNS (tulad ng ipinapakita sa ibaba).</p>    ?ϱ@W?a?t#?/d????u?D?v??Y??e0/?   
<h3>TLS standard encryption</h3>
<p>Gaya ng ipinapakita sa figure sa ibaba, mayroong maliit na lock na ito, na nangangahulugang matagumpay na pinagana ang SSL certificate.</p>    ?>?vH??o?? ?Ap
p???f?e"??ve   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp" alt="" /></p>    ?sO?s?o?NR??Ac?G8??>?6cǈ(w?u   
<p>Ang pagdaragdag ng mga tala ng SPF ay maaaring maiwasan ang mga email na matukoy bilang spam hangga't maaari.</p>    ? >v?Ii?J???[F)??F?f?B0O???&  
<ul>
<li>wala: Walang aksyon na ginawa, tanging ang resulta ng pag-verify ang ibabalik sa nagpadala sa pamamagitan ng mekanismo ng pag-uulat ng email.</li>
<li>Quarantine: Ilagay ang mail na hindi nakapasa sa pag-verify sa folder ng spam, ngunit hindi direktang tatanggihan ang mail.</li>
<li>tanggihan: Direktang tanggihan ang mga email na nabigo sa pag-verify.</li>
</ul>
<h3>fo (Mga Pagpipilian sa Pagkabigo)</h3>
<p>Tinutukoy ang dami ng impormasyong ibinalik ng mekanismo ng pag-uulat. Maaari itong itakda sa isa sa mga sumusunod na halaga:</p>    ?^?k? A??]t??????W?Ty?Ubsw?b  
<ul>
<li><a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html">Amazon SES SMTP</a></li>
<li><a href="https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods">Ali cloud email push</a></li>
</ul>
<p>Maaari ka ring bumuo ng iyong sariling mail server - walang limitasyong pagpapadala, mababang kabuuang gastos.</p>    ?)??~z?uE???R3Q???????e?X?2ϖ*?   
<h3>p (Patakaran)</h3>
<p>Isinasaad kung paano pangasiwaan ang mga email na nabigo sa pag-verify ng SPF (Sender Policy Framework) o DKIM (DomainKeys Identified Mail). Ang p parameter ay maaaring itakda sa isa sa tatlong mga halaga:</p>    ?i??
0?]??P????u???)R??甄A+??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp" alt="" /></p>    ??|?T?#]1g?8D??N???????>?Z??Ǒ?   
<h2>Baliktarin ang configuration ng domain name</h2>
<p>Ang reverse domain name ay upang payagan ang IP address na malutas sa kaukulang domain name.</p>    ??,3??.o?".???@-?"?:?j?*??H{??   
<p>Bisitahin ang <a href="https://my.contabo.com/rdns">https://my.contabo.com/rdns</a> at i-configure tulad ng ipinapakita sa ibaba</p>    ????8???AіKO?t.?!TN߂A?A??hv?   
<p>Para sa kaginhawahan, inilagay ko ang pag-install at pagsasaayos ng system ng ubuntu software sa <a href="https://github.com/user-tax-dev/os/tree/main/ubuntu">github.com/user-tax-dev/os/tree/main/ubuntu</a> .</p>    ?ֲ?b?_[??X*:(?9???? Gઠ?0"??   
<p>Kung ang nagpapadalang server ay walang reverse domain name o kung ang reverse domain name ay hindi tumutugma sa IP address ng nagpapadalang server, maaaring kilalanin ng tatanggap na server ang email bilang spam o tanggihan ito.</p>    ?+J??sun?ž${??o7?t'?=s	^B?IC   
<img 9>
<p>Ang kahulugan ng mga parameter ay ang mga sumusunod</p>    ?ڨ`?e?-???9aQw?>??z??6?j??T!?  
<p>Ang unang pagtakbo ay awtomatikong mag-i-install <a href="https://github.com/acmesh-official/acme.sh">ng acme.sh</a> at magdagdag ng naka-iskedyul na gawain para sa awtomatikong pag-renew. <code>crontab -l</code> ay makikita na mayroong isang linya tulad ng sumusunod.</p>    ???'U?V,?5`s?D%?y??A?W]???|\??   
<h2>I-clone ang configuration repository ops</h2>
<img 3>
<h2>Bumuo ng isang libreng SSL certificate para sa iyong domain name</h2>
<p>Ang pagpapadala ng mail ay nangangailangan ng SSL certificate para sa pag-encrypt at pag-sign.</p>    ?y5M<r?[Yd?_ţ1B??P????ڥva?   
<p>Patakbuhin <code>./chasquid/init.sh 123.com</code> ay awtomatikong mai-install sa isang pag-click (palitan ang 123.com ng iyong pagpapadala ng domain name).</p>    ??Z\????Ƥu?bz??D?a????p'??FO   
<p>Ang acme.sh ay isang open source na automated certificate signing tool,</p>    ?\Kmڔ&EY?7?(mx?u???b?L?5?	  
<p>Ang pag-renew ng sertipiko ay tatawag ng <code>conf/reload/123.com.sh</code> script, i-edit ang script na ito, maaari kang magdagdag ng mga command tulad ng <code>nginx -s reload</code> upang i-refresh ang cache ng certificate ng mga kaugnay na application.</p>    ?e???[e??@??uO?????%?2?	zR~   
<p>Sa wakas, maaari itong itakda bilang default na address ng nagpadala (kasama ang opsyong tumugon sa parehong address).</p>    ?y????n?p?b?;?F\{????k7h? 0????   
<img 2>
<p>I-follow up <a href="https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/">ang contabo tutorial: Pagdaragdag ng IPv6 connectivity sa iyong server</a></p>    ?9Y'?8}ߢ????-?`?2n??
p?Fa$~?   
<p>Suriin ang Natanggap sa header ng orihinal na email, at makikita mo na ang address ng nagpadala ay IPV6, na nangangahulugang matagumpay na na-configure ang IPV6.</p>    ??<UY????+?F̽^@;??ku????6xe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp" alt="" /></p>    ?????c??Y???!??P??w(l????5??2??	  
<p>Kung ang server sa ssh ay nagpapakita <code>Welcome to TinyCore 13!</code> (tulad ng ipinapakita sa figure sa ibaba), nangangahulugan ito na hindi pa naka-install ang system. Mangyaring idiskonekta ang ssh at maghintay ng ilang minuto upang mag-log in muli.</p>    ??ȫ?[k'y^?X??_???J??ݵ?*#T?D?   
<p><strong>Kung mayroon kang sariling bayad na mailbox ng negosyo, mangyaring huwag baguhin ang MX at laktawan ang hakbang na ito.</strong></p>    ??̟??q9JW?ڞG?>??C?
fsHa?j?Y   
<p>Pagkatapos, ilagay ang verification code na natanggap ng email kung saan ipinasa.</p>    ?Ό}T)?>E=?c?-??v?its????Pބ??   
<p>Inirerekomenda ko ang pagbili mula sa isang host na nakabukas ang mga port na ito at sumusuporta sa pag-set up ng mga reverse domain name.</p>    ?U???!m)f0??uΣG?o7?HVtS?????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp" alt="" /></p>    ???m? e7]Lo???_b??C%??>???X??   
<h2>I-backup ang conf sa git repository</h2>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp" alt="" /></p>    ???Y??'?Ȏ?)??̶A/;/???;??:`ŗ?   
<p>Inirerekomenda na gamitin ang Gmail upang makatanggap ng mga pansubok na email upang suriin kung matagumpay ang mga pagsasaayos.</p>    ?=???G?JzI>ʥ?'???`??P`F?Ӯ??5   
<p>Magdagdag ng TXT record <code>_dmarc</code> ,</p>    ??Я?ߠuOgr??#Y(?\?3?9nֿ?z??   
<p>Kapag lumabas <code>Welcome to Ubuntu 22.04.1 LTS</code> , kumpleto na ang pagsisimula, at maaari kang magpatuloy sa mga sumusunod na hakbang.</p>    ????*Ao"`?,????Y??U?]SkӶp???1?   
<h2>DNS magdagdag ng SPF record</h2>
<p>Ang SPF ( Sender Policy Framework ) ay isang teknolohiya sa pag-verify ng email na ginagamit upang maiwasan ang pandaraya sa email.</p>    ?;2??j?6???C??5=?&|?_x????;?b?.   
<p>SPF para sa <code>_spf.user.tax</code></p>    ?O?O??顾??l???s??l?7?6?{?z?~   
<p>tapos tumakbo</p>    ?Q?,?ir????u???d?wt;0?ZU?,X?M?9   
<p>Ipasok ang conf directory at isumite sa warehouse</p>    ?,?7??"?Ku?????2&un?Ir??]_?   
<p><code>direnv allow</code> na mag-install ng mga dependencies (na-install ang direnv sa nakaraang proseso ng pagsisimula ng isang key at naidagdag ang isang hook sa shell)</p>    ?jV?????ǔ????5??=L???c??t?VH   
<p>Halimbawa, ang SPF ng <code>user.tax</code> ay ang mga sumusunod</p>    ƃ??0zn1?? ??BA??`>?k-?,\Z?   
<p>I-edit <code>/etc/netplan/01-netcfg.yaml</code> , magdagdag ng ilang linya tulad ng ipinapakita sa figure sa ibaba (Ang Contabo VPS default configuration file ay mayroon nang mga linyang ito, alisin lamang ang komento sa kanila).</p>    ?_;?<̉f=Fx?  i???T??.?F?_??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp" alt="" /></p>    ?7?=???????d?bA??????????J+?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp" alt="" /></p>    ?tu????9? 4?????I0]о!???P?s   
<p>Kung hindi sinusuportahan ng iyong domain name server ang uri ng SPF, magdagdag lang ng tala ng uri ng TXT.</p>    ???Uk??vvJfQ???N??W?1?!?
dmP?   
<p>Pagkatapos makumpleto ang configuration, maaari kang gumamit ng iba pang mga email address upang magpadala ng mga email sa <code>i@user.tax</code> at <code>any123@user.tax</code> upang makita kung makakatanggap ka ng mga email sa Gmail.</p>    ???}??YLrT???ݥ?ܗr??9՜	}   
<p>Maaaring tingnan <code>grep chasquid /var/log/syslog</code> o <code>journalctl -xeu chasquid</code> ang log ng error.</p>    ?@Ә??S?A??u?q&? ?v?,*sgH??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp" alt="" /></p>    ?j?v$?k?C-??Bݦ??R?4??a?????>?   
<p>Bisitahin ang <a href="https://mail.google.com/mail/u/1/#settings/accounts">https://mail.google.com/mail/u/1/#settings/accounts</a> at i-click ang &quot;Magdagdag ng isa pang email address.&quot;</p>    ?]?F?%?Y"?????_P?0????[M??Ke   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp" alt="" /></p>    ڜ? ??~?dЬ?^p"?}?y?43?	????[   
<p>Kung hindi, suriin ang chasquid log ( <code>grep chasquid /var/log/syslog</code> ).</p>    ?0?F?b?????[6D???????s?
??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp" alt="" /></p>    ߮?B?D?J?%???]?^?P??????f??0   
<p>i-edit ang <code>/etc/sysctl.conf</code></p>    ??2???Ԟ3E,|??y???V??t??ߔ"9???Q   
<p>Patakbuhin ang sumusunod na command upang mai-install sa isang pag-click.</p>    ?^????~?%?t?4	?@7?K?j w"??W?/   
<img 6>
<p>Maaaring magdagdag ng nagpadala</p>    ???^??PK??s??7<U????;w?Gf?=????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp" alt="" /></p>    ??N>??7]u????v_XI?[?s??k?of   
<p>Pagkatapos ay patakbuhin <code>systemctl restart chasquid</code> upang i-restart ang serbisyo.</p>    ?>???u$R???Bu>??T??JO/S(7???   
<p>Hanapin ang iyong DNS provider mula sa <a href="https://github.com/acmesh-official/acme.sh/wiki/dnsapi">acme.sh dnsapi</a> , i-edit <code>conf/conf.sh</code> .</p>    ??,NN???DR????Dz?s??F??5ظqζg   
<p>Sa ibaba, ipinapakita namin ang hakbang-hakbang kung paano bumuo ng aming sariling mail server.</p>    ?ꁶn??w޶?ѭD????C?C)?@??B7??7   
<img 5>
<h2>Magdagdag ng nagpadala</h2>
<p>tumakbo</p>    ??"???gb??㪼+?lJZ?ۃ?]O;??QO?   
<ul>
<li>user: SMTP username</li>
<li>pass: SMTP password</li>
<li>sa: tatanggap</li>
</ul>
<p>Maaari kang magpadala ng pansubok na email.</p>    ???]?D(#?????!v??8ꀂ?>Z?@L%  
<p>Bine-verify nito ang pagkakakilanlan ng isang nagpadala ng mail sa pamamagitan ng pag-check na tumutugma ang IP address ng nagpadala sa mga tala ng DNS ng domain name na sinasabi nito, na pumipigil sa mga manloloko sa pagpapadala ng mga pekeng email.</p>    ??:???颕?m?ç???n???M蠘Ce   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp" alt="" /></p>    ??^?/f??`???M-}??zú???o($F?p??   
<h2>I-edit ang hostname ng chasquid.conf</h2>
<p>Baguhin <code>conf/chasquid/chasquid.conf</code> sa halaga ng reverse domain name.</p>    ????k<?I?m3i??K?O?*Oy?;L??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp" alt="" /></p>    ?[??r.p/܅ ???Q?	??G"2?/?_   
<h3>[Opsyonal] Simulan ang development environment</h3>
<p>Ang hakbang na ito ay opsyonal.</p>