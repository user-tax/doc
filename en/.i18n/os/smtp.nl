|       ?pD?l?8?ws?8(L佌?ev???p????  
<ul>
<li>0: Rapporteer validatieresultaten voor alle berichten</li>
<li>1: Rapporteer alleen berichten die de verificatie niet doorstaan</li>
<li>d: Rapporteer alleen mislukte domeinnaamverificaties</li>
<li>s: rapporteer alleen SPF-verificatiefouten</li>
<li>l: Rapporteer alleen DKIM-verificatiefouten</li>
</ul>
<h3>rua &amp; ruf</h3>
<ul>
<li>rua (Reporting URI for Aggregate reports): E-mailadres voor het ontvangen van geaggregeerde rapporten</li>
<li>ruf (Reporting URI for Forensic reports): e-mailadres om gedetailleerde rapporten te ontvangen</li>
</ul>
<h2>Voeg MX-records toe om e-mails door te sturen naar Google Mail</h2>
<p>Omdat ik geen gratis zakelijke mailbox kon vinden die universele adressen ondersteunt (Catch-All, kan alle e-mails ontvangen die naar deze domeinnaam worden verzonden, zonder beperkingen op voorvoegsels), heb ik chasquid gebruikt om alle e-mails door te sturen naar mijn Gmail-mailbox.</p>    Z?I?`O???J??<?ۜc(?ƀ?0??'?   
<p>In het volgende zal ik de VPS van Contabo als voorbeeld nemen om te demonstreren hoe u uw eigen mailserver kunt bouwen.</p>    6???ZE?k߀P???T???Ӡ??y?S??   
<h2>E-mailhandtekening DKIM configureren</h2>
<p>DKIM wordt gebruikt om e-mailhandtekeningen te verzenden om te voorkomen dat brieven als spam worden behandeld.</p>    ?f=??9M????,??ƿ?wɨ"&aj?l??S   
<p><code>v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all</code></p>    	z??????	9?#.??Oœ?2J@u.?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp" alt="" /></p>    
 	_??8????*??7Jm?j?7??.X?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp" alt="" /></p>    v??H??v-Hv????W?;?|??Kn-???%   
<p>Maak eerst een privémagazijn</p>    ?|=?.??2?^??w?j6??}Y'?Ϩ$?pe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp" alt="" /></p>    B??$??eb??u??`V???e???4?)?   
<p>Merk op dat ik hier <code>include:_spf.google.com</code> heb, omdat ik <code>i@user.tax</code> later zal configureren als het verzendadres in de Google-mailbox.</p>    E?????<??ܶ9??????<lJ?gP??;????   
<p><code>*</code> geeft alle e-mails aan, <code>i</code> is het voorvoegsel van het e-mailadres van de verzendende gebruiker die hierboven is gemaakt. Om e-mail door te sturen, moet elke gebruiker een regel toevoegen.</p>    ???+&?gI??E??:-?TE?R???^?DG?ض??   
<p>Als u Euro als aankoopvaluta kiest, is de prijs goedkoper (een server met 8 GB geheugen en 4 CPU's kost ongeveer 529 yuan per jaar, en de initiële installatiekosten zijn een jaar gratis).</p>    ?Z????x?2?+ճGh??RA2?4???C|?   
<h2>Stuur een e-mail naar i@user.tax met Google Mail</h2>
<p>Nadat Google Mail de e-mail heeft ontvangen, is het normaal dat u wilt antwoorden met <code>i@user.tax</code> in plaats van i.user.tax@gmail.com.</p>    ?t???NJ?` ???????06@??Uѭ?3??   
<img 0>
<p>Chinese gebruikers, gebruik in plaats daarvan de volgende opdracht en de taal, tijdzone, etc. worden automatisch ingesteld.</p>    ???O?P?????v??g?? ??!t?D???lbe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp" alt="" /></p>    $?@?w???N????4?i?{?P????}mt   
<h2>Stuur een testmail om te controleren of de configuratie is gelukt</h2>
<p>Voer <code>ops/chasquid</code> in</p>    ???? ?ۆ??c:[>$??????S??K?ض??u   
<img 4>
<p>Het pad voor het gegenereerde certificaat is zoiets als <code>/mnt/www/.acme.sh/123.com_ecc。</code></p>    %|????lG???;ت?{??Ǽ?E7 ??fe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp" alt="" /></p>    &??9? ?????????h???EN???|?̦V   
<h2>Ubuntu-systeemconfiguratie</h2>
<p>Het besturingssysteem hier is Ubuntu 22.04</p>    'u?-?-??:h*????*?2zg???@??U?   
<h3>Controleer of het wachtwoord correct is ingesteld</h3>
<img 7>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp" alt="" /></p>    '????_yU?j??????!???????2???   
<p>Veelgebruikte publieke clouds hebben deze poorten standaard geblokkeerd en het is misschien mogelijk om ze te openen door een werkopdracht uit te geven, maar het is uiteindelijk erg lastig.</p>    (???2?T?G??U?=?c5??????#d??   
<p>Voeg dan het MX-record toe (ik verwijs hier direct naar het adres van de reverse domeinnaam, zoals weergegeven in de eerste regel in onderstaande figuur).</p>    )?U9ؾ1?a?'?R0]?*?Jo???v??21|   
<img 1>
<h3>Contabo maakt IPV6 mogelijk</h3>
<p>Schakel IPV6 in zodat SMTP ook e-mails met IPV6-adressen kan verzenden.</p>    )Q???VmV;u?????ͽ8B?	
L| ?z   
    *&?]p/?<WO?-?I??\??B?x?9#?!]   
<p>Bewerk <code>conf/chasquid/domains/user.tax/aliases</code> , stel doorstuurmailbox in</p>    ,'? ?/a??Lޣ?Xf{????0??K? ?-   
<p>Wijzig of voeg de volgende regels toe</p>    2?5ǜO\?=???z-??????d?????*oFP?   
<p>De inhoud is als volgt</p>    2?I*<kucX1Nկ??*?VFr?S?;dJޱx??   
<p>Denk er na het instellen van de omgekeerde domeinnaam aan om de voorwaartse resolutie van de domeinnaam ipv4 en ipv6 naar de server te configureren.</p>    5?-??ϸ?'?
W *k2zfF7?lX^?&?GJ???   
<p>Op deze manier hebben we de oprichting van de SMTP-mailserver voltooid en gebruiken we tegelijkertijd Google Mail om e-mails te verzenden en te ontvangen.</p>    6%p4??g5?+f???m.?i\?Y?9x??TA <   
<p>Klik vervolgens op &quot;Toon originele e-mail&quot;</p>    63?g?:??X???C@?Q????Doe:?<:?H?{m   
<img 8>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp" alt="" /></p>    9ڕ?O/;??9??cƷ??v>?G???cP?-?X   
<p>De status van normaal bedrijf is zoals weergegeven in de onderstaande afbeelding</p>    =E?f?o???I?????????F,??x?>???x   
<p>Door een omgekeerde domeinnaam in te stellen, kan worden voorkomen dat e-mails als spam worden geïdentificeerd.</p>    ?O?-B???-???[,-????Q?a?iT#@o?m0   
<p><code>v=spf1 a:smtp.user.tax ~all</code></p>    A?????T?3|7c?b?ve?B?"_?
??r?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp" alt="" /></p>    F?Ra9/]???I^??@i??????0G??s   
<p>We gebruiken <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> om certificaten te genereren.</p>    G|Tۍ?։0?a??????g??$??;??jC?   <h1>Bouw uw eigen SMTP-server voor het verzenden van e-mail</h1>
<h2>preambule</h2>
<p>SMTP kan rechtstreeks diensten afnemen van cloudleveranciers, zoals:</p>    M?XOqh?N_jw?W?y6o?'?E(!:??????   
<p>Nadat de opdracht met succes is uitgevoerd, wordt u gevraagd om het DKIM-record in te stellen (zoals hieronder weergegeven).</p>    Q<qV???dB=6U????v?=??M?w\TMee   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp" alt="" /></p>    U?3i?O??捣~?z????z??x.????]e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp" alt="" /></p>    V	?????+t???^?j??s???}?HY'??   
<p>Wanneer de e-mail is ontvangen, voert de ontvangende server een omgekeerde domeinnaamanalyse uit op het IP-adres van de verzendende server om te bevestigen of de verzendende server een geldige omgekeerde domeinnaam heeft.</p>    W0?!?'{?'??[p???7Xr%?l????????iH?   
<h2>Bouw een SMTP-server met chasquid</h2>
<p><a href="https://github.com/albertito/chasquid">chasquid</a> is een open source SMTP-server geschreven in Go-taal.</p>    W?SJ?۸Ͽ??mA?C}??\̮r?PNo?+v34   
<p>De betekenis van elke parameter is als volgt</p>    X[????
ҋa??e^??[=?e?A]d}~0???   
<p>Geef bij het plaatsen van een bestelling <code>prefer AMD</code> , en de server met AMD CPU zal betere prestaties leveren.</p>    X???߶g=????{?????????d??5/p?   
<p>Nadat de configuratie is gelukt, kunt u <code>curl 6.ipw.cn</code> gebruiken om het ipv6-adres van uw externe netwerk te bekijken.</p>    Yn??B_??W9?9?nJGYV? ?Y=@???Gb???   
<h2>DNS-configuratie DMARC</h2>
<p>DMARC is de afkorting van (Domain-based Message Authentication, Reporting &amp; Conformance).</p>    `Q8Y?7??,L???(X??Ʋ&D	??????   
<p>Als vervanging voor de oude mailserverprogramma's zoals Postfix en Sendmail, is chasquid eenvoudiger en gemakkelijker te gebruiken, en het is ook gemakkelijker voor secundaire ontwikkeling.</p>    `?G?4?Xj????}?8?a?????F??ay$?]?C   
<p>Hier raad ik <a href="https://contabo.com">Contabo</a> aan.</p>    a?# Rr?ͥ?c???*??>?As1?>p?)}???(   
<p>De mappenstructuur is als volgt:</p>    e}?????e˃?h??_???Y-?
>??َb^Uı   
<h3>DKIM</h3>
<p>Zoals te zien is in de onderstaande afbeelding, geeft de oorspronkelijke e-mailpagina van Gmail DKIM weer, wat betekent dat de DKIM-configuratie is gelukt.</p>    g?0?Q?-k-B?????j-???㻒???~On?.   
<p>Start vervolgens de server opnieuw op.</p>    j?Q????mK?????W???&?P?!?8?lhs   
<h2>Servicestatus en logboeken bekijken</h2>
<p><code>systemctl status chasquid</code> Servicestatus bekijken.</p>    kr
5?????4[82O?%??,?J	wQe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp" alt="" /></p>    m??O?fFȟ?%?~,b?Sn?37}???1B?{z   
<h2>Server selectie</h2>
<p>De zelfgehoste SMTP-server vereist een openbaar IP-adres met poorten 25, 456 en 587 open.</p>    pE?????,?????@??*M#??h???)?   
<p>Voer het configuratiemagazijn ops in, voer <code>./ssl.sh</code> uit en er wordt een <code>conf</code> map gemaakt in de bovenste map.</p>    t?̏s?@7??B? V???v?ݯ?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp" alt="" /></p>    y?	??U,Ճ?&?;ks]?f????-BuW???   
<p>Voer vervolgens <code>./ssl.sh 123.com</code> uit om <code>123.com</code> en <code>*.123.com</code> certificaten voor uw domeinnaam te genereren.</p>    y?o??y?|?uভ?!?O???b?Vʕ_'?z???   
<p>Na het toevoegen van de gebruiker wordt <code>chasquid/domains/user.tax/users</code> geüpdatet, vergeet niet om het in te dienen bij het magazijn.</p>    zEz?k?.'ۆ?qo??CӚx? ??mL!vYe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp" alt="" /></p>    zI?c?H???lbSi̕͡9A?ԣ??????#e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp" alt="" /></p>    |?L?65x????????:80??=%??
P1 ?`   
<p>Ik maak bijvoorbeeld als volgt een back-up van de conf-map naar mijn eigen github-proces</p>    #???Z?!?{)?#*mm??Ӣ?!S?<?????   
<p>Het wordt gebruikt om SPF-bounces vast te leggen (misschien veroorzaakt door configuratiefouten, of iemand anders doet zich voor als u om spam te verzenden).</p>    ?n??? H+?B68?;"???)?S??¼̝?z   
<p>Contabo is een hostingprovider gevestigd in München, Duitsland, opgericht in 2003 met zeer concurrerende prijzen.</p>    ??w??????B?EG????%>??h???MnM?P   
<p>Voeg gewoon een TXT-record toe aan uw DNS (zoals hieronder weergegeven).</p>    ?ϱ@W?a?t#?/d????u?D?v??Y??e0/?   
<h3>TLS-standaardversleuteling</h3>
<p>Zoals te zien is in de onderstaande afbeelding, is er dit kleine slotje, wat betekent dat het SSL-certificaat met succes is ingeschakeld.</p>    ?>?vH??o?? ?Ap
p???f?e"??ve   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp" alt="" /></p>    ?sO?s?o?NR??Ac?G8??>?6cǈ(w?q   
<p>Door SPF-records toe te voegen, kan zoveel mogelijk worden voorkomen dat e-mails als spam worden herkend.</p>    ? >v?Ii?J???[F)??F?f?B0O???$  
<ul>
<li>geen: er wordt geen actie ondernomen, alleen het verificatieresultaat wordt teruggekoppeld naar de afzender via het e-mailrapportagemechanisme.</li>
<li>Quarantaine: plaats de mail die niet door de verificatie is gekomen in de map spam, maar zal de mail niet direct afwijzen.</li>
<li>afwijzen: weiger e-mails die niet geverifieerd zijn direct.</li>
</ul>
<h3>fo (faalopties)</h3>
<p>Specificeert de hoeveelheid informatie die door het rapportagemechanisme wordt geretourneerd. Het kan worden ingesteld op een van de volgende waarden:</p>    ?^?k? A??]t??????W?Ty?Ubsw?E  
<ul>
<li><a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html">Amazon SES-SMTP</a></li>
<li><a href="https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods">Ali cloud e-mail push</a></li>
</ul>
<p>U kunt ook uw eigen mailserver bouwen - onbeperkt verzenden, lage totale kosten.</p>    ?)??~z?uE???R3Q???????e?X?2ϖ*?   
<h3>p (Beleid)</h3>
<p>Geeft aan hoe om te gaan met e-mails die niet slagen voor verificatie door SPF (Sender Policy Framework) of DKIM (DomainKeys Identified Mail). De parameter p kan worden ingesteld op een van de volgende drie waarden:</p>    ?i??
0?]??P????u???)R??甄A+??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp" alt="" /></p>    ??|?T?#]1g?8D??N???????>?Z??Ǒ?   
<h2>Omgekeerde domeinnaam configuratie</h2>
<p>De omgekeerde domeinnaam is om het IP-adres te kunnen herleiden tot de corresponderende domeinnaam.</p>    ??,3??.o?".???@-?"?:?j?*??H{??   
<p>Ga naar <a href="https://my.contabo.com/rdns">https://my.contabo.com/rdns</a> en configureer zoals hieronder weergegeven</p>    ????8???AіKO?t.?!TN߂A?A??hv?   
<p>Voor het gemak heb ik de installatie en systeemconfiguratie van ubuntu-software in <a href="https://github.com/user-tax-dev/os/tree/main/ubuntu">github.com/user-tax-dev/os/tree/main/ubuntu</a> gezet.</p>    ?ֲ?b?_[??X*:(?9???? Gઠ?0"??   
<p>Als de verzendende server geen omgekeerde domeinnaam heeft of als de omgekeerde domeinnaam niet overeenkomt met het IP-adres van de verzendende server, kan de ontvangende server de e-mail als spam herkennen of weigeren.</p>    ?+J??sun?ž${??o7?t'?=s	^B?I;   
<img 9>
<p>De betekenis van de parameters is als volgt</p>    ?ڨ`?e?-???9aQw?>??z??6?j??T!?  
<p>Bij de eerste uitvoering wordt <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> automatisch geïnstalleerd en wordt een geplande taak voor automatische verlenging toegevoegd. <code>crontab -l</code> kan zien dat er zo'n regel als volgt is.</p>    ???'U?V,?5`s?D%?y??A?W]???|\??   
<h2>Kloon de configuratierepository ops</h2>
<img 3>
<h2>Genereer een gratis SSL-certificaat voor uw domeinnaam</h2>
<p>Voor het verzenden van e-mail is een SSL-certificaat vereist voor codering en ondertekening.</p>    ?y5M<r?[Yd?_ţ1B??P????ڥva?   
<p>Start <code>./chasquid/init.sh 123.com</code> wordt automatisch geïnstalleerd met één klik (vervang 123.com door uw verzendende domeinnaam).</p>    ??Z\????Ƥu?bz??D?a????p'??F`   
<p>acme.sh is een open source geautomatiseerde tool voor het ondertekenen van certificaten,</p>    ?\Kmڔ&EY?7?(mx?u???b?L?5??   
<p>Certificaatvernieuwing roept <code>conf/reload/123.com.sh</code> script aan, bewerk dit script, u ​​kunt opdrachten toevoegen zoals <code>nginx -s reload</code> om de certificaatcache van gerelateerde applicaties te vernieuwen.</p>    ?e???[e??@??uO?????%?2?	zR?   
<p>Ten slotte kan het worden ingesteld als het standaard afzenderadres (samen met de optie om met hetzelfde adres te antwoorden).</p>    ?y????n?p?b?;?F\{????k7h? 0????   
<img 2>
<p>Vervolg met <a href="https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/">de contabo-tutorial: IPv6-connectiviteit toevoegen aan uw server</a></p>    ?9Y'?8}ߢ????-?`?2n??
p?Fa$~?   
<p>Controleer Ontvangen in de koptekst van de oorspronkelijke e-mail en u kunt zien dat het afzenderadres IPV6 is, wat betekent dat IPV6 ook met succes is geconfigureerd.</p>    ??<UY????+?F̽^@;??ku????6xe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp" alt="" /></p>    ?????c??Y???!??P??w(l????5??2???   
<p>Als de server op ssh <code>Welcome to TinyCore 13!</code> (zoals weergegeven in de onderstaande afbeelding), betekent dit dat het systeem nog niet is geïnstalleerd. Koppel SSH los en wacht een paar minuten om opnieuw in te loggen.</p>    ??ȫ?[k'y^?X??_???J??ݵ?*#T?Dy   
<p><strong>Als u uw eigen betaalde zakelijke mailbox heeft, wijzigt u de MX niet en slaat u deze stap over.</strong></p>    ??̟??q9JW?ڞG?>??C?
fsHa?j?e   
<p>Voer vervolgens de verificatiecode in die is ontvangen in de e-mail waarnaar is doorgestuurd.</p>    ?Ό}T)?>E=?c?-??v?its????Pބ??   
<p>Ik raad aan om te kopen bij een host die deze poorten open heeft staan ​​en het opzetten van omgekeerde domeinnamen ondersteunt.</p>    ?U???!m)f0??uΣG?o7?HVtS?????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp" alt="" /></p>    ???m? e7]Lo???_b??C%??>???X??   
<h2>Back-up conf naar git-repository</h2>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp" alt="" /></p>    ???Y??'?Ȏ?)??̶A/;/???;??:`ŗ?   
<p>Het wordt aanbevolen om Gmail te gebruiken om testmails te ontvangen om te controleren of de configuraties succesvol zijn.</p>    ?=???G?JzI>ʥ?'???`??P`F?Ӯ??1   
<p>TXT-record <code>_dmarc</code> toevoegen,</p>    ??Я?ߠuOgr??#Y(?\?3?9nֿ?z??   
<p>Wanneer <code>Welcome to Ubuntu 22.04.1 LTS</code> verschijnt, is de initialisatie voltooid en kunt u doorgaan met de volgende stappen.</p>    ????*Ao"`?,????Y??U?]SkӶp???1?   
<h2>DNS voegt SPF-record toe</h2>
<p>SPF (Sender Policy Framework) is een e-mailverificatietechnologie die wordt gebruikt om e-mailfraude te voorkomen.</p>    ?;2??j?6???C??5=?&|?_x????;?b?+   
<p>SPF voor <code>_spf.user.tax</code></p>    ?O?O??顾??l???s??l?7?6?{?z?~   
<p>ren dan</p>    ?Q?,?ir????u???d?wt;0?ZU?,X?M?B   
<p>Voer de conf-directory in en dien deze in bij het magazijn</p>    ?,?7??"?Ku?????2&un?Ir??]_?   
<p>Voer <code>direnv allow</code> om afhankelijkheden te installeren (direnv is geïnstalleerd in het vorige initialisatieproces met één toets en er is een hook aan de shell toegevoegd)</p>    ?jV?????ǔ????5??=L???c??t?VB   
<p>De SPF van <code>user.tax</code> is bijvoorbeeld als volgt</p>    ƃ??0zn1?? ??BA??`>?k-?,\Z?   
<p>Bewerk <code>/etc/netplan/01-netcfg.yaml</code> , voeg een paar regels toe zoals weergegeven in de onderstaande afbeelding (het standaardconfiguratiebestand van Contabo VPS heeft deze regels al, verwijder het commentaar).</p>    ?_;?<̉f=Fx?  i???T??.?F?_??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp" alt="" /></p>    ?7?=???????d?bA??????????J+?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp" alt="" /></p>    ?tu????9? 4?????I0]о!???P?f   
<p>Als uw domeinnaamserver het SPF-type niet ondersteunt, voegt u gewoon een TXT-type record toe.</p>    ???Uk??vvJfQ???N??W?1?!?
dmP?   
<p>Nadat de configuratie is voltooid, kunt u andere e-mailadressen gebruiken om e-mails te verzenden naar <code>i@user.tax</code> en <code>any123@user.tax</code> om te zien of u e-mails kunt ontvangen in Gmail.</p>    ???}??YLrT???ݥ?ܗr??9՜	{   
<p><code>grep chasquid /var/log/syslog</code> of <code>journalctl -xeu chasquid</code> kan het foutenlogboek bekijken.</p>    ?@Ә??S?A??u?q&? ?v?,*sgH??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp" alt="" /></p>    ?j?v$?k?C-??Bݦ??R?4??a?????>?   
<p>Ga naar <a href="https://mail.google.com/mail/u/1/#settings/accounts">https://mail.google.com/mail/u/1/#settings/accounts</a> en klik op &quot;Nog een e-mailadres toevoegen&quot;.</p>    ?]?F?%?Y"?????_P?0????[M??Ke   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp" alt="" /></p>    ڜ? ??~?dЬ?^p"?}?y?43?	????d   
<p>Zo niet, controleer dan het chasquid-logboek ( <code>grep chasquid /var/log/syslog</code> ).</p>    ?0?F?b?????[6D???????s?
??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp" alt="" /></p>    ߮?B?D?J?%???]?^?P??????f??,   
<p>bewerk <code>/etc/sysctl.conf</code></p>    ??2???Ԟ3E,|??y???V??t??ߔ"9???G   
<p>Voer de volgende opdracht uit om met één klik te installeren.</p>    ?^????~?%?t?4	?@7?K?j w"??W?&   
<img 6>
<p>Kan afzender toevoegen</p>    ???^??PK??s??7<U????;w?Gf?=????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp" alt="" /></p>    ??N>??7]u????v_XI?[?s??k?oe   
<p>Voer vervolgens <code>systemctl restart chasquid</code> uit om de service opnieuw te starten.</p>    ?>???u$R???Bu>??T??JO/S(7???   
<p>Zoek uw DNS-provider via <a href="https://github.com/acmesh-official/acme.sh/wiki/dnsapi">acme.sh dnsapi</a> , bewerk <code>conf/conf.sh</code> .</p>    ??,NN???DR????Dz?s??F??5ظqζW   
<p>Hieronder laten we stap voor stap zien hoe je een eigen mailserver kunt bouwen.</p>    ?ꁶn??w޶?ѭD????C?C)?@??B7??0   
<img 5>
<h2>Afzender toevoegen</h2>
<p>loop</p>    ??"???gb??㪼+?lJZ?ۃ?]O;??QO?   
<ul>
<li>gebruiker: SMTP-gebruikersnaam</li>
<li>pass: SMTP-wachtwoord</li>
<li>aan: ontvanger</li>
</ul>
<p>U kunt een testmail sturen.</p>    ???]?D(#?????!v??8ꀂ?>Z?@L%?   
<p>Het verifieert de identiteit van een e-mailafzender door te controleren of het IP-adres van de afzender overeenkomt met de DNS-records van de domeinnaam die het beweert te zijn, waardoor wordt voorkomen dat fraudeurs valse e-mails verzenden.</p>    ??:???颕?m?ç???n???M蠘Ce   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp" alt="" /></p>    ??^?/f??`???M-}??zú???o($F?p??   
<h2>Bewerk de hostnaam van chasquid.conf</h2>
<p>Pas <code>conf/chasquid/chasquid.conf</code> aan naar de waarde van de omgekeerde domeinnaam.</p>    ????k<?I?m3i??K?O?*Oy?;L??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp" alt="" /></p>    ?[??r.p/܅ ???Q?	??G"2?/?V   
<h3>[Optioneel] Initialiseer de ontwikkelomgeving</h3>
<p>Deze stap is optioneel.</p>