|       ?pD?l?8?ws?8(L佌?ev???p????  
<ul>
<li>0: Bɔ validation aba ho amanneɛ ma nkrasɛm nyinaa</li>
<li>1: Bɔ nkrasɛm a entumi nyɛ nokware nkutoo ho amanneɛ</li>
<li>d: Bɔ domain din nokwaredi a entumi nyɛ yiye nkutoo ho amanneɛ</li>
<li>s: bɔ SPF nokwaredi huammɔdi nkutoo ho amanneɛ</li>
<li>l: Bɔ DKIM nokwaredi huammɔdi nkutoo ho amanneɛ</li>
</ul>
<h3>rua &amp; ruf</h3>
<ul>
<li>rua (URI a wɔde ma amanneɛbɔ a wɔaboaboa ano): Email address a wɔde gye amanneɛbɔ a wɔaboaboa ano</li>
<li>ruf (URI a wɔde bɔ amanneɛ ma Forensic amanneɛbɔ): email address a wode begye amanneɛbɔ a ɛkɔ akyiri</li>
</ul>
<h2>Fa MX kyerɛwtohɔ ahorow ka ho na fa email ahorow kɔ Google Mail</h2>
<p>Esiane sɛ mantumi anhu adwumakuw mailbox a wontua hwee a ɛboa amansan address ahorow (Catch-All, ebetumi anya email biara a wɔde akɔ domain din yi so, a anohyeto biara nni mu wɔ prefixes ho), mede chasquid dii dwuma de email nyinaa kɔɔ me Gmail mailbox so.</p>    Z?I?`O???J??<?ۜc(?ƀ?0??'?   
<p>Wɔ deɛ ɛdidi soɔ yi mu no, mɛfa Contabo VPS sɛ nhwɛsoɔ de akyerɛ sɛdeɛ wobɛkyekyere w’ankasa mail server.</p>    6???ZE?k߀P???T???Ӡ??y?S??   
<h2>Hyehyɛ Email Nsaano Nkyerɛwee DKIM</h2>
<p>Wɔde DKIM di dwuma de email nsaano nkyerɛwee mena de siw nkrataa a wɔremfa nni dwuma sɛ spam.</p>    ?f=??9M????,??ƿ?wɨ"&aj?l??S   
<p><code>v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all</code></p>    	z??????	9?#.??Oœ?2J@u.?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp" alt="" /></p>    
 	_??8????*??7Jm?j?7??.X?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp" alt="" /></p>    v??H??v-Hv????W?;?|??Kn-???$   
<p>Di kan yɛ kokoam adekoradan</p>    ?|=?.??2?^??w?j6??}Y'?Ϩ$?pe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp" alt="" /></p>    B??$??eb??u??`V???e???4?)?   
<p>Hyɛ no nsow sɛ mewɔ <code>include:_spf.google.com</code> wɔ ha, efisɛ mɛhyehyɛ <code>i@user.tax</code> sɛ address a wɔde bɛmena wɔ Google mailbox no mu akyiri yi.</p>    E?????<??ܶ9??????<lJ?gP??;????   
<p><code>*</code> kyerɛ email nyinaa, <code>i</code> yɛ email address prefix a ɔde soma ɔdefo a wɔayɛ wɔ atifi hɔ no. Sɛ wode mail bɛkɔ a, ɛsɛ sɛ obiara a ɔde di dwuma no de line bi ka ho.</p>    ???+&?gI??E??:-?TE?R???^?DG?ض??   
<p>Sɛ wopaw Euro sɛ sika a wode bɛtɔ a, ne bo bɛyɛ mmerɛw (server a ɛwɔ 8GB memory ne 4 CPUs bo bɛyɛ 529 yuan afe biara, na mfitiaseɛ instɔlehyɛn ho ka no yɛ kwa afe baako).</p>    ?Z????x?2?+ճGh??RA2?4???C|?   
<h2>Fa email kɔma i@user.tax denam Google Mail so</h2>
<p>Sɛ Google Mail nsa ka mail no wie a, ɛyɛ awosu sɛ wobɛpɛ sɛ wode <code>i@user.tax</code> bua sen sɛ wode i.user.tax@gmail.com bua.</p>    ?t???NJ?` ???????06@??Uѭ?3??   
<img 0>
<p>Chinafoɔ a wɔde di dwuma, yɛsrɛ sɛ fa ahyɛdeɛ a ɛdidi soɔ yi di dwuma mmom, na kasa, berɛ fã, ne nea ɛkeka ho no bɛhyehyɛ no ara.</p>    ???O?P?????v??g?? ??!t?D???lbe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp" alt="" /></p>    $?@?w???N????4?i?{?P????}mq   
<h2>Fa sɔhwɛ email mena na hwɛ sɛ nhyehyɛe no adi nkonim anaa</h2>
<p>Hyehyɛ <code>ops/chasquid</code></p>    ???? ?ۆ??c:[>$??????S??K?ض??   
<img 4>
<p>Ɔkwan a wɔfa so de abodin krataa a wɔayɛ no yɛ biribi te sɛ <code>/mnt/www/.acme.sh/123.com_ecc。</code></p>    %|????lG???;ت?{??Ǽ?E7 ??fe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp" alt="" /></p>    &??9? ?????????h???EN???|?̦X   
<h2>Ubuntu nhyehyɛe nhyehyɛe</h2>
<p>Dwumadi nhyehyɛe a ɛwɔ ha ne Ubuntu 22.04</p>    'u?-?-??:h*????*?2zg???@??U?   
<h3>Hwɛ sɛ wɔahyehyɛ password no yiye</h3>
<img 7>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp" alt="" /></p>    '????_yU?j??????!???????2???   
<p>Ɔmanfo mununkum a wɔtaa de di dwuma no asiw saa hyɛn gyinabea ahorow yi kwan default so, na ebia ɛbɛyɛ yiye sɛ wobebue denam adwuma ho ahyɛde a wɔde bɛma so, nanso ɛyɛ ɔhaw kɛse wɔ ne nyinaa akyi.</p>    (???2?T?G??U?=?c5??????#d??   
<p>Afei fa MX kyerɛwtohɔ no ka ho (metwe adwene si address a ɛwɔ reverse domain name no so tẽẽ wɔ ha, sɛnea wɔakyerɛ wɔ line a edi kan wɔ mfonini a ɛwɔ ase ha no mu no).</p>    )?U9ؾ1?a?'?R0]?*?Jo???v??21?   
<img 1>
<h3>Contabo ma IPV6 tumi yɛ adwuma</h3>
<p>Ma IPV6 nyɛ adwuma sɛnea ɛbɛyɛ a SMTP nso betumi de email ahorow a IPV6 address wom amena.</p>    )Q???VmV;u?????ͽ8B?	
L| ?z   
    *&?]p/?<WO?-?I??\??B?x?9#?!g   
<p>Sesa <code>conf/chasquid/domains/user.tax/aliases</code> , hyehyɛ nkrataa adaka a wɔde bɛkɔ</p>    ,'? ?/a??Lޣ?Xf{????0??K? ?3   
<p>Sesa anaa fa nkyerɛwde a edidi so yi ka ho</p>    2?5ǜO\?=???z-??????d?????*oFP?2   
<p>Nsɛm a ɛwɔ mu no te sɛ nea edidi so yi</p>    2?I*<kucX1Nկ??*?VFr?S?;dJޱx??   
<p>Sɛ wohyehyɛ reverse domain din no wie a, kae sɛ wobɛhyehyɛ forward resolution a ɛwɔ domain din ipv4 ne ipv6 no so akɔ server no so.</p>    5?-??ϸ?'?
W *k2zfF7?lX^?&?GJ???   
<p>Saa kwan yi so no, yɛawie SMTP mail server no a yɛde besi hɔ no na bere koro no ara yɛde Google Mail adi dwuma de amena na yɛagye email.</p>    6%p4??g5?+f???m.?i\?Y?9x??TA 4   
<p>Afei klik &quot;Kyerɛ Original Email&quot;.</p>    63?g?:??X???C@?Q????Doe:?<:?H?{m   
<img 8>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp" alt="" /></p>    9ڕ?O/;??9??cƷ??v>?G???cP?-?e   
<p>Tebea a ɛwɔ oprehyɛn a ɛfata mu no te sɛ nea wɔakyerɛ wɔ mfonini a ɛwɔ ase ha no mu</p>    =E?f?o???I?????????F,??x?>???i   
<p>Sɛ wode reverse domain name si hɔ a, ebetumi asiw email ahorow ano sɛ wɔrenhu sɛ ɛyɛ spam.</p>    ?O?-B???-???[,-????Q?a?iT#@o?m0   
<p><code>v=spf1 a:smtp.user.tax ~all</code></p>    A?????T?3|7c?b?ve?B?"_?
??r?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp" alt="" /></p>    F?Ra9/]???I^??@i??????0G??p   
<p>Yɛde <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> di dwuma de yɛ adansedi nkrataa.</p>    G|Tۍ?։0?a??????g??$??;??jC?   <h1>Yɛ w’ankasa SMTP mail sending server</h1>
<h2>nnianim asɛm</h2>
<p>SMTP betumi atɔ nnwuma afi cloud adetɔnfo hɔ tẽẽ, te sɛ:</p>    M?XOqh?N_jw?W?y6o?'?E(!:?????}   
<p>Sɛ ahyɛdeɛ no kɔ yie a, wɔbɛka akyerɛ wo sɛ hyehyɛ DKIM kyerɛwtohɔ no (sɛnea wɔakyerɛ wɔ aseɛ ha yi).</p>    Q<qV???dB=6U????v?=??M?w\TMee   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp" alt="" /></p>    U?3i?O??捣~?z????z??x.????]e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp" alt="" /></p>    V	?????+t???^?j??s???}?HY'??   
<p>Sɛ wɔgye mail no a, server a ɛregye no bɛyɛ reverse domain name analysis wɔ IP address a ɛwɔ server a ɛde remena no so de si so dua sɛ server a ɔde remena no wɔ reverse domain din a ɛfata anaa.</p>    W0?!?'{?'??[p???7Xr%?l????????iH?   
<h2>Yɛ SMTP server ne chasquid</h2>
<p><a href="https://github.com/albertito/chasquid">chasquid</a> yɛ SMTP server a wɔabue ano a wɔakyerɛw wɔ Go kasa mu.</p>    W?SJ?۸Ͽ??mA?C}??\̮r?PNo?+v38   
<p>Parameter biara asekyerɛ te sɛ nea edidi so yi</p>    X[????
ҋa??e^??[=?e?A]d}~0??q   
<p>Sɛ woreyɛ order a, remark <code>prefer AMD</code> , na server a ɛwɔ AMD CPU no benya adwumayɛ a eye.</p>    X???߶g=????{?????????d??5/p?   
<p>Sɛ nhyehyeɛ no di yie wie a, wobɛtumi de <code>curl 6.ipw.cn</code> adi dwuma de ahwɛ wo abɔnten ntwamutam no ipv6 address.</p>    Yn??B_??W9?9?nJGYV? ?Y=@???Gb???   
<h2>DNS nhyehyeɛ DMARC</h2>
<p>DMARC yɛ (Domain-based Message Authentication, Reporting &amp; Conformance) a wɔatwa no tiaa.</p>    `Q8Y?7??,L???(X??Ʋ&D	??????   
<p>Sɛ́ nea wɔde besi tete mail server nhyehyɛe ahorow te sɛ Postfix ne Sendmail ananmu no, chasquid yɛ mmerɛw na ɛnyɛ den sɛ wɔde bedi dwuma, na ɛyɛ mmerɛw nso ma nkɔso a ɛto so abien.</p>    `?G?4?Xj????}?8?a?????F??ay$?]?J   
<p>Ɛha yi, mekamfo <a href="https://contabo.com">Contabo</a> kyerɛ.</p>    a?# Rr?ͥ?c???*??>?As1?>p?)}???6   
<p>Directory nhyehyɛe no te sɛ nea edidi so yi:</p>    e}?????e˃?h??_???Y-?
>??َb^Uĭ   
<h3>DKIM</h3>
<p>Sɛnea wɔakyerɛ wɔ mfonini a ɛwɔ aseɛ ha yi mu no, Gmail mfitiaseɛ mail krataafa no bɛkyerɛ DKIM, a ɛkyerɛ sɛ DKIM nhyehyeɛ no adi nkonim.</p>    g?0?Q?-k-B?????j-???㻒???~On?(   
<p>Afei san hyɛ server no ase bio.</p>    j?Q????mK?????W???&?P?!?8?lhe   
<h2>Hwɛ ɔsom tebea &amp; logs</h2>
<p><code>systemctl status chasquid</code> Hwɛ ɔsom tebea.</p>    kr
5?????4[82O?%??,?J	wQe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp" alt="" /></p>    m??O?fFȟ?%?~,b?Sn?37}???1B?{p   
<h2>Server a wɔpaw</h2>
<p>SMTP somfo a ɔno ankasa yɛ no hwehwɛ ɔmanfo IP a port 25, 456, ne 587 abue.</p>    pE?????,?????@??*M#??h???)?   
<p>Hyehyɛ nhyehyeɛ warehouse ops no mu, tu mmirika <code>./ssl.sh</code> , na wɔbɛbɔ <code>conf</code> folda wɔ soro daerekta no mu.</p>    t?̏s?@7??B? V???v?ݯ?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp" alt="" /></p>    y?	??U,Ճ?&?;ks]?f????-BuW???   
<p>Afei tu mmirika <code>./ssl.sh 123.com</code> na yɛ <code>123.com</code> ne <code>*.123.com</code> adansedi nkrataa ma wo domain din.</p>    y?o??y?|?uভ?!?O???b?Vʕ_'?z???   
<p>Sɛ wode ɔdefoɔ no ka ho wie a, <code>chasquid/domains/user.tax/users</code> bɛyɛ foforɔ, kae sɛ wode bɛkɔ adekoradan no mu.</p>    zEz?k?.'ۆ?qo??CӚx? ??mL!vYe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp" alt="" /></p>    zI?c?H???lbSi̕͡9A?ԣ??????#e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp" alt="" /></p>    |?L?65x????????:80??=%??
P1 ?j   
<p>Sɛ nhwɛsoɔ no, me backup conf folder no kɔ m’ankasa github process so sɛdeɛ ɛdidi soɔ yi</p>    #???Z?!?{)?#*mm??Ӣ?!S?<????   
<p>Wɔde kyere SPF bounces (ebia ɛnam nhyehyeɛ mfomsoɔ nti, anaasɛ obi foforɔ reyɛ ne ho sɛ wo na wode spam amena).</p>    ?n??? H+?B68?;"???)?S??¼̝?s   
<p>Contabo yɛ hosting provider a ɛwɔ Munich, Germany, a wɔde sii hɔ wɔ afe 2003 mu a ne bo yɛ den yiye.</p>    ??w??????B?EG????%>??h???MnM?U   
<p>Fa TXT kyerɛwtohɔ bi ka wo DNS ho kɛkɛ (sɛnea wɔakyerɛ wɔ ase ha no).</p>    ?ϱ@W?a?t#?/d????u?D?v??Y??e0/?   
<h3>TLS gyinapɛn encryption</h3>
<p>Sɛnea wɔakyerɛ wɔ mfonini a ɛwɔ aseɛ ha yi mu no, saa lock ketewa yi wɔ hɔ, a ɛkyerɛ sɛ wɔama SSL abodin krataa no ayɛ adwuma yie.</p>    ?>?vH??o?? ?Ap
p???f?e"??ve   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp" alt="" /></p>    ?sO?s?o?NR??Ac?G8??>?6cǈ(w??   
<p>SPF kyerɛwtohɔ ahorow a wode bɛka ho no betumi asiw email ahorow a wɔbɛkyerɛ sɛ ɛyɛ spam sɛnea ɛbɛyɛ yiye biara.</p>    ? >v?Ii?J???[F)??F?f?B0O????  
<ul>
<li>biara nni hɔ: Wɔnnyɛ ade biara, nea efi mu ba a ɛkyerɛ sɛ ɛyɛ nokware no nkutoo na wɔde ma nea ɔde kɔmaa no denam email amanneɛbɔ kwan no so.</li>
<li>Quarantine: Fa mail a ɛntwam verification no kɔ spam folda no mu, nanso ɛrempow mail no tẽẽ.</li>
<li>pow: Pow email ahorow a entumi nnye nokware no tẽẽ.</li>
</ul>
<h3>fo (Nneɛma a Wɔde Di Dwuma) .</h3>
<p>Kyerɛ nsɛm dodow a amanneɛbɔ nhyehyɛe no de bɛsan aba. Wobetumi de ahyɛ nneɛma a edidi so yi mu biako so:</p>    ?^?k? A??]t??????W?Ty?Ubsw?g  
<ul>
<li><a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html">Amazon SES SMTP na ɛyɛ adwuma</a></li>
<li><a href="https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods">Ali mununkum email piapia</a></li>
</ul>
<p>Wubetumi nso ayɛ w'ankasa mail server - a anohyeto nni mu a wode bɛmena, ɛho ka nyinaa sua.</p>    ?)??~z?uE???R3Q???????e?X?2ϖ*?   
<h3>p (Nhyehyɛe) .</h3>
<p>Kyerɛ sɛnea wobedi email ahorow a entumi nyɛ SPF (Sender Policy Framework) anaa DKIM (DomainKeys Identified Mail) nokwaredi ho dwuma. Wobetumi de p parameter no ahyɛ botae abiɛsa no mu biako so:</p>    ?i??
0?]??P????u???)R??甄A+??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp" alt="" /></p>    ??|?T?#]1g?8D??N???????>?Z??Ǒ?   
<h2>Dane domain din nhyehyɛe no akyi</h2>
<p>Domain din a ɛdannan no ne sɛ ɛbɛma kwan ma wɔasiesie IP address no akɔ domain din a ɛne no hyia no so.</p>    ??,3??.o?".???@-?"?:?j?*??H{?~   
<p>Kɔ <a href="https://my.contabo.com/rdns">https://my.contabo.com/rdns</a> na hyehyɛ sɛnea wɔakyerɛ wɔ aseɛ ha yi</p>    ????8???AіKO?t.?!TN߂A?A??hv?   
<p>Sɛnea ɛbɛyɛ a ɛbɛyɛ mmerɛw no, mede ubuntu softwea no instɔlehyɛn ne nhyehyɛe nhyehyɛe no too <a href="https://github.com/user-tax-dev/os/tree/main/ubuntu">github.com/user-tax-dev/os/tree/main/ubuntu</a> .</p>    ?ֲ?b?_[??X*:(?9???? Gઠ?0"??   
<p>Sɛ server a ɔde remena no nni reverse domain din anaasɛ reverse domain din no ne IP address a ɛwɔ server a ɔde remena no mu no nhyia a, server a ɛregye no betumi ahu email no sɛ spam anaasɛ ɔbɛpow.</p>    ?+J??sun?ž${??o7?t'?=s	^B?IF   
<img 9>
<p>Nkyerɛase a ɛwɔ parameters no mu ne nea edidi so yi</p>    ?ڨ`?e?-???9aQw?>??z??6?j??T!?  
<p>Mmirikatuo a ɛdi kan no bɛhyehyɛ <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> no ara na ɛde adwuma a wɔahyɛ da ayɛ ama foforɔyɛ a ɛyɛ ne ho bɛka ho. <code>crontab -l</code> betumi ahunu sɛ nkyerɛwdeɛ a ɛte saa wɔ hɔ sɛdeɛ ɛdidi soɔ yi.</p>    ???'U?V,?5`s?D%?y??A?W]???|\??   
<h2>Clone nhyehyeɛ akoraeɛ ops</h2>
<img 3>
<h2>Yɛ SSL abodin krataa a wontua hwee ma wo domain din</h2>
<p>Sɛ wode mail bɛmena a, ɛhia SSL abodin krataa ma encryption ne signing.</p>    ?y5M<r?[Yd?_ţ1B??P????ڥva?   
<p>Run <code>./chasquid/init.sh 123.com</code> bɛhyehyɛ no ankasa wɔ klike biako so (fa wo domain din a wode remena no si 123.com ananmu).</p>    ??Z\????Ƥu?bz??D?a????p'??F?   
<p>acme.sh yɛ adwinnade a wɔde wɔn nsa hyɛ ase a wɔde di dwuma wɔ ɔkwan a ɛyɛ adwuma so a wɔde di dwuma wɔ ɔkwan a ɛyɛ adwuma so, .</p>    ?\Kmڔ&EY?7?(mx?u???b?L?5??   
<p>Abodin krataa foforɔ bɛfrɛ <code>conf/reload/123.com.sh</code> script, sesa saa script yi, wobɛtumi de ahyɛdeɛ te sɛ <code>nginx -s reload</code> ho de ayɛ abodin krataa cache a ɛwɔ application a ɛfa ho no foforɔ.</p>    ?e???[e??@??uO?????%?2?	zR?   
<p>Awiei koraa no, wobetumi de asi hɔ sɛ address a wɔde amena no (a ɛka ho ne ɔkwan a wobɛfa so de address koro no ara abua).</p>    ?y????n?p?b?;?F\{????k7h? 0????   
<img 2>
<p>Di <a href="https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/">contabo nkyerɛkyerɛ no akyi: IPv6 nkitahodi a wode bɛka wo server no ho</a></p>    ?9Y'?8}ߢ????-?`?2n??
p?Fa$~?   
<p>Hwɛ Received wɔ email a edi kan no ti mu, na wobɛtumi ahunu sɛ address a ɔde amena no yɛ IPV6, a ɛkyerɛ sɛ wɔasiesie IPV6 nso yie.</p>    ??<UY????+?F̽^@;??ku????6xe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp" alt="" /></p>    ?????c??Y???!??P??w(l????5??2??  
<p>Sɛ server a ɛwɔ ssh so no kyerɛ a <code>Welcome to TinyCore 13!</code> (sɛnea wɔakyerɛ wɔ mfonini a ɛwɔ ase ha no mu no), ɛkyerɛ sɛ wonnya nhyehyɛɛ nhyehyɛe no. Yɛsrɛ wo, twa ssh no mu na twɛn simma kakraa bi na woasan akɔ mu bio.</p>    ??ȫ?[k'y^?X??_???J??ݵ?*#T?D|   
<p><strong>Sɛ wowɔ w’ankasa adwuma mailbox a wotua ho ka a, yɛsrɛ wo nsakra MX no na twa anammɔn yi so.</strong></p>    ??̟??q9JW?ڞG?>??C?
fsHa?j?P   
<p>Afei, kyerɛw verification code a email a wɔde kɔmaa no no nsa aka no.</p>    ?Ό}T)?>E=?c?-??v?its????Pބ?r   
<p>Mekamfo kyerɛ sɛ tɔ fi host a ɛwɔ saa ports yi a wɔabue na ɛboa ma wɔhyehyɛ reverse domain names.</p>    ?U???!m)f0??uΣG?o7?HVtS?????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp" alt="" /></p>    ???m? e7]Lo???_b??C%??>???X??   
<h2>Backup conf kɔ git akoraeɛ</h2>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp" alt="" /></p>    ???Y??'?Ȏ?)??̶A/;/???;??:`ŗy   
<p>Wɔhyɛ nyansa sɛ fa Gmail di dwuma de gye sɔhwɛ email ahorow de hwɛ sɛ nhyehyɛe ahorow no adi nkonim anaa.</p>    ?=???G?JzI>ʥ?'???`??P`F?Ӯ??3   
<p>Fa TXT kyerɛwtohɔ <code>_dmarc</code> , .</p>    ??Я?ߠuOgr??#Y(?\?3?9nֿ?z??   
<p>Sɛ <code>Welcome to Ubuntu 22.04.1 LTS</code> pue a, mfitiaseɛ no awie, na wobɛtumi akɔ so ayɛ anammɔn a ɛdidi soɔ yi.</p>    ????*Ao"`?,????Y??U?]SkӶp???1?   
<h2>DNS de SPF kyerɛwtohɔ ka ho</h2>
<p>SPF ( Sender Policy Framework ) yɛ mfiridwuma a wɔde di email mu nokware a wɔde siw email nsisi ano.</p>    ?;2??j?6???C??5=?&|?_x????;?b?)   
<p>SPF ma <code>_spf.user.tax</code></p>    ?O?O??顾??l???s??l?7?6?{?z?~   
<p>afei tu mmirika</p>    ?Q?,?ir????u???d?wt;0?ZU?,X?M?>   
<p>Hyehyɛ conf directory no mu na fa kɔ warehouse no mu</p>    ?,?7??"?Ku?????2&un?Ir??]_?   
<p>Run <code>direnv allow</code> ma instɔlehyɛn dependencies (wɔde direnv ahyɛ mu wɔ kan one-key initialization process no mu na wɔde hook aka shell no ho)</p>    ?jV?????ǔ????5??=L???c??t?VS   
<p>Sɛ nhwɛso no, SPF a ɛwɔ <code>user.tax</code> no te sɛ nea edidi so yi</p>    ƃ??0zn1?? ??BA??`>?k-?,\Z?   
<p>Sesa <code>/etc/netplan/01-netcfg.yaml</code> , fa nkyerɛwde kakraa bi ka ho sɛnea wɔakyerɛ wɔ mfonini a ɛwɔ ase ha no mu (Contabo VPS default nhyehyeɛ fael no wɔ saa nkyerɛwde yi dedaw, yi nsɛm fi mu kɛkɛ).</p>    ?_;?<̉f=Fx?  i???T??.?F?_??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp" alt="" /></p>    ?7?=???????d?bA??????????J+?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp" alt="" /></p>    ?tu????9? 4?????I0]о!???P?[   
<p>Sɛ wo domain din server no ntumi mmoa SPF type a, fa TXT type record ka ho kɛkɛ.</p>    ???Uk??vvJfQ???N??W?1?!?
dmP?   
<p>Sɛ nhyehyeɛ no wie a, wobɛtumi de email address foforɔ adi dwuma de email akɔ <code>i@user.tax</code> ne <code>any123@user.tax</code> de ahwɛ sɛ wobɛtumi anya email wɔ Gmail mu anaa.</p>    ???}??YLrT???ݥ?ܗr??9՜	?   
<p><code>grep chasquid /var/log/syslog</code> anaa <code>journalctl -xeu chasquid</code> betumi ahwɛ mfomso kyerɛwtohɔ no.</p>    ?@Ә??S?A??u?q&? ?v?,*sgH??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp" alt="" /></p>    ?j?v$?k?C-??Bݦ??R?4??a?????>?   
<p>Kɔ <a href="https://mail.google.com/mail/u/1/#settings/accounts">https://mail.google.com/mail/u/1/#settings/accounts</a> na klik &quot;Fa email address foforo ka ho&quot;.</p>    ?]?F?%?Y"?????_P?0????[M??Ke   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp" alt="" /></p>    ڜ? ??~?dЬ?^p"?}?y?43?	????Z   
<p>Sɛ ɛnte saa a, hwɛ chasquid log ( <code>grep chasquid /var/log/syslog</code> ).</p>    ?0?F?b?????[6D???????s?
??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp" alt="" /></p>    ߮?B?D?J?%???]?^?P??????f???   
<p>siesie / ne nea ɛkeka ho <code>/etc/sysctl.conf</code></p>    ??2???Ԟ3E,|??y???V??t??ߔ"9???<   
<p>Run ahyɛde a edidi so yi na fa klike biako install.</p>    ?^????~?%?t?4	?@7?K?j w"??W?5   
<img 6>
<p>Wobetumi de nea ɔde kɔmaa no aka ho</p>    ???^??PK??s??7<U????;w?Gf?=????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp" alt="" /></p>    ??N>??7]u????v_XI?[?s??k?oR   
<p>Afei run <code>systemctl restart chasquid</code> na san hyɛ ɔsom no ase.</p>    ?>???u$R???Bu>??T??JO/S(7???   
<p>Hwehwɛ wo DNS dwumadiefoɔ no firi <a href="https://github.com/acmesh-official/acme.sh/wiki/dnsapi">acme.sh dnsapi</a> , sesa <code>conf/conf.sh</code> .</p>    ??,NN???DR????Dz?s??F??5ظqζd   
<p>Wɔ aseɛ ha yi, yɛkyerɛ anammɔn anammɔn sɛdeɛ yɛbɛkyekyere yɛn ankasa mail server.</p>    ?ꁶn??w޶?ѭD????C?C)?@??B7??:   
<img 5>
<h2>Fa nea ɔde kɔmaa no ka ho</h2>
<p>dwane</p>    ??"???gb??㪼+?lJZ?ۃ?]O;??QO?   
<ul>
<li>ɔdefoɔ: SMTP dwumadie din</li>
<li>pass: SMTP asɛmfua a wɔde hyɛ mu</li>
<li>to: nea ogye no</li>
</ul>
<p>Wubetumi de sɔhwɛ email amena.</p>    ???]?D(#?????!v??8ꀂ?>Z?@L%?   
<p>Ɛhwɛ sɛ obi a ɔde nkrataa mena no yɛ nokware denam hwɛ a ɛhwɛ sɛ nea ɔde nkrataa mena no IP address ne domain din a ɔkyerɛ sɛ ɛyɛ no DNS kyerɛwtohɔ ahorow hyia, na ɛmma nsisifo ntumi mfa atoro email nkɔma.</p>    ??:???颕?m?ç???n???M蠘Ce   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp" alt="" /></p>    ??^?/f??`???M-}??zú???o($F?p??   
<h2>Sesa hostname a ɛwɔ chasquid.conf no</h2>
<p>Sesa <code>conf/chasquid/chasquid.conf</code> ma ɛnyɛ domain din a ɛdannan no boɔ.</p>    ????k<?I?m3i??K?O?*Oy?;L??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp" alt="" /></p>    ?[??r.p/܅ ???Q?	??G"2?/?^   
<h3>[Optional] Fi ase nkɔso tebea no</h3>
<p>Saa anammɔn yi yɛ nea obiara betumi apaw.</p>