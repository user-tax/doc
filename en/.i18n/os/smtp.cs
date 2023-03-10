|       ?pD?l?8?ws?8(L佌?ev???p????  
<ul>
<li>0: Hlásit výsledky ověření pro všechny zprávy</li>
<li>1: Hlásit pouze zprávy, které neprošly ověřením</li>
<li>d: Hlásit pouze selhání ověření názvu domény</li>
<li>s: hlásit pouze selhání ověření SPF</li>
<li>l: Hlásit pouze selhání ověření DKIM</li>
</ul>
<h3>rua &amp; ruf</h3>
<ul>
<li>rua (URI hlášení pro souhrnné zprávy): E-mailová adresa pro příjem souhrnných zpráv</li>
<li>ruf (URI hlášení pro forenzní zprávy): e-mailová adresa pro zasílání podrobných zpráv</li>
</ul>
<h2>Přidejte záznamy MX pro přeposílání e-mailů do Google Mail</h2>
<p>Protože jsem nemohl najít bezplatnou podnikovou schránku, která by podporovala univerzální adresy (Catch-All, může přijímat jakékoli e-maily odeslané na toto doménové jméno, bez omezení prefixů), použil jsem k přeposílání všech e-mailů do své schránky Gmailu chasquid.</p>    Z?I?`O???J??<?ۜc(?ƀ?0??'??   
<p>V následujícím textu vezmu Contabo's VPS jako příklad, který demonstruje, jak vytvořit svůj vlastní poštovní server.</p>    6???ZE?k߀P???T???Ӡ??y?S??   
<h2>Nakonfigurujte DKIM pro podpis e-mailu</h2>
<p>DKIM se používá k odesílání e-mailových podpisů, aby se zabránilo tomu, že dopisy budou považovány za spam.</p>    ?f=??9M????,??ƿ?wɨ"&aj?l??S   
<p><code>v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all</code></p>    	z??????	9?#.??Oœ?2J@u.?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp" alt="" /></p>    
 	_??8????*??7Jm?j?7??.X?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp" alt="" /></p>    v??H??v-Hv????W?;?|??Kn-???)   
<p>Nejprve vytvořte soukromý sklad</p>    ?|=?.??2?^??w?j6??}Y'?Ϩ$?pe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp" alt="" /></p>    B??$??eb??u??`V???e???4?)?   
<p>Všimněte si, že sem mám <code>include:_spf.google.com</code> , protože později nakonfiguruji <code>i@user.tax</code> jako odesílací adresu v poštovní schránce Google.</p>    E?????<??ܶ9??????<lJ?gP??;????   
<p><code>*</code> označuje všechny e-maily, <code>i</code> je předpona e-mailové adresy odesílajícího uživatele vytvořená výše. Pro přeposílání pošty musí každý uživatel přidat řádek.</p>    ???+&?gI??E??:-?TE?R???^?DG?ض??   
<p>Pokud jako měnu nákupu zvolíte euro, cena bude levnější (server s 8GB pamětí a 4 CPU stojí asi 529 juanů ročně a počáteční instalační poplatek je na jeden rok zdarma).</p>    ?Z????x?2?+ճGh??RA2?4???C|?   
<h2>Pošlete e-mail na adresu i@user.tax pomocí služby Google Mail</h2>
<p>Poté, co Google Mail obdrží e-mail, je přirozené, že budete chtít odpovědět s <code>i@user.tax</code> namísto i.user.tax@gmail.com.</p>    ?t???NJ?` ???????06@??Uѭ?3??   
<img 0>
<p>Čínští uživatelé, použijte místo toho následující příkaz a jazyk, časové pásmo atd. se nastaví automaticky.</p>    ???O?P?????v??g?? ??!t?D???lbe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp" alt="" /></p>    $?@?w???N????4?i?{?P????}m?   
<h2>Odesláním zkušebního e-mailu zkontrolujte, zda je konfigurace úspěšná</h2>
<p>Zadejte <code>ops/chasquid</code></p>    ???? ?ۆ??c:[>$??????S??K?ض??p   
<img 4>
<p>Cesta k vygenerovanému certifikátu je něco jako <code>/mnt/www/.acme.sh/123.com_ecc。</code></p>    %|????lG???;ت?{??Ǽ?E7 ??fe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp" alt="" /></p>    &??9? ?????????h???EN???|?̦V   
<h2>Konfigurace systému Ubuntu</h2>
<p>Operačním systémem je zde Ubuntu 22.04</p>    'u?-?-??:h*????*?2zg???@??U?   
<h3>Ověřte, zda je heslo nastaveno správně</h3>
<img 7>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp" alt="" /></p>    '????_yU?j??????!???????2???   
<p>Běžně používané veřejné cloudy tyto porty ve výchozím nastavení blokují a je možné je otevřít zadáním pracovního příkazu, ale je to nakonec velmi problematické.</p>    (???2?T?G??U?=?c5??????#d??   
<p>Poté přidejte záznam MX (zde ukazuji přímo na adresu reverzního názvu domény, jak je znázorněno na prvním řádku na obrázku níže).</p>    )?U9ؾ1?a?'?R0]?*?Jo???v??21u   
<img 1>
<h3>Contabo umožňuje IPV6</h3>
<p>Povolte IPV6, aby SMTP mohl také odesílat e-maily s adresami IPV6.</p>    )Q???VmV;u?????ͽ8B?	
L| ?z   
    *&?]p/?<WO?-?I??\??B?x?9#?!w   
<p>Upravit <code>conf/chasquid/domains/user.tax/aliases</code> , nastavit poštovní schránku pro přeposílání</p>    ,'? ?/a??Lޣ?Xf{????0??K? ?5   
<p>Upravte nebo přidejte následující řádky</p>    2?5ǜO\?=???z-??????d?????*oFP?   
<p>Obsah je následující</p>    2?I*<kucX1Nկ??*?VFr?S?;dJޱx??   
<p>Po nastavení reverzního názvu domény nezapomeňte nakonfigurovat dopředné rozlišení názvu domény ipv4 a ipv6 na server.</p>    5?-??ϸ?'?
W *k2zfF7?lX^?&?GJ???   
<p>Tímto jsme dokončili zřízení poštovního serveru SMTP a zároveň využíváme Google Mail k odesílání a přijímání e-mailů.</p>    6%p4??g5?+f???m.?i\?Y?9x??TA :   
<p>Poté klikněte na „Zobrazit původní e-mail“</p>    63?g?:??X???C@?Q????Doe:?<:?H?{m   
<img 8>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp" alt="" /></p>    9ڕ?O/;??9??cƷ??v>?G???cP?-?C   
<p>Stav normálního provozu je znázorněn na obrázku níže</p>    =E?f?o???I?????????F,??x?>???p   
<p>Nastavení reverzního názvu domény může zabránit tomu, aby byly e-maily identifikovány jako spam.</p>    ?O?-B???-???[,-????Q?a?iT#@o?m0   
<p><code>v=spf1 a:smtp.user.tax ~all</code></p>    A?????T?3|7c?b?ve?B?"_?
??r?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp" alt="" /></p>    F?Ra9/]???I^??@i??????0G??t   
<p>Ke generování certifikátů používáme <a href="https://github.com/acmesh-official/acme.sh">acme.sh.</a></p>    G|Tۍ?։0?a??????g??$??;??jC?   <h1>Sestavte si svůj vlastní server pro odesílání pošty SMTP</h1>
<h2>preambule</h2>
<p>SMTP může přímo nakupovat služby od cloudových dodavatelů, jako jsou:</p>    M?XOqh?N_jw?W?y6o?'?E(!:?????q   
<p>Po úspěšném spuštění příkazu budete vyzváni k nastavení záznamu DKIM (jak je uvedeno níže).</p>    Q<qV???dB=6U????v?=??M?w\TMee   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp" alt="" /></p>    U?3i?O??捣~?z????z??x.????]e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp" alt="" /></p>    V	?????+t???^?j??s???}?HY'??   
<p>Když je pošta přijata, přijímající server provede reverzní analýzu názvu domény na IP adrese odesílajícího serveru, aby potvrdil, zda má odesílající server platný reverzní název domény.</p>    W0?!?'{?'??[p???7Xr%?l????????iH?   
<h2>Sestavte SMTP server s chasquidem</h2>
<p><a href="https://github.com/albertito/chasquid">chasquid</a> je open source SMTP server napsaný v jazyce Go.</p>    W?SJ?۸Ͽ??mA?C}??\̮r?PNo?+v35   
<p>Význam každého parametru je následující</p>    X[????
ҋa??e^??[=?e?A]d}~0??q   
<p>Při zadávání objednávky uveďte <code>prefer AMD</code> a server s CPU AMD bude mít lepší výkon.</p>    X???߶g=????{?????????d??5/p?   
<p>Po úspěšné konfiguraci můžete použít <code>curl 6.ipw.cn</code> k zobrazení adresy ipv6 vaší externí sítě.</p>    Yn??B_??W9?9?nJGYV? ?Y=@???Gb??   
<h2>Konfigurace DNS DMARC</h2>
<p>DMARC je zkratka pro (Domain-based Message Authentication, Reporting &amp; Conformance).</p>    `Q8Y?7??,L???(X??Ʋ&D	??????   
<p>Jako náhrada za staré programy pro poštovní servery, jako jsou Postfix a Sendmail, je chasquid jednodušší a snadněji použitelný a je také jednodušší pro sekundární vývoj.</p>    `?G?4?Xj????}?8?a?????F??ay$?]?C   
<p>Zde doporučuji <a href="https://contabo.com">Contabo</a> .</p>    a?# Rr?ͥ?c???*??>?As1?>p?)}???0   
<p>Struktura adresářů je následující:</p>    e}?????e˃?h??_???Y-?
>??َb^UĨ   
<h3>DKIM</h3>
<p>Jak je znázorněno na obrázku níže, původní poštovní stránka Gmailu zobrazuje DKIM, což znamená, že konfigurace DKIM byla úspěšná.</p>    g?0?Q?-k-B?????j-???㻒???~On?!   
<p>Poté restartujte server.</p>    j?Q????mK?????W???&?P?!?8?lhw   
<h2>Zobrazení stavu služby a protokolů</h2>
<p><code>systemctl status chasquid</code> Zobrazení stavu služby.</p>    kr
5?????4[82O?%??,?J	wQe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp" alt="" /></p>    m??O?fFȟ?%?~,b?Sn?37}???1B?{~   
<h2>Výběr serveru</h2>
<p>Server SMTP s vlastním hostitelem vyžaduje veřejnou IP s otevřenými porty 25, 456 a 587.</p>    pE?????,?????@??*M#??h???)?   
<p>Vstupte do konfiguračního skladu ops, spusťte <code>./ssl.sh</code> a v horním adresáři se vytvoří složka <code>conf</code> .</p>    t?̏s?@7??B? V???v?ݯ?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp" alt="" /></p>    y?	??U,Ճ?&?;ks]?f????-BuW???   
<p>Poté spusťte <code>./ssl.sh 123.com</code> a vygenerujte certifikáty <code>123.com</code> a <code>*.123.com</code> pro název vaší domény.</p>    y?o??y?|?uভ?!?O???b?Vʕ_'?z???   
<p>Po přidání uživatele bude aktualizován <code>chasquid/domains/user.tax/users</code> , nezapomeňte jej odeslat do skladu.</p>    zEz?k?.'ۆ?qo??CӚx? ??mL!vYe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp" alt="" /></p>    zI?c?H???lbSi̕͡9A?ԣ??????#e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp" alt="" /></p>    |?L?65x????????:80??=%??
P1 ?[   
<p>Například zálohuji složku conf do svého vlastního procesu github následovně</p>    #???Z?!?{)?#*mm??Ӣ?!S?<?????   
<p>Používá se k zachycení nedoručených zpráv SPF (možná způsobených chybami konfigurace nebo se za vás někdo vydává, aby rozesílal spam).</p>    ?n??? H+?B68?;"???)?S??¼̝ρ   
<p>Contabo je poskytovatel hostingu se sídlem v Mnichově, Německo, založený v roce 2003 s velmi konkurenčními cenami.</p>    ??w??????B?EG????%>??h???MnM?K   
<p>Stačí přidat záznam TXT do vašeho DNS (jak je uvedeno níže).</p>    ?ϱ@W?a?t#?/d????u?D?v??Y??e0/?   
<h3>Standardní šifrování TLS</h3>
<p>Jak je znázorněno na obrázku níže, je zde tento malý zámek, což znamená, že certifikát SSL byl úspěšně povolen.</p>    ?>?vH??o?? ?Ap
p???f?e"??ve   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp" alt="" /></p>    ?sO?s?o?NR??Ac?G8??>?6cǈ(w?r   
<p>Přidáním SPF záznamů můžete maximálně zabránit tomu, aby byly e-maily identifikovány jako spam.</p>    ? >v?Ii?J???[F)??F?f?B0O???  
<ul>
<li>žádné: Neprovede se žádná akce, pouze výsledek ověření je odeslán zpět odesílateli prostřednictvím mechanismu e-mailových zpráv.</li>
<li>Karanténa: Uložte poštu, která neprošla ověřením, do složky nevyžádané pošty, ale neodmítne ji přímo.</li>
<li>odmítnout: Přímé odmítnutí e-mailů, které neprojdou ověřením.</li>
</ul>
<h3>fo (možnosti selhání)</h3>
<p>Určuje množství informací vrácených mechanismem hlášení. Lze jej nastavit na jednu z následujících hodnot:</p>    ?^?k? A??]t??????W?Ty?Ubsw?g  
<ul>
<li><a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html">Amazon SES SMTP</a></li>
<li><a href="https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods">Ali cloud e-mail push</a></li>
</ul>
<p>Můžete si také vytvořit svůj vlastní poštovní server - neomezené odesílání, nízké celkové náklady.</p>    ?)??~z?uE???R3Q???????e?X?2ϖ*?   
<h3>p (zásady)</h3>
<p>Označuje, jak zacházet s e-maily, které selžou při ověření SPF (Sender Policy Framework) nebo DKIM (DomainKeys Identified Mail). Parametr p lze nastavit na jednu ze tří hodnot:</p>    ?i??
0?]??P????u???)R??甄A+??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp" alt="" /></p>    ??|?T?#]1g?8D??N???????>?Z??Ǒ?   
<h2>Reverzní konfigurace názvu domény</h2>
<p>Reverzní název domény má umožnit překlad IP adresy na odpovídající název domény.</p>    ??,3??.o?".???@-?"?:?j?*??H{??   
<p>Navštivte <a href="https://my.contabo.com/rdns">https://my.contabo.com/rdns</a> a nakonfigurujte, jak je uvedeno níže</p>    ????8???AіKO?t.?!TN߂A?A??hv?   
<p>Pro větší pohodlí jsem instalaci a konfiguraci systému ubuntu vložil na <a href="https://github.com/user-tax-dev/os/tree/main/ubuntu">github.com/user-tax-dev/os/tree/main/ubuntu</a> .</p>    ?ֲ?b?_[??X*:(?9???? Gઠ?0"??   
<p>Pokud odesílající server nemá reverzní název domény nebo pokud se reverzní název domény neshoduje s IP adresou odesílajícího serveru, může přijímající server rozpoznat e-mail jako spam nebo jej odmítnout.</p>    ?+J??sun?ž${??o7?t'?=s	^B?I4   
<img 9>
<p>Význam parametrů je následující</p>    ?ڨ`?e?-???9aQw?>??z??6?j??T!??   
<p>První spuštění automaticky nainstaluje <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> a přidá naplánovanou úlohu pro automatické obnovení. <code>crontab -l</code> vidím, že existuje následující řádek.</p>    ???'U?V,?5`s?D%?y??A?W]???|\??   
<h2>Klonujte operační úložiště konfigurace</h2>
<img 3>
<h2>Vygenerujte si bezplatný certifikát SSL pro název své domény</h2>
<p>Odesílání pošty vyžaduje certifikát SSL pro šifrování a podepisování.</p>    ?y5M<r?[Yd?_ţ1B??P????ڥva?   
<p>Spustit <code>./chasquid/init.sh 123.com</code> se nainstaluje automaticky jedním kliknutím (nahraďte 123.com názvem vaší odesílací domény).</p>    ??Z\????Ƥu?bz??D?a????p'??FV   
<p>acme.sh je open source automatický nástroj pro podepisování certifikátů,</p>    ?\Kmڔ&EY?7?(mx?u???b?L?5??   
<p>Obnova certifikátu zavolá skript <code>conf/reload/123.com.sh</code> , upravte tento skript, můžete přidat příkazy jako <code>nginx -s reload</code> pro obnovení mezipaměti certifikátů souvisejících aplikací.</p>    ?e???[e??@??uO?????%?2?	zRt   
<p>Nakonec ji lze nastavit jako výchozí adresu odesílatele (spolu s možností odpovědět stejnou adresou).</p>    ?y????n?p?b?;?F\{????k7h? 0????   
<img 2>
<p>Pokračujte <a href="https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/">výukovým programem contabo: Přidání připojení IPv6 na váš server</a></p>    ?9Y'?8}ߢ????-?`?2n??
p?Fa$~?   
<p>Zaškrtněte políčko Received v hlavičce původního e-mailu a uvidíte, že adresa odesílatele je IPV6, což znamená, že IPV6 je také úspěšně nakonfigurován.</p>    ??<UY????+?F̽^@;??ku????6xe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp" alt="" /></p>    ?????c??Y???!??P??w(l????5??2???   
<p>Pokud server na ssh zobrazí <code>Welcome to TinyCore 13!</code> (jak je znázorněno na obrázku níže), znamená to, že systém ještě nebyl nainstalován. Odpojte ssh a počkejte několik minut, než se znovu přihlásíte.</p>    ??ȫ?[k'y^?X??_???J??ݵ?*#T?D~   
<p><strong>Pokud máte vlastní placenou firemní poštovní schránku, neupravujte MX a tento krok přeskočte.</strong></p>    ??̟??q9JW?ڞG?>??C?
fsHa?j?V   
<p>Poté zadejte ověřovací kód přijatý e-mailem, na který byl přeposlán.</p>    ?Ό}T)?>E=?c?-??v?its????Pބ?   
<p>Doporučuji nákup od hostitele, který má tyto porty otevřené a podporuje nastavení reverzních doménových jmen.</p>    ?U???!m)f0??uΣG?o7?HVtS?????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp" alt="" /></p>    ???m? e7]Lo???_b??C%??>???X??   
<h2>Zálohujte conf do úložiště git</h2>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp" alt="" /></p>    ???Y??'?Ȏ?)??̶A/;/???;??:`ŗ?   
<p>Doporučuje se používat Gmail k přijímání testovacích e-mailů, abyste zkontrolovali, zda jsou konfigurace úspěšné.</p>    ?=???G?JzI>ʥ?'???`??P`F?Ӯ??1   
<p>Přidat záznam TXT <code>_dmarc</code> ,</p>    ??Я?ߠuOgr??#Y(?\?3?9nֿ?z??   
<p>Když se zobrazí <code>Welcome to Ubuntu 22.04.1 LTS</code> , inicializace je dokončena a můžete pokračovat následujícími kroky.</p>    ????*Ao"`?,????Y??U?]SkӶp???1?   
<h2>DNS přidat SPF záznam</h2>
<p>SPF (Sender Policy Framework) je technologie ověřování e-mailů, která se používá k prevenci podvodů s e-maily.</p>    ?;2??j?6???C??5=?&|?_x????;?b?*   
<p>SPF pro <code>_spf.user.tax</code></p>    ?O?O??顾??l???s??l?7?6?{?z?~   
<p>pak běž</p>    ?Q?,?ir????u???d?wt;0?ZU?,X?M?8   
<p>Vstupte do adresáře conf a odešlete do skladu</p>    ?,?7??"?Ku?????2&un?Ir??]_?   
<p>Spustit <code>direnv allow</code> instalaci závislostí (direnv byl nainstalován v předchozím inicializačním procesu s jedním klíčem a do shellu byl přidán hák)</p>    ?jV?????ǔ????5??=L???c??t?V?   
<p>Například SPF <code>user.tax</code> je následující</p>    ƃ??0zn1?? ??BA??`>?k-?,\Z?   
<p>Upravte <code>/etc/netplan/01-netcfg.yaml</code> , přidejte několik řádků, jak je znázorněno na obrázku níže (výchozí konfigurační soubor Contabo VPS tyto řádky již obsahuje, stačí je odkomentovat).</p>    ?_;?<̉f=Fx?  i???T??.?F?_??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp" alt="" /></p>    ?7?=???????d?bA??????????J+?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp" alt="" /></p>    ?tu????9? 4?????I0]о!???P?\   
<p>Pokud váš doménový server nepodporuje typ SPF, stačí přidat záznam typu TXT.</p>    ???Uk??vvJfQ???N??W?1?!?
dmP?   
<p>Po dokončení konfigurace můžete použít jiné e-mailové adresy k odesílání e-mailů na <code>i@user.tax</code> a <code>any123@user.tax</code> , abyste zjistili, zda můžete přijímat e-maily v Gmailu.</p>    ???}??YLrT???ݥ?ܗr??9՜	|   
<p><code>grep chasquid /var/log/syslog</code> nebo <code>journalctl -xeu chasquid</code> může zobrazit protokol chyb.</p>    ?@Ә??S?A??u?q&? ?v?,*sgH??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp" alt="" /></p>    ?j?v$?k?C-??Bݦ??R?4??a?????>?   
<p>Navštivte <a href="https://mail.google.com/mail/u/1/#settings/accounts">https://mail.google.com/mail/u/1/#settings/accounts</a> a klikněte na „Přidat další e-mailovou adresu“.</p>    ?]?F?%?Y"?????_P?0????[M??Ke   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp" alt="" /></p>    ڜ? ??~?dЬ?^p"?}?y?43?	????`   
<p>Pokud ne, zkontrolujte protokol chasquid ( <code>grep chasquid /var/log/syslog</code> ).</p>    ?0?F?b?????[6D???????s?
??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp" alt="" /></p>    ߮?B?D?J?%???]?^?P??????f??-   
<p>upravit <code>/etc/sysctl.conf</code></p>    ??2???Ԟ3E,|??y???V??t??ߔ"9???J   
<p>Spusťte následující příkaz pro instalaci jedním kliknutím.</p>    ?^????~?%?t?4	?@7?K?j w"??W?(   
<img 6>
<p>Lze přidat odesílatele</p>    ???^??PK??s??7<U????;w?Gf?=????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp" alt="" /></p>    ??N>??7]u????v_XI?[?s??k?oU   
<p>Poté spusťte <code>systemctl restart chasquid</code> a restartujte službu.</p>    ?>???u$R???Bu>??T??JO/S(7???   
<p>Najděte svého poskytovatele DNS z <a href="https://github.com/acmesh-official/acme.sh/wiki/dnsapi">acme.sh dnsapi</a> , upravte <code>conf/conf.sh</code> .</p>    ??,NN???DR????Dz?s??F??5ظqζU   
<p>Níže si ukážeme krok za krokem, jak vybudovat vlastní poštovní server.</p>    ?ꁶn??w޶?ѭD????C?C)?@??B7??2   
<img 5>
<h2>Přidat odesílatele</h2>
<p>běh</p>    ??"???gb??㪼+?lJZ?ۃ?]O;??QO?   
<ul>
<li>uživatel: uživatelské jméno SMTP</li>
<li>heslo: heslo SMTP</li>
<li>komu: příjemce</li>
</ul>
<p>Můžete poslat zkušební e-mail.</p>    ???]?D(#?????!v??8ꀂ?>Z?@L%?   
<p>Ověřuje identitu odesílatele pošty tím, že kontroluje, zda IP adresa odesílatele odpovídá DNS záznamům názvu domény, za kterou se vydává, a zabraňuje podvodníkům v zasílání falešných e-mailů.</p>    ??:???颕?m?ç???n???M蠘Ce   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp" alt="" /></p>    ??^?/f??`???M-}??zú???o($F?p??   
<h2>Upravte název hostitele chasquid.conf</h2>
<p>Upravte <code>conf/chasquid/chasquid.conf</code> na hodnotu reverzního názvu domény.</p>    ????k<?I?m3i??K?O?*Oy?;L??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp" alt="" /></p>    ?[??r.p/܅ ???Q?	??G"2?/?\   
<h3>[Volitelné] Inicializujte vývojové prostředí</h3>
<p>Tento krok je volitelný.</p>