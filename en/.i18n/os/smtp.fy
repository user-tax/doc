|       ?pD?l?8?ws?8(L佌?ev???p????  
<ul>
<li>0: Rapportearje falidaasjeresultaten foar alle berjochten</li>
<li>1: Rapportearje allinich berjochten dy't ferifikaasje mislearje</li>
<li>d: Rapportearje allinich mislearrings foar ferifikaasje fan domeinnamme</li>
<li>s: allinne rapportearje SPF ferifikaasje mislearrings</li>
<li>l: Rapportearje allinne DKIM ferifikaasje mislearrings</li>
</ul>
<h3>rua &amp; ruf</h3>
<ul>
<li>rua (Rapportearjende URI foar Aggregate rapporten): E-postadres foar it ûntfangen fan aggregearre rapporten</li>
<li>ruf (Rapportearjende URI foar forensyske rapporten): e-postadres om detaillearre rapporten te ûntfangen</li>
</ul>
<h2>Foegje MX-records ta om e-mails troch te stjoeren nei Google Mail</h2>
<p>Om't ik gjin fergese bedriuwspostfak koe fine dy't universele adressen stipet (Catch-All, kin alle e-postberjochten ûntfange dy't nei dizze domeinnamme stjoerd binne, sûnder beheiningen op foarheaksels), brûkte ik Chasquid om alle e-postberjochten troch te stjoeren nei myn Gmail-postfak.</p>    Z?I?`O???J??<?ۜc(?ƀ?0??'??   
<p>Yn it folgjende sil ik Contabo's VPS as foarbyld nimme om te demonstrearjen hoe't jo jo eigen e-posttsjinner bouwe kinne.</p>    6???ZE?k߀P???T???Ӡ??y?S??   
<h2>E-posthantekening DKIM ynstelle</h2>
<p>DKIM wurdt brûkt om e-posthantekeningen te ferstjoeren om foar te kommen dat brieven as ûnpost behannele wurde.</p>    ?f=??9M????,??ƿ?wɨ"&aj?l??S   
<p><code>v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all</code></p>    	z??????	9?#.??Oœ?2J@u.?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp" alt="" /></p>    
 	_??8????*??7Jm?j?7??.X?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp" alt="" /></p>    v??H??v-Hv????W?;?|??Kn-???'   
<p>Meitsje earst in privee pakhús</p>    ?|=?.??2?^??w?j6??}Y'?Ϩ$?pe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp" alt="" /></p>    B??$??eb??u??`V???e???4?)?   
<p>Tink derom dat ik hjir <code>include:_spf.google.com</code> haw, om't ik letter <code>i@user.tax</code> sil konfigurearje as it ferstjoeradres yn 'e postfak fan Google.</p>    E?????<??ܶ9??????<lJ?gP??;????   
<p><code>*</code> jout alle e-mails oan, <code>i</code> is it e-mailadres foarheaksel fan de stjoerende brûker hjirboppe oanmakke. Om e-post troch te stjoeren, moat elke brûker in rigel tafoegje.</p>    ???+&?gI??E??:-?TE?R???^?DG?ض??   
<p>As jo ​​kieze Euro as de faluta fan oankeap, de priis sil wêze goedkeaper (in server mei 8GB ûnthâld en 4 CPUs kostet likernôch 529 yuan per jier, en de earste ynstallaasje fergoeding is fergees foar ien jier).</p>    ?Z????x?2?+ճGh??RA2?4???C|?   
<h2>Stjoer in e-post nei i@user.tax mei Google Mail</h2>
<p>Neidat Google Mail de e-post ûntfangt, is it natuerlik om te antwurdzjen mei <code>i@user.tax</code> ynstee fan i.user.tax@gmail.com.</p>    ?t???NJ?` ???????06@??Uѭ?3??   
<img 0>
<p>Sineeske brûkers, brûk dan it folgjende kommando ynstee, en de taal, tiidsône, ensfh. wurdt automatysk ynsteld.</p>    ???O?P?????v??g?? ??!t?D???lbe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp" alt="" /></p>    $?@?w???N????4?i?{?P????}m~   
<h2>Stjoer in test-e-post om te kontrolearjen oft de konfiguraasje suksesfol is</h2>
<p>Fier <code>ops/chasquid</code> yn</p>    ???? ?ۆ??c:[>$??????S??K?ض??l   
<img 4>
<p>It paad foar it oanmakke sertifikaat is wat as <code>/mnt/www/.acme.sh/123.com_ecc。</code></p>    %|????lG???;ت?{??Ǽ?E7 ??fe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp" alt="" /></p>    &??9? ?????????h???EN???|?̦Y   
<h2>Ubuntu systeem konfiguraasje</h2>
<p>It bestjoeringssysteem hjir is Ubuntu 22.04</p>    'u?-?-??:h*????*?2zg???@??U?   
<h3>Kontrolearje dat it wachtwurd goed is ynsteld</h3>
<img 7>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp" alt="" /></p>    '????_yU?j??????!???????2???   
<p>Faak brûkte iepenbiere wolken hawwe dizze havens standert blokkearre, en it kin mooglik wêze om se te iepenjen troch in wurkopdracht út te jaan, mar it is nei alle gedachten tige lestich.</p>    (???2?T?G??U?=?c5??????#d??   
<p>Foegje dan it MX-record ta (ik wiis direkt nei it adres fan 'e omkearde domeinnamme hjir, lykas werjûn yn' e earste rigel yn 'e figuer hjirûnder).</p>    )?U9ؾ1?a?'?R0]?*?Jo???v??21v   
<img 1>
<h3>Contabo stelt IPV6 yn</h3>
<p>Aktivearje IPV6 sadat SMTP ek e-mails mei IPV6-adressen ferstjoere kin.</p>    )Q???VmV;u?????ͽ8B?	
L| ?z   
    *&?]p/?<WO?-?I??\??B?x?9#?!c   
<p><code>conf/chasquid/domains/user.tax/aliases</code> bewurkje, trochstjoere postfak ynstelle</p>    ,'? ?/a??Lޣ?Xf{????0??K? ?1   
<p>Feroarje of foegje de folgjende rigels ta</p>    2?5ǜO\?=???z-??????d?????*oFP?   
<p>De ynhâld is as folget</p>    2?I*<kucX1Nկ??*?VFr?S?;dJޱx??   
<p>Nei it ynstellen fan de omkearde domeinnamme, tink derom dat jo de foarút resolúsje fan 'e domeinnamme ipv4 en ipv6 oan 'e tsjinner konfigurearje.</p>    5?-??ϸ?'?
W *k2zfF7?lX^?&?GJ???   
<p>Op dizze manier hawwe wy de oprjochting fan 'e SMTP-posttsjinner foltôge en tagelyk Google Mail brûke om e-post te ferstjoeren en te ûntfangen.</p>    6%p4??g5?+f???m.?i\?Y?9x??TA >   
<p>Klikje dan op &quot;Orizjinele e-post sjen litte&quot;</p>    63?g?:??X???C@?Q????Doe:?<:?H?{m   
<img 8>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp" alt="" /></p>    9ڕ?O/;??9??cƷ??v>?G???cP?-?Q   
<p>De tastân fan normale operaasje is lykas werjûn yn 'e figuer hjirûnder</p>    =E?f?o???I?????????F,??x?>???h   
<p>It ynstellen fan in omkearde domeinnamme kin foarkomme dat e-mails wurde identifisearre as spam.</p>    ?O?-B???-???[,-????Q?a?iT#@o?m0   
<p><code>v=spf1 a:smtp.user.tax ~all</code></p>    A?????T?3|7c?b?ve?B?"_?
??r?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp" alt="" /></p>    F?Ra9/]???I^??@i??????0G??r   
<p>Wy brûke <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> om sertifikaten te generearjen.</p>    G|Tۍ?։0?a??????g??$??;??jC?   <h1>Bou jo eigen SMTP-postferstjoerserver</h1>
<h2>preambule</h2>
<p>SMTP kin direkt tsjinsten keapje fan wolkleveransiers, lykas:</p>    M?XOqh?N_jw?W?y6o?'?E(!:?????v   
<p>Nei't it kommando mei súkses rint, wurde jo frege om it DKIM-record yn te stellen (lykas hjirûnder werjûn).</p>    Q<qV???dB=6U????v?=??M?w\TMee   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp" alt="" /></p>    U?3i?O??捣~?z????z??x.????]e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp" alt="" /></p>    V	?????+t???^?j??s???}?HY'??   
<p>As de e-post wurdt ûntfongen, sil de ûntfangende tsjinner omkearde domeinnamme-analyse útfiere op it IP-adres fan 'e stjoerende tsjinner om te befêstigjen oft de stjoerende tsjinner in jildige omkearde domeinnamme hat.</p>    W0?!?'{?'??[p???7Xr%?l????????iH?   
<h2>Bou SMTP-tsjinner mei chasquid</h2>
<p><a href="https://github.com/albertito/chasquid">chasquid</a> is in iepen boarne SMTP-tsjinner skreaun yn Go-taal.</p>    W?SJ?۸Ͽ??mA?C}??\̮r?PNo?+v36   
<p>De betsjutting fan elke parameter is as folget</p>    X[????
ҋa??e^??[=?e?A]d}~0???   
<p>By it pleatsen fan in bestelling, opmerking <code>prefer AMD</code> , en de tsjinner mei AMD CPU sil hawwe bettere prestaasjes.</p>    X???߶g=????{?????????d??5/p?   
<p>Nei't de konfiguraasje suksesfol is, kinne jo <code>curl 6.ipw.cn</code> brûke om it ipv6-adres fan jo eksterne netwurk te besjen.</p>    Yn??B_??W9?9?nJGYV? ?Y=@???Gb???   
<h2>DNS konfiguraasje DMARC</h2>
<p>DMARC is de ôfkoarting fan (Domain-based Message Authentication, Reporting &amp; Conformance).</p>    `Q8Y?7??,L???(X??Ʋ&D	??????   
<p>As ferfanging foar de âlde e-postserverprogramma's lykas Postfix en Sendmail, is chasquid ienfâldiger en makliker te brûken, en it is ek makliker foar sekundêre ûntwikkeling.</p>    `?G?4?Xj????}?8?a?????F??ay$?]?F   
<p>Hjir advisearje ik <a href="https://contabo.com">Contabo</a> .</p>    a?# Rr?ͥ?c???*??>?As1?>p?)}???%   
<p>De mapstruktuer is as folget:</p>    e}?????e˃?h??_???Y-?
>??َb^Uĥ   
<h3>DKIM</h3>
<p>Lykas yn 'e ûndersteande figuer te sjen is, toant de orizjinele e-postside fan Gmail DKIM, wat betsjut dat de DKIM-konfiguraasje suksesfol is.</p>    g?0?Q?-k-B?????j-???㻒???~On?(   
<p>Start dan de tsjinner op 'e nij.</p>    j?Q????mK?????W???&?P?!?8?lhl   
<h2>Besjoch tsjinststatus en logs</h2>
<p><code>systemctl status chasquid</code> Besjoch tsjinststatus.</p>    kr
5?????4[82O?%??,?J	wQe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp" alt="" /></p>    m??O?fFȟ?%?~,b?Sn?37}???1B?{z   
<h2>Server seleksje</h2>
<p>De sels-hosted SMTP-tsjinner fereasket in iepenbiere IP mei havens 25, 456, en 587 iepen.</p>    pE?????,?????@??*M#??h???)?   
<p>Fier de konfiguraasje warehouse ops yn, run <code>./ssl.sh</code> , en in <code>conf</code> map sil oanmakke wurde yn de boppeste map.</p>    t?̏s?@7??B? V???v?ݯ?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp" alt="" /></p>    y?	??U,Ճ?&?;ks]?f????-BuW???   
<p>Run dan <code>./ssl.sh 123.com</code> om <code>123.com</code> en <code>*.123.com</code> sertifikaten te generearjen foar jo domeinnamme.</p>    y?o??y?|?uভ?!?O???b?Vʕ_'?z???   
<p>Nei it tafoegjen fan de brûker sil <code>chasquid/domains/user.tax/users</code> wurde bywurke, tink om it yn te tsjinjen oan it pakhús.</p>    zEz?k?.'ۆ?qo??CӚx? ??mL!vYe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp" alt="" /></p>    zI?c?H???lbSi̕͡9A?ԣ??????#e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp" alt="" /></p>    |?L?65x????????:80??=%??
P1 ?a   
<p>Bygelyks, ik meitsje in reservekopy fan de conf map nei myn eigen github proses as folget</p>    #???Z?!?{)?#*mm??Ӣ?!S?<?????   
<p>It wurdt brûkt om SPF-bounces te fangen (miskien feroarsake troch konfiguraasjeflaters, of immen oars docht as jo om spam te stjoeren).</p>    ?n??? H+?B68?;"???)?S??¼̝?y   
<p>Contabo is in hostingprovider basearre yn München, Dútslân, oprjochte yn 2003 mei heul konkurrearjende prizen.</p>    ??w??????B?EG????%>??h???MnM?M   
<p>Foegje gewoan in TXT-record ta oan jo DNS (lykas hjirûnder werjûn).</p>    ?ϱ@W?a?t#?/d????u?D?v??Y??e0/?   
<h3>TLS standert fersifering</h3>
<p>Lykas werjûn yn 'e ôfbylding hjirûnder, is d'r dit lytse slot, wat betsjut dat it SSL-sertifikaat mei súkses ynskeakele is.</p>    ?>?vH??o?? ?Ap
p???f?e"??ve   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp" alt="" /></p>    ?sO?s?o?NR??Ac?G8??>?6cǈ(w?l   
<p>It tafoegjen fan SPF-records kin foarkomme dat e-mails safolle mooglik identifisearre wurde as spam.</p>    ? >v?Ii?J???[F)??F?f?B0O???  
<ul>
<li>gjin: Gjin aksje wurdt nommen, allinnich it ferifikaasjeresultaat wurdt weromfierd nei de stjoerder fia de e-postmeldingsmeganisme.</li>
<li>Quarantaine: Set de e-post dy't de ferifikaasje net trochjûn hat yn 'e spam-map, mar sil de e-post net direkt ôfwize.</li>
<li>reject: Direkt ôfwize e-mails dy't mislearre ferifikaasje.</li>
</ul>
<h3>fo (failopsjes)</h3>
<p>Spesifiseart de hoemannichte ynformaasje werom troch it rapportaazjemeganisme. It kin ynsteld wurde op ien fan 'e folgjende wearden:</p>    ?^?k? A??]t??????W?Ty?Ubsw?K  
<ul>
<li><a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html">Amazon SES SMTP</a></li>
<li><a href="https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods">Ali wolk e-post push</a></li>
</ul>
<p>Jo kinne ek jo eigen e-posttsjinner bouwe - ûnbeheind ferstjoeren, lege totale kosten.</p>    ?)??~z?uE???R3Q???????e?X?2ϖ*?   
<h3>p (belied)</h3>
<p>Jout oan hoe't e-posten wurde behannele dy't SPF (Sender Policy Framework) of DKIM (DomainKeys Identified Mail) ferifikaasje mislearje. De parameter p kin ynsteld wurde op ien fan trije wearden:</p>    ?i??
0?]??P????u???)R??甄A+??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp" alt="" /></p>    ??|?T?#]1g?8D??N???????>?Z??Ǒ?   
<h2>Reverse domeinnamme konfiguraasje</h2>
<p>De omkearde domeinnamme is om it IP-adres op te lossen nei de oerienkommende domeinnamme.</p>    ??,3??.o?".???@-?"?:?j?*??H{?   
<p>Besykje <a href="https://my.contabo.com/rdns">https://my.contabo.com/rdns</a> en konfigurearje lykas hjirûnder werjûn</p>    ????8???AіKO?t.?!TN߂A?A??hv?   
<p>Foar gemak set ik de ynstallaasje en systeemkonfiguraasje fan ubuntu-software yn <a href="https://github.com/user-tax-dev/os/tree/main/ubuntu">github.com/user-tax-dev/os/tree/main/ubuntu</a> .</p>    ?ֲ?b?_[??X*:(?9???? Gઠ?0"??   
<p>As de stjoerende tsjinner gjin omkearde domeinnamme hat of as de omkearde domeinnamme net oerienkomt mei it IP-adres fan de ferstjoerende tsjinner, kin de ûntfangende tsjinner de e-post as spam werkenne of it ôfwize.</p>    ?+J??sun?ž${??o7?t'?=s	^B?I=   
<img 9>
<p>De betsjutting fan 'e parameters is as folget</p>    ?ڨ`?e?-???9aQw?>??z??6?j??T!??   
<p>De earste run sil automatysk <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> ynstallearje en in plande taak tafoegje foar automatyske fernijing. <code>crontab -l</code> kin sjen dat der sa'n rigel is as folget.</p>    ???'U?V,?5`s?D%?y??A?W]???|\??   
<h2>Clone de konfiguraasje repository ops</h2>
<img 3>
<h2>Generearje in fergees SSL-sertifikaat foar jo domeinnamme</h2>
<p>It ferstjoeren fan e-post fereasket in SSL-sertifikaat foar fersifering en ûndertekening.</p>    ?y5M<r?[Yd?_ţ1B??P????ڥva?   
<p>Run <code>./chasquid/init.sh 123.com</code> sil automatysk ynstalleare wurde mei ien klik (ferfang 123.com mei jo stjoerende domeinnamme).</p>    ??Z\????Ƥu?bz??D?a????p'??FU   
<p>acme.sh is in iepen boarne automatisearre ark foar sertifikaatûndertekening,</p>    ?\Kmڔ&EY?7?(mx?u???b?L?5??   
<p>Sertifikaatfernijing sil <code>conf/reload/123.com.sh</code> skript neame, dit skript bewurkje, jo kinne kommando's tafoegje lykas <code>nginx -s reload</code> om de sertifikaatcache fan relatearre applikaasjes te ferfarskjen.</p>    ?e???[e??@??uO?????%?2?	zR?   
<p>Uteinlik kin it ynsteld wurde as it standert stjoerderadres (tegearre mei de opsje om te antwurdzjen mei itselde adres).</p>    ?y????n?p?b?;?F\{????k7h? 0????   
<img 2>
<p>Folgje op mei <a href="https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/">it kontakttutorial: IPv6-ferbining tafoegje oan jo tsjinner</a></p>    ?9Y'?8}ߢ????-?`?2n??
p?Fa$~?   
<p>Kontrolearje de Untfongen yn 'e kop fan' e orizjinele e-post, en jo kinne sjen dat it stjoerderadres IPV6 is, wat betsjut dat IPV6 ek mei súkses konfigureare is.</p>    ??<UY????+?F̽^@;??ku????6xe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp" alt="" /></p>    ?????c??Y???!??P??w(l????5??2???   
<p>As de tsjinner op ssh werjûn <code>Welcome to TinyCore 13!</code> (lykas werjûn yn 'e ôfbylding hjirûnder), betsjut it dat it systeem noch net ynstalleare is. Verbreken asjebleaft ssh en wachtsje in pear minuten om wer oan te melden.</p>    ??ȫ?[k'y^?X??_???J??ݵ?*#T?D?   
<p><strong>As jo ​​​​jo eigen betelle saaklike postfak hawwe, wizigje asjebleaft de MX net en sla dizze stap oer.</strong></p>    ??̟??q9JW?ڞG?>??C?
fsHa?j?^   
<p>Fier dan de ferifikaasjekoade yn ûntfongen troch de e-post wêrnei't trochstjoerd is.</p>    ?Ό}T)?>E=?c?-??v?its????Pބ?z   
<p>Ik advisearje te keapjen fan in host dy't dizze havens iepen hat en stipet it ynstellen fan omkearde domeinnammen.</p>    ?U???!m)f0??uΣG?o7?HVtS?????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp" alt="" /></p>    ???m? e7]Lo???_b??C%??>???X??   
<h2>Reservekopy conf nei git repository</h2>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp" alt="" /></p>    ???Y??'?Ȏ?)??̶A/;/???;??:`ŗ?   
<p>It is oan te rieden om Gmail te brûken om test-e-mails te ûntfangen om te kontrolearjen oft de konfiguraasjes suksesfol binne.</p>    ?=???G?JzI>ʥ?'???`??P`F?Ӯ??1   
<p>TXT-record taheakje <code>_dmarc</code> ,</p>    ??Я?ߠuOgr??#Y(?\?3?9nֿ?z??   
<p>As <code>Welcome to Ubuntu 22.04.1 LTS</code> ferskynt, is de inisjalisaasje foltôge, en jo kinne trochgean mei de folgjende stappen.</p>    ????*Ao"`?,????Y??U?]SkӶp???1?   
<h2>DNS tafoegje SPF-record</h2>
<p>SPF (Sender Policy Framework) is in technology foar e-postferifikaasje brûkt om e-postfraude te foarkommen.</p>    ?;2??j?6???C??5=?&|?_x????;?b?+   
<p>SPF foar <code>_spf.user.tax</code></p>    ?O?O??顾??l???s??l?7?6?{?z?~   
<p>dan rinne</p>    ?Q?,?ir????u???d?wt;0?ZU?,X?M?7   
<p>Fier de conf-map yn en yntsjinje nei it pakhús</p>    ?,?7??"?Ku?????2&un?Ir??]_?   
<p>Run <code>direnv allow</code> om ôfhinklikens te ynstallearjen (direnv is ynstalleare yn it foarige inisjalisaasjeproses mei ien kaai en in heak is tafoege oan 'e shell)</p>    ?jV?????ǔ????5??=L???c??t?V?   
<p>Bygelyks, de SPF fan <code>user.tax</code> is as folget</p>    ƃ??0zn1?? ??BA??`>?k-?,\Z?   
<p>Bewurkje <code>/etc/netplan/01-netcfg.yaml</code> , foegje in pear rigels ta lykas werjûn yn 'e ûndersteande figuer (Contabo VPS standert konfiguraasjetriem hat al dizze rigels, just uncomment se).</p>    ?_;?<̉f=Fx?  i???T??.?F?_??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp" alt="" /></p>    ?7?=???????d?bA??????????J+?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp" alt="" /></p>    ?tu????9? 4?????I0]о!???P?b   
<p>As jo ​​domeinnammetsjinner gjin SPF-type stipet, foegje dan gewoan TXT-typerecord ta.</p>    ???Uk??vvJfQ???N??W?1?!?
dmP?   
<p>Neidat de konfiguraasje foltôge is, kinne jo oare e-adressen brûke om e-mails te stjoeren nei <code>i@user.tax</code> en <code>any123@user.tax</code> om te sjen oft jo e-mails kinne ûntfange yn Gmail.</p>    ???}??YLrT???ݥ?ܗr??9՜	t   
<p><code>grep chasquid /var/log/syslog</code> of <code>journalctl -xeu chasquid</code> kin it flaterlog besjen.</p>    ?@Ә??S?A??u?q&? ?v?,*sgH??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp" alt="" /></p>    ?j?v$?k?C-??Bݦ??R?4??a?????>?   
<p>Gean nei <a href="https://mail.google.com/mail/u/1/#settings/accounts">https://mail.google.com/mail/u/1/#settings/accounts</a> en klikje op &quot;Noch in e-postadres tafoegje&quot;.</p>    ?]?F?%?Y"?????_P?0????[M??Ke   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp" alt="" /></p>    ڜ? ??~?dЬ?^p"?}?y?43?	????`   
<p>As net, kontrolearje dan it chasquid-log ( <code>grep chasquid /var/log/syslog</code> ).</p>    ?0?F?b?????[6D???????s?
??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp" alt="" /></p>    ߮?B?D?J?%???]?^?P??????f??%   
<p><code>/etc/sysctl.conf</code></p>    ??2???Ԟ3E,|??y???V??t??ߔ"9???I   
<p>Rinne it folgjende kommando út om te ynstallearjen mei ien klik.</p>    ?^????~?%?t?4	?@7?K?j w"??W?&   
<img 6>
<p>Kin taheakje stjoerder</p>    ???^??PK??s??7<U????;w?Gf?=????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp" alt="" /></p>    ??N>??7]u????v_XI?[?s??k?oY   
<p>Run dan <code>systemctl restart chasquid</code> om de tsjinst opnij te begjinnen.</p>    ?>???u$R???Bu>??T??JO/S(7???   
<p>Fyn jo DNS-oanbieder fan <a href="https://github.com/acmesh-official/acme.sh/wiki/dnsapi">acme.sh dnsapi</a> , bewurkje <code>conf/conf.sh</code> .</p>    ??,NN???DR????Dz?s??F??5ظqζX   
<p>Hjirûnder litte wy stap foar stap sjen hoe't jo ús eigen e-posttsjinner bouwe.</p>    ?ꁶn??w޶?ѭD????C?C)?@??B7??2   
<img 5>
<h2>Foegje stjoerder ta</h2>
<p>rinne</p>    ??"???gb??㪼+?lJZ?ۃ?]O;??QO?   
<ul>
<li>brûker: SMTP brûkersnamme</li>
<li>pass: SMTP wachtwurd</li>
<li>oan: ûntfanger</li>
</ul>
<p>Jo kinne in test-e-post stjoere.</p>    ???]?D(#?????!v??8ꀂ?>Z?@L%?   
<p>It ferifiearret de identiteit fan in e-poststjoerder troch te kontrolearjen dat it IP-adres fan de stjoerder oerienkomt mei de DNS-records fan 'e domeinnamme dy't it beweart te wêzen, foarkomt dat fraudeurs falske e-mails ferstjoere.</p>    ??:???颕?m?ç???n???M蠘Ce   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp" alt="" /></p>    ??^?/f??`???M-}??zú???o($F?p??   
<h2>Bewurkje de hostnamme fan chasquid.conf</h2>
<p>Feroarje <code>conf/chasquid/chasquid.conf</code> oan 'e wearde fan 'e omkearde domeinnamme.</p>    ????k<?I?m3i??K?O?*Oy?;L??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp" alt="" /></p>    ?[??r.p/܅ ???Q?	??G"2?/?_   
<h3>[Opsjoneel] Inisjalisearje de ûntwikkelingsomjouwing</h3>
<p>Dizze stap is opsjoneel.</p>