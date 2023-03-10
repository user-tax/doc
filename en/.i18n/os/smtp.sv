|       ?pD?l?8?ws?8(L佌?ev???p????  
<ul>
<li>0: Rapportera valideringsresultat för alla meddelanden</li>
<li>1: Rapportera endast meddelanden som misslyckas med verifiering</li>
<li>d: Rapportera endast fel på domännamnsverifiering</li>
<li>s: rapportera endast SPF-verifieringsfel</li>
<li>l: Rapportera endast DKIM-verifieringsfel</li>
</ul>
<h3>rua &amp; ruf</h3>
<ul>
<li>rua (Rapporterings-URI för samlade rapporter): E-postadress för att ta emot sammanställda rapporter</li>
<li>ruf (Reporting URI for Forensic reports): e-postadress för att få detaljerade rapporter</li>
</ul>
<h2>Lägg till MX-poster för att vidarebefordra e-post till Google Mail</h2>
<p>Eftersom jag inte kunde hitta en gratis företagspostlåda som stöder universella adresser (Catch-All, kan ta emot alla e-postmeddelanden som skickas till detta domännamn, utan begränsningar för prefix), använde jag chasquid för att vidarebefordra alla e-postmeddelanden till min Gmail-postlåda.</p>    Z?I?`O???J??<?ۜc(?ƀ?0??'?t   
<p>I det följande ska jag ta Contabos VPS som exempel för att demonstrera hur man bygger sin egen mailserver.</p>    6???ZE?k߀P???T???Ӡ??y?S??   
<h2>Konfigurera e-postsignatur DKIM</h2>
<p>DKIM används för att skicka e-postsignaturer för att förhindra att brev behandlas som skräppost.</p>    ?f=??9M????,??ƿ?wɨ"&aj?l??S   
<p><code>v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all</code></p>    	z??????	9?#.??Oœ?2J@u.?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp" alt="" /></p>    
 	_??8????*??7Jm?j?7??.X?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp" alt="" /></p>    v??H??v-Hv????W?;?|??Kn-???%   
<p>Skapa ett privat lager först</p>    ?|=?.??2?^??w?j6??}Y'?Ϩ$?pe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp" alt="" /></p>    B??$??eb??u??`V???e???4?)?   
<p>Observera att jag har <code>include:_spf.google.com</code> här, eftersom jag kommer att konfigurera <code>i@user.tax</code> som avsändningsadress i Googles brevlåda senare.</p>    E?????<??ܶ9??????<lJ?gP??;????   
<p><code>*</code> indikerar alla e-postmeddelanden, <code>i</code> är e-postadressprefixet för den avsändande användaren som skapats ovan. För att vidarebefordra e-post måste varje användare lägga till en rad.</p>    ???+&?gI??E??:-?TE?R???^?DG?ض??   
<p>Om du väljer Euro som inköpsvaluta blir priset billigare (en server med 8 GB minne och 4 processorer kostar cirka 529 yuan per år, och den initiala installationsavgiften är gratis i ett år).</p>    ?Z????x?2?+ճGh??RA2?4???C|?   
<h2>Skicka ett e-postmeddelande till i@user.tax med Google Mail</h2>
<p>Efter att Google Mail tagit emot posten är det naturligt att vilja svara med <code>i@user.tax</code> istället för i.user.tax@gmail.com.</p>    ?t???NJ?` ???????06@??Uѭ?3??   
<img 0>
<p>Kinesiska användare, använd följande kommando istället, så ställs språket, tidszonen etc. in automatiskt.</p>    ???O?P?????v??g?? ??!t?D???lbe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp" alt="" /></p>    $?@?w???N????4?i?{?P????}m}   
<h2>Skicka ett testmail för att kontrollera om konfigurationen är framgångsrik</h2>
<p>Ange <code>ops/chasquid</code></p>    ???? ?ۆ??c:[>$??????S??K?ض??v   
<img 4>
<p>Sökvägen för det genererade certifikatet är ungefär <code>/mnt/www/.acme.sh/123.com_ecc。</code></p>    %|????lG???;ت?{??Ǽ?E7 ??fe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp" alt="" /></p>    &??9? ?????????h???EN???|?̦R   
<h2>Ubuntu systemkonfiguration</h2>
<p>Operativsystemet här är Ubuntu 22.04</p>    'u?-?-??:h*????*?2zg???@??U?   
<h3>Kontrollera att lösenordet är korrekt inställt</h3>
<img 7>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp" alt="" /></p>    '????_yU?j??????!???????2???   
<p>Vanligt använda offentliga moln har blockerat dessa portar som standard, och det kan vara möjligt att öppna dem genom att utfärda en arbetsorder, men det är trots allt väldigt besvärligt.</p>    (???2?T?G??U?=?c5??????#d??   
<p>Lägg sedan till MX-posten (jag pekar direkt på adressen till det omvända domännamnet här, som visas på första raden i figuren nedan).</p>    )?U9ؾ1?a?'?R0]?*?Jo???v??21?   
<img 1>
<h3>Contabo möjliggör IPV6</h3>
<p>Aktivera IPV6 så att SMTP även kan skicka e-postmeddelanden med IPV6-adresser.</p>    )Q???VmV;u?????ͽ8B?	
L| ?z   
    *&?]p/?<WO?-?I??\??B?x?9#?!o   
<p>Redigera <code>conf/chasquid/domains/user.tax/aliases</code> , ställ in postlåda för vidarebefordran</p>    ,'? ?/a??Lޣ?Xf{????0??K? ?/   
<p>Ändra eller lägg till följande rader</p>    2?5ǜO\?=???z-??????d?????*oFP?#   
<p>Innehållet är som följer</p>    2?I*<kucX1Nկ??*?VFr?S?;dJޱx??   
<p>Efter att ha ställt in det omvända domännamnet, kom ihåg att konfigurera vidareupplösningen för domännamnet ipv4 och ipv6 till servern.</p>    5?-??ϸ?'?
W *k2zfF7?lX^?&?GJ???   
<p>På så sätt har vi slutfört etableringen av SMTP-postservern och använder samtidigt Google Mail för att skicka och ta emot e-post.</p>    6%p4??g5?+f???m.?i\?Y?9x??TA 9   
<p>Klicka sedan på &quot;Visa original e-post&quot;</p>    63?g?:??X???C@?Q????Doe:?<:?H?{m   
<img 8>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp" alt="" /></p>    9ڕ?O/;??9??cƷ??v>?G???cP?-?D   
<p>Tillståndet för normal drift är som visas i figuren nedan</p>    =E?f?o???I?????????F,??x?>???o   
<p>Att ställa in ett omvänt domännamn kan förhindra att e-postmeddelanden identifieras som skräppost.</p>    ?O?-B???-???[,-????Q?a?iT#@o?m0   
<p><code>v=spf1 a:smtp.user.tax ~all</code></p>    A?????T?3|7c?b?ve?B?"_?
??r?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp" alt="" /></p>    F?Ra9/]???I^??@i??????0G??s   
<p>Vi använder <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> för att generera certifikat.</p>    G|Tۍ?։0?a??????g??$??;??jC?   <h1>Bygg din egen SMTP-postsändningsserver</h1>
<h2>inledning</h2>
<p>SMTP kan köpa tjänster direkt från molnleverantörer, såsom:</p>    M?XOqh?N_jw?W?y6o?'?E(!:?????f   
<p>När kommandot har körts kommer du att uppmanas att ställa in DKIM-posten (som visas nedan).</p>    Q<qV???dB=6U????v?=??M?w\TMee   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp" alt="" /></p>    U?3i?O??捣~?z????z??x.????]e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp" alt="" /></p>    V	?????+t???^?j??s???}?HY'??   
<p>När e-posten tas emot kommer den mottagande servern att utföra omvänd domännamnsanalys på den sändande serverns IP-adress för att bekräfta om den sändande servern har ett giltigt omvänt domännamn.</p>    W0?!?'{?'??[p???7Xr%?l????????iH?   
<h2>Bygg SMTP-server med chasquid</h2>
<p><a href="https://github.com/albertito/chasquid">chasquid</a> är en SMTP-server med öppen källkod skriven på Go-språket.</p>    W?SJ?۸Ͽ??mA?C}??\̮r?PNo?+v33   
<p>Betydelsen av varje parameter är följande</p>    X[????
ҋa??e^??[=?e?A]d}~0???   
<p>När du gör en beställning, anmärkning <code>prefer AMD</code> , och servern med AMD CPU kommer att ha bättre prestanda.</p>    X???߶g=????{?????????d??5/p?   
<p>När konfigurationen har lyckats kan du använda <code>curl 6.ipw.cn</code> för att se ipv6-adressen för ditt externa nätverk.</p>    Yn??B_??W9?9?nJGYV? ?Y=@???Gb???   
<h2>DNS-konfiguration DMARC</h2>
<p>DMARC är förkortningen av (Domain-based Message Authentication, Reporting &amp; Conformance).</p>    `Q8Y?7??,L???(X??Ʋ&D	??????   
<p>Som ett substitut för de gamla e-postserverprogrammen som Postfix och Sendmail är chasquid enklare och enklare att använda, och det är också lättare för sekundär utveckling.</p>    `?G?4?Xj????}?8?a?????F??ay$?]?J   
<p>Här rekommenderar jag <a href="https://contabo.com">Contabo</a> .</p>    a?# Rr?ͥ?c???*??>?As1?>p?)}???*   
<p>Katalogstrukturen är som följer:</p>    e}?????e˃?h??_???Y-?
>??َb^UĔ   
<h3>DKIM</h3>
<p>Som visas i bilden nedan visar Gmails ursprungliga e-postsida DKIM, vilket betyder att DKIM-konfigurationen är framgångsrik.</p>    g?0?Q?-k-B?????j-???㻒???~On?    
<p>Starta sedan om servern.</p>    j?Q????mK?????W???&?P?!?8?lhq   
<h2>Visa tjänstens status och loggar</h2>
<p><code>systemctl status chasquid</code> Visa tjänstens status.</p>    kr
5?????4[82O?%??,?J	wQe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp" alt="" /></p>    m??O?fFȟ?%?~,b?Sn?37}???1B?{w   
<h2>Serverval</h2>
<p>Den självvärdade SMTP-servern kräver en offentlig IP med portarna 25, 456 och 587 öppna.</p>    pE?????,?????@??*M#??h???)?   
<p>Gå in i konfigurationslagret, kör <code>./ssl.sh</code> och en <code>conf</code> mapp kommer att skapas i den övre katalogen.</p>    t?̏s?@7??B? V???v?ݯ?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp" alt="" /></p>    y?	??U,Ճ?&?;ks]?f????-BuW???   
<p>Kör sedan <code>./ssl.sh 123.com</code> för att generera <code>123.com</code> och <code>*.123.com</code> certifikat för ditt domännamn.</p>    y?o??y?|?uভ?!?O???b?Vʕ_'?z???   
<p>Efter att ha lagt till användaren kommer <code>chasquid/domains/user.tax/users</code> att uppdateras, kom ihåg att skicka in det till lagret.</p>    zEz?k?.'ۆ?qo??CӚx? ??mL!vYe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp" alt="" /></p>    zI?c?H???lbSi̕͡9A?ԣ??????#e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp" alt="" /></p>    |?L?65x????????:80??=%??
P1 ?e   
<p>Till exempel säkerhetskopierar jag conf-mappen till min egen github-process enligt följande</p>    #???Z?!?{)?#*mm??Ӣ?!S?<?????   
<p>Den används för att fånga SPF-avvisningar (kanske orsakade av konfigurationsfel eller att någon annan utger sig för att vara du för att skicka skräppost).</p>    ?n??? H+?B68?;"???)?S??¼̝?r   
<p>Contabo är en webbhotell baserad i München, Tyskland, grundad 2003 med mycket konkurrenskraftiga priser.</p>    ??w??????B?EG????%>??h???MnM?C   
<p>Lägg bara till en TXT-post till din DNS (som visas nedan).</p>    ?ϱ@W?a?t#?/d????u?D?v??Y??e0/?   
<h3>TLS standardkryptering</h3>
<p>Som visas i figuren nedan finns detta lilla lås, vilket betyder att SSL-certifikatet har aktiverats.</p>    ?>?vH??o?? ?Ap
p???f?e"??ve   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp" alt="" /></p>    ?sO?s?o?NR??Ac?G8??>?6cǈ(w?|   
<p>Att lägga till SPF-poster kan förhindra att e-postmeddelanden identifieras som skräppost så mycket som möjligt.</p>    ? >v?Ii?J???[F)??F?f?B0O????  
<ul>
<li>ingen: Ingen åtgärd vidtas, endast verifieringsresultatet återkopplas till avsändaren via e-postrapporteringsmekanismen.</li>
<li>Karantän: Lägg posten som inte har klarat verifieringen i skräppostmappen, men kommer inte att avvisa posten direkt.</li>
<li>avvisa: Avvisa e-postmeddelanden som misslyckas med verifiering direkt.</li>
</ul>
<h3>fo (felalternativ)</h3>
<p>Anger mängden information som returneras av rapporteringsmekanismen. Den kan ställas in på ett av följande värden:</p>    ?^?k? A??]t??????W?Ty?Ubsw?J  
<ul>
<li><a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html">Amazon SES SMTP</a></li>
<li><a href="https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods">Ali moln e-post push</a></li>
</ul>
<p>Du kan också bygga din egen e-postserver - obegränsad sändning, låg total kostnad.</p>    ?)??~z?uE???R3Q???????e?X?2ϖ*?   
<h3>p (policy)</h3>
<p>Indikerar hur man hanterar e-postmeddelanden som misslyckas med SPF (Sender Policy Framework) eller DKIM (DomainKeys Identified Mail) verifiering. Parametern p kan ställas in på ett av tre värden:</p>    ?i??
0?]??P????u???)R??甄A+??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp" alt="" /></p>    ??|?T?#]1g?8D??N???????>?Z??Ǒ?   
<h2>Omvänd domännamnskonfiguration</h2>
<p>Det omvända domännamnet är för att tillåta IP-adressen att lösas till motsvarande domännamn.</p>    ??,3??.o?".???@-?"?:?j?*??H{?q   
<p>Besök <a href="https://my.contabo.com/rdns">https://my.contabo.com/rdns</a> och konfigurera enligt nedan</p>    ????8???AіKO?t.?!TN߂A?A??hv?   
<p>För enkelhetens skull lägger jag installationen och systemkonfigurationen av ubuntu-programvaran i <a href="https://github.com/user-tax-dev/os/tree/main/ubuntu">github.com/user-tax-dev/os/tree/main/ubuntu</a> .</p>    ?ֲ?b?_[??X*:(?9???? Gઠ?0"??   
<p>Om den sändande servern inte har ett omvänt domännamn eller om det omvända domännamnet inte matchar IP-adressen för den sändande servern, kan den mottagande servern känna igen e-postmeddelandet som skräppost eller avvisa det.</p>    ?+J??sun?ž${??o7?t'?=s	^B?I;   
<img 9>
<p>Innebörden av parametrarna är som följer</p>    ?ڨ`?e?-???9aQw?>??z??6?j??T!?  
<p>Den första körningen kommer automatiskt att installera <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> och lägga till en schemalagd uppgift för automatisk förnyelse. <code>crontab -l</code> kan se att det finns en sådan linje som följer.</p>    ???'U?V,?5`s?D%?y??A?W]???|\??   
<h2>Klona ops för konfigurationslagret</h2>
<img 3>
<h2>Skapa ett gratis SSL-certifikat för ditt domännamn</h2>
<p>För att skicka e-post krävs ett SSL-certifikat för kryptering och signering.</p>    ?y5M<r?[Yd?_ţ1B??P????ڥva?   
<p>Kör <code>./chasquid/init.sh 123.com</code> kommer att installeras automatiskt med ett klick (ersätt 123.com med ditt avsändande domännamn).</p>    ??Z\????Ƥu?bz??D?a????p'??FV   
<p>acme.sh är ett automatiserat certifikatsigneringsverktyg med öppen källkod,</p>    ?\Kmڔ&EY?7?(mx?u???b?L?5??   
<p>Certifikatförnyelse kommer att anropa <code>conf/reload/123.com.sh</code> script, redigera detta skript, du kan lägga till kommandon som <code>nginx -s reload</code> för att uppdatera certifikatcachen för relaterade applikationer.</p>    ?e???[e??@??uO?????%?2?	zR|   
<p>Slutligen kan den ställas in som standardavsändaradress (tillsammans med möjligheten att svara med samma adress).</p>    ?y????n?p?b?;?F\{????k7h? 0????   
<img 2>
<p>Följ upp med <a href="https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/">kontakthandledningen: Lägga till IPv6-anslutning till din server</a></p>    ?9Y'?8}ߢ????-?`?2n??
p?Fa$~?   
<p>Kontrollera Mottaget i rubriken på det ursprungliga e-postmeddelandet och du kan se att avsändaradressen är IPV6, vilket betyder att IPV6 också har konfigurerats framgångsrikt.</p>    ??<UY????+?F̽^@;??ku????6xe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp" alt="" /></p>    ?????c??Y???!??P??w(l????5??2???   
<p>Om servern på ssh visar <code>Welcome to TinyCore 13!</code> (som visas i figuren nedan), betyder det att systemet inte har installerats ännu. Koppla från ssh och vänta i några minuter för att logga in igen.</p>    ??ȫ?[k'y^?X??_???J??ݵ?*#T?D?   
<p><strong>Om du har din egen betalda företagspostlåda, vänligen ändra inte MX och hoppa över det här steget.</strong></p>    ??̟??q9JW?ڞG?>??C?
fsHa?j?a   
<p>Ange sedan verifieringskoden som mottogs av e-postmeddelandet som vidarebefordrades till.</p>    ?Ό}T)?>E=?c?-??v?its????Pބ??   
<p>Jag rekommenderar att du köper från en värd som har dessa portar öppna och som stöder inställning av omvända domännamn.</p>    ?U???!m)f0??uΣG?o7?HVtS?????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp" alt="" /></p>    ???m? e7]Lo???_b??C%??>???X??   
<h2>Säkerhetskopiera conf till git repository</h2>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp" alt="" /></p>    ???Y??'?Ȏ?)??̶A/;/???;??:`ŗ?   
<p>Det rekommenderas att använda Gmail för att ta emot testmeddelanden för att kontrollera om konfigurationerna är framgångsrika.</p>    ?=???G?JzI>ʥ?'???`??P`F?Ӯ??1   
<p>Lägg till TXT-post <code>_dmarc</code> ,</p>    ??Я?ߠuOgr??#Y(?\?3?9nֿ?z?}   
<p>När <code>Welcome to Ubuntu 22.04.1 LTS</code> visas är initieringen klar och du kan fortsätta med följande steg.</p>    ????*Ao"`?,????Y??U?]SkӶp???1?   
<h2>DNS lägg till SPF-post</h2>
<p>SPF ( Sender Policy Framework ) är en e-postverifieringsteknik som används för att förhindra e-postbedrägeri.</p>    ?;2??j?6???C??5=?&|?_x????;?b?+   
<p>SPF för <code>_spf.user.tax</code></p>    ?O?O??顾??l???s??l?7?6?{?z?~   
<p>spring sedan</p>    ?Q?,?ir????u???d?wt;0?ZU?,X?M?6   
<p>Gå in i conf-katalogen och skicka till lagret</p>    ?,?7??"?Ku?????2&un?Ir??]_?   
<p>Kör <code>direnv allow</code> att installera beroenden (direnv har installerats i den tidigare initieringsprocessen med en nyckel och en krok har lagts till i skalet)</p>    ?jV?????ǔ????5??=L???c??t?VC   
<p>Till exempel är SPF för <code>user.tax</code> som följer</p>    ƃ??0zn1?? ??BA??`>?k-?,\Z?   
<p>Redigera <code>/etc/netplan/01-netcfg.yaml</code> , lägg till några rader som visas i figuren nedan (Contabo VPS standardkonfigurationsfil har redan dessa rader, bara avkommentera dem).</p>    ?_;?<̉f=Fx?  i???T??.?F?_??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp" alt="" /></p>    ?7?=???????d?bA??????????J+?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp" alt="" /></p>    ?tu????9? 4?????I0]о!???P?S   
<p>Om din domännamnsserver inte stöder SPF-typ, lägg bara till TXT-typpost.</p>    ???Uk??vvJfQ???N??W?1?!?
dmP?   
<p>När konfigurationen är klar kan du använda andra e-postadresser för att skicka e-post till <code>i@user.tax</code> och <code>any123@user.tax</code> för att se om du kan ta emot e-postmeddelanden i Gmail.</p>    ???}??YLrT???ݥ?ܗr??9՜	p   
<p><code>grep chasquid /var/log/syslog</code> eller <code>journalctl -xeu chasquid</code> kan se felloggen.</p>    ?@Ә??S?A??u?q&? ?v?,*sgH??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp" alt="" /></p>    ?j?v$?k?C-??Bݦ??R?4??a?????>?   
<p>Besök <a href="https://mail.google.com/mail/u/1/#settings/accounts">https://mail.google.com/mail/u/1/#settings/accounts</a> och klicka på &quot;Lägg till en annan e-postadress&quot;.</p>    ?]?F?%?Y"?????_P?0????[M??Ke   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp" alt="" /></p>    ڜ? ??~?dЬ?^p"?}?y?43?	????[   
<p>Om inte, kontrollera chasquid-loggen ( <code>grep chasquid /var/log/syslog</code> .</p>    ?0?F?b?????[6D???????s?
??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp" alt="" /></p>    ߮?B?D?J?%???]?^?P??????f??.   
<p>redigera <code>/etc/sysctl.conf</code></p>    ??2???Ԟ3E,|??y???V??t??ߔ"9???B   
<p>Kör följande kommando för att installera med ett klick.</p>    ?^????~?%?t?4	?@7?K?j w"??W?*   
<img 6>
<p>Kan lägga till avsändare</p>    ???^??PK??s??7<U????;w?Gf?=????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp" alt="" /></p>    ??N>??7]u????v_XI?[?s??k?oX   
<p>Kör sedan <code>systemctl restart chasquid</code> för att starta om tjänsten.</p>    ?>???u$R???Bu>??T??JO/S(7???   
<p>Hitta din DNS-leverantör från <a href="https://github.com/acmesh-official/acme.sh/wiki/dnsapi">acme.sh dnsapi</a> , redigera <code>conf/conf.sh</code> .</p>    ??,NN???DR????Dz?s??F??5ظqζL   
<p>Nedan visar vi steg för steg hur man bygger vår egen e-postserver.</p>    ?ꁶn??w޶?ѭD????C?C)?@??B7??6   
<img 5>
<h2>Lägg till avsändare</h2>
<p>springa</p>    ??"???gb??㪼+?lJZ?ۃ?]O;??QO?   
<ul>
<li>användare: SMTP-användarnamn</li>
<li>pass: SMTP-lösenord</li>
<li>till: mottagare</li>
</ul>
<p>Du kan skicka ett testmail.</p>    ???]?D(#?????!v??8ꀂ?>Z?@L%   
<p>Den verifierar identiteten för en e-postavsändare genom att kontrollera att avsändarens IP-adress stämmer överens med DNS-posterna för domännamnet den påstår sig vara, vilket förhindrar bedragare från att skicka falska e-postmeddelanden.</p>    ??:???颕?m?ç???n???M蠘Ce   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp" alt="" /></p>    ??^?/f??`???M-}??zú???o($F?p??   
<h2>Redigera värdnamnet för chasquid.conf</h2>
<p>Ändra <code>conf/chasquid/chasquid.conf</code> till värdet för det omvända domännamnet.</p>    ????k<?I?m3i??K?O?*Oy?;L??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp" alt="" /></p>    ?[??r.p/܅ ???Q?	??G"2?/?P   
<h3>[Valfritt] Initiera utvecklingsmiljön</h3>
<p>Detta steg är valfritt.</p>