|       ?pD?l?8?ws?8(L佌?ev???p???  
<ul>
<li>0: Zgłoś wyniki sprawdzania poprawności dla wszystkich wiadomości</li>
<li>1: Zgłaszaj tylko wiadomości, które nie przeszły weryfikacji</li>
<li>d: Zgłaszaj tylko niepowodzenia weryfikacji nazwy domeny</li>
<li>s: zgłaszaj tylko błędy weryfikacji SPF</li>
<li>l: Zgłaszaj tylko błędy weryfikacji DKIM</li>
</ul>
<h3>rua &amp; ruf</h3>
<ul>
<li>rua (identyfikator URI raportowania dla raportów zbiorczych): adres e-mail do otrzymywania raportów zbiorczych</li>
<li>ruf (identyfikator URI raportowania dla raportów kryminalistycznych): adres e-mail, na który należy otrzymywać szczegółowe raporty</li>
</ul>
<h2>Dodaj rekordy MX, aby przekazywać e-maile do Google Maila</h2>
<p>Ponieważ nie mogłem znaleźć darmowej firmowej skrzynki pocztowej, która obsługuje uniwersalne adresy (Catch-All, może odbierać dowolne e-maile wysyłane do tej nazwy domeny, bez ograniczeń dotyczących prefiksów), użyłem chasquid do przekierowania wszystkich e-maili na moją skrzynkę pocztową Gmail.</p>    Z?I?`O???J??<?ۜc(?ƀ?0??'?o   
<p>Poniżej wezmę VPS Contabo jako przykład, aby zademonstrować, jak zbudować własny serwer pocztowy.</p>    6???ZE?k߀P???T???Ӡ??y?S??   
<h2>Skonfiguruj podpis e-mail DKIM</h2>
<p>DKIM służy do wysyłania podpisów e-maili, aby zapobiec traktowaniu listów jako spamu.</p>    ?f=??9M????,??ƿ?wɨ"&aj?l??S   
<p><code>v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all</code></p>    	z??????	9?#.??Oœ?2J@u.?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp" alt="" /></p>    
 	_??8????*??7Jm?j?7??.X?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp" alt="" /></p>    v??H??v-Hv????W?;?|??Kn-???)   
<p>Najpierw utwórz prywatny magazyn</p>    ?|=?.??2?^??w?j6??}Y'?Ϩ$?pe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp" alt="" /></p>    B??$??eb??u??`V???e???4?)?   
<p>Zauważ, że mam tutaj <code>include:_spf.google.com</code> , ponieważ później skonfiguruję <code>i@user.tax</code> jako adres wysyłania w skrzynce pocztowej Google.</p>    E?????<??ܶ9??????<lJ?gP??;????   
<p><code>*</code> oznacza wszystkie wiadomości e-mail, <code>i</code> to prefiks adresu e-mail użytkownika wysyłającego utworzonego powyżej. Aby przesłać pocztę dalej, każdy użytkownik musi dodać wiersz.</p>    ???+&?gI??E??:-?TE?R???^?DG?ض??   
<p>Jeśli wybierzesz euro jako walutę zakupu, cena będzie tańsza (serwer z 8 GB pamięci i 4 procesorami kosztuje około 529 juanów rocznie, a wstępna opłata instalacyjna jest bezpłatna przez rok).</p>    ?Z????x?2?+ճGh??RA2?4???C|?   
<h2>Wyślij wiadomość e-mail na adres i@user.tax za pomocą Google Maila</h2>
<p>Po otrzymaniu poczty przez Google Mail naturalne jest, że chcesz odpowiedzieć za pomocą <code>i@user.tax</code> zamiast i.user.tax@gmail.com.</p>    ?t???NJ?` ???????06@??Uѭ?3??   
<img 0>
<p>Użytkownicy z Chin powinni zamiast tego użyć następującego polecenia, a język, strefa czasowa itp. zostaną ustawione automatycznie.</p>    ???O?P?????v??g?? ??!t?D???lbe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp" alt="" /></p>    $?@?w???N????4?i?{?P????}m?   
<h2>Wyślij testową wiadomość e-mail, aby sprawdzić, czy konfiguracja przebiegła pomyślnie</h2>
<p>Wpisz <code>ops/chasquid</code></p>    ???? ?ۆ??c:[>$??????S??K?ض??u   
<img 4>
<p>Ścieżka do wygenerowanego certyfikatu jest podobna do <code>/mnt/www/.acme.sh/123.com_ecc。</code></p>    %|????lG???;ت?{??Ǽ?E7 ??fe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp" alt="" /></p>    &??9? ?????????h???EN???|?̦N   
<h2>Konfiguracja systemu Ubuntu</h2>
<p>System operacyjny to Ubuntu 22.04</p>    'u?-?-??:h*????*?2zg???@??U?   
<h3>Sprawdź, czy hasło jest ustawione poprawnie</h3>
<img 7>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp" alt="" /></p>    '????_yU?j??????!???????2???   
<p>Powszechnie stosowane chmury publiczne domyślnie zablokowały te porty i być może uda się je otworzyć wydając zlecenie, ale jest to jednak bardzo uciążliwe.</p>    (???2?T?G??U?=?c5??????#d??   
<p>Następnie dodaj rekord MX (wskazuję tutaj bezpośrednio na adres odwrotnej nazwy domeny, jak pokazano w pierwszym wierszu na poniższym rysunku).</p>    )?U9ؾ1?a?'?R0]?*?Jo???v??21{   
<img 1>
<h3>Contabo umożliwia IPV6</h3>
<p>Włącz IPV6, aby SMTP mógł również wysyłać e-maile z adresami IPV6.</p>    )Q???VmV;u?????ͽ8B?	
L| ?z   
    *&?]p/?<WO?-?I??\??B?x?9#?!l   
<p>Edytuj <code>conf/chasquid/domains/user.tax/aliases</code> , ustaw przekierowanie skrzynki pocztowej</p>    ,'? ?/a??Lޣ?Xf{????0??K? ?2   
<p>Zmodyfikuj lub dodaj następujące wiersze</p>    2?5ǜO\?=???z-??????d?????*oFP?"   
<p>Treść jest następująca</p>    2?I*<kucX1Nկ??*?VFr?S?;dJޱx??   
<p>Po ustawieniu odwrotnej nazwy domeny należy pamiętać o skonfigurowaniu rozdzielczości przekazywania nazwy domeny ipv4 i ipv6 na serwer.</p>    5?-??ϸ?'?
W *k2zfF7?lX^?&?GJ???   
<p>W ten sposób zakończyliśmy tworzenie serwera pocztowego SMTP i jednocześnie korzystamy z Google Mail do wysyłania i odbierania wiadomości e-mail.</p>    6%p4??g5?+f???m.?i\?Y?9x??TA 9   
<p>Następnie kliknij „Pokaż oryginalny e-mail”</p>    63?g?:??X???C@?Q????Doe:?<:?H?{m   
<img 8>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp" alt="" /></p>    9ڕ?O/;??9??cƷ??v>?G???cP?-?@   
<p>Stan normalnej pracy przedstawiono na poniższym rysunku</p>    =E?f?o???I?????????F,??x?>???\   
<p>Ustawienie odwrotnej nazwy domeny może zapobiec identyfikowaniu e-maili jako spamu.</p>    ?O?-B???-???[,-????Q?a?iT#@o?m0   
<p><code>v=spf1 a:smtp.user.tax ~all</code></p>    A?????T?3|7c?b?ve?B?"_?
??r?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp" alt="" /></p>    F?Ra9/]???I^??@i??????0G??o   
<p>Używamy <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> do generowania certyfikatów.</p>    G|Tۍ?։0?a??????g??$??;??jC?   <h1>Zbuduj swój własny serwer wysyłania poczty SMTP</h1>
<h2>preambuła</h2>
<p>SMTP może bezpośrednio kupować usługi od dostawców usług w chmurze, takich jak:</p>    M?XOqh?N_jw?W?y6o?'?E(!:?????u   
<p>Po pomyślnym uruchomieniu polecenia zostaniesz poproszony o ustawienie rekordu DKIM (jak pokazano poniżej).</p>    Q<qV???dB=6U????v?=??M?w\TMee   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp" alt="" /></p>    U?3i?O??捣~?z????z??x.????]e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp" alt="" /></p>    V	?????+t???^?j??s???}?HY'??   
<p>Po odebraniu poczty serwer odbierający przeprowadzi analizę odwrotnej nazwy domeny na adresie IP serwera wysyłającego, aby potwierdzić, czy serwer wysyłający ma prawidłową odwrotną nazwę domeny.</p>    W0?!?'{?'??[p???7Xr%?l????????iH?   
<h2>Zbuduj serwer SMTP za pomocą chasquid</h2>
<p><a href="https://github.com/albertito/chasquid">chasquid</a> to serwer SMTP typu open source napisany w języku Go.</p>    W?SJ?۸Ͽ??mA?C}??\̮r?PNo?+v37   
<p>Znaczenie każdego parametru jest następujące</p>    X[????
ҋa??e^??[=?e?A]d}~0???   
<p>Składając zamówienie, pamiętaj, <code>prefer AMD</code> , a serwer z procesorem AMD będzie miał lepszą wydajność.</p>    X???߶g=????{?????????d??5/p?   
<p>Po pomyślnej konfiguracji możesz użyć <code>curl 6.ipw.cn</code> , aby wyświetlić adres IPv6 swojej sieci zewnętrznej.</p>    Yn??B_??W9?9?nJGYV? ?Y=@???Gb??~   
<h2>Konfiguracja DNS DMARC</h2>
<p>DMARC to skrót od (Domain-based Message Authentication, Reporting &amp; Conformance).</p>    `Q8Y?7??,L???(X??Ʋ&D	??????   
<p>Jako substytut starożytnych programów serwerów pocztowych, takich jak Postfix i Sendmail, chasquid jest prostszy i łatwiejszy w użyciu, a także łatwiejszy do wtórnego programowania.</p>    `?G?4?Xj????}?8?a?????F??ay$?]?A   
<p>Tutaj polecam <a href="https://contabo.com">Contabo</a> .</p>    a?# Rr?ͥ?c???*??>?As1?>p?)}???0   
<p>Struktura katalogów jest następująca:</p>    e}?????e˃?h??_???Y-?
>??َb^Uı   
<h3>DKIM</h3>
<p>Jak pokazano na poniższym rysunku, strona oryginalnej poczty Gmaila wyświetla DKIM, co oznacza, że ​​konfiguracja DKIM zakończyła się pomyślnie.</p>    g?0?Q?-k-B?????j-???㻒???~On?%   
<p>Następnie zrestartuj serwer.</p>    j?Q????mK?????W???&?P?!?8?lhr   
<h2>Wyświetl stan usługi i dzienniki</h2>
<p><code>systemctl status chasquid</code> Wyświetl stan usługi.</p>    kr
5?????4[82O?%??,?J	wQe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp" alt="" /></p>    m??O?fFȟ?%?~,b?Sn?37}???1B?{z   
<h2>Wybór serwera</h2>
<p>Samoobsługowy serwer SMTP wymaga publicznego adresu IP z otwartymi portami 25, 456 i 587.</p>    pE?????,?????@??*M#??h???)?   
<p>Wejdź do konfiguracji magazynu ops, uruchom <code>./ssl.sh</code> , a w górnym katalogu zostanie utworzony folder <code>conf</code> .</p>    t?̏s?@7??B? V???v?ݯ?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp" alt="" /></p>    y?	??U,Ճ?&?;ks]?f????-BuW???   
<p>Następnie uruchom <code>./ssl.sh 123.com</code> , aby wygenerować certyfikaty <code>123.com</code> i <code>*.123.com</code> dla swojej nazwy domeny.</p>    y?o??y?|?uভ?!?O???b?Vʕ_'?z???   
<p>Po dodaniu użytkownika, <code>chasquid/domains/user.tax/users</code> zostanie zaktualizowany, pamiętaj o przesłaniu go do hurtowni.</p>    zEz?k?.'ۆ?qo??CӚx? ??mL!vYe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp" alt="" /></p>    zI?c?H???lbSi̕͡9A?ԣ??????#e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp" alt="" /></p>    |?L?65x????????:80??=%??
P1 ?r   
<p>Na przykład tworzę kopię zapasową folderu conf w moim własnym procesie github w następujący sposób</p>    #???Z?!?{)?#*mm??Ӣ?!S?<?????   
<p>Służy do przechwytywania odrzuceń SPF (być może spowodowanych błędami konfiguracji lub kimś innym, kto podszywa się pod Ciebie, aby wysyłać spam).</p>    ?n??? H+?B68?;"???)?S??¼̝ρ   
<p>Contabo to dostawca hostingu z siedzibą w Monachium w Niemczech, założony w 2003 roku z bardzo konkurencyjnymi cenami.</p>    ??w??????B?EG????%>??h???MnM?J   
<p>Po prostu dodaj rekord TXT do swojego DNS (jak pokazano poniżej).</p>    ?ϱ@W?a?t#?/d????u?D?v??Y??e0/?   
<h3>Standardowe szyfrowanie TLS</h3>
<p>Jak pokazano na poniższym rysunku, jest to mała kłódka, co oznacza, że ​​certyfikat SSL został pomyślnie włączony.</p>    ?>?vH??o?? ?Ap
p???f?e"??ve   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp" alt="" /></p>    ?sO?s?o?NR??Ac?G8??>?6cǈ(w?u   
<p>Dodanie rekordów SPF może w jak największym stopniu zapobiec identyfikowaniu wiadomości e-mail jako spam.</p>    ? >v?Ii?J???[F)??F?f?B0O???0  
<ul>
<li>brak: żadne działanie nie jest podejmowane, tylko wynik weryfikacji jest przekazywany z powrotem do nadawcy za pośrednictwem mechanizmu raportowania e-mail.</li>
<li>Kwarantanna: Umieść wiadomość, która nie przeszła weryfikacji, w folderze ze spamem, ale nie odrzuci jej bezpośrednio.</li>
<li>odrzuć: Bezpośrednio odrzucaj e-maile, które nie przeszły weryfikacji.</li>
</ul>
<h3>fo (opcje awarii)</h3>
<p>Określa ilość informacji zwracanych przez mechanizm raportowania. Można go ustawić na jedną z następujących wartości:</p>    ?^?k? A??]t??????W?Ty?Ubsw?^  
<ul>
<li><a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html">Amazon SES SMTP</a></li>
<li><a href="https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods">Push e-mail w chmurze Ali</a></li>
</ul>
<p>Możesz także zbudować własny serwer pocztowy - nieograniczone wysyłanie, niski całkowity koszt.</p>    ?)??~z?uE???R3Q???????e?X?2ϖ*?   
<h3>p (Zasady)</h3>
<p>Wskazuje, jak postępować z wiadomościami e-mail, które nie przeszły weryfikacji SPF (Sender Policy Framework) lub DKIM (DomainKeys Identified Mail). Parametr p można ustawić na jedną z trzech wartości:</p>    ?i??
0?]??P????u???)R??甄A+??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp" alt="" /></p>    ??|?T?#]1g?8D??N???????>?Z??Ǒ?   
<h2>Odwróć konfigurację nazwy domeny</h2>
<p>Odwrotna nazwa domeny ma na celu umożliwienie przetłumaczenia adresu IP na odpowiednią nazwę domeny.</p>    ??,3??.o?".???@-?"?:?j?*??H{?{   
<p>Odwiedź <a href="https://my.contabo.com/rdns">https://my.contabo.com/rdns</a> i skonfiguruj, jak pokazano poniżej</p>    ????8???AіKO?t.?!TN߂A?A??hv?   
<p>Dla wygody umieściłem instalację i konfigurację systemu oprogramowania ubuntu w <a href="https://github.com/user-tax-dev/os/tree/main/ubuntu">github.com/user-tax-dev/os/tree/main/ubuntu</a> .</p>    ?ֲ?b?_[??X*:(?9???? Gઠ?0"??   
<p>Jeśli serwer wysyłający nie ma odwrotnej nazwy domeny lub jeśli odwrotna nazwa domeny nie odpowiada adresowi IP serwera wysyłającego, serwer odbierający może uznać wiadomość e-mail za spam lub ją odrzucić.</p>    ?+J??sun?ž${??o7?t'?=s	^B?I8   
<img 9>
<p>Znaczenie parametrów jest następujące</p>    ?ڨ`?e?-???9aQw?>??z??6?j??T!??   
<p>Pierwsze uruchomienie automatycznie zainstaluje <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> i doda zaplanowane zadanie do automatycznego odnowienia. <code>crontab -l</code> widzi, że istnieje taka linia jak poniżej.</p>    ???'U?V,?5`s?D%?y??A?W]???|\??   
<h2>Sklonuj operacje repozytorium konfiguracji</h2>
<img 3>
<h2>Wygeneruj bezpłatny certyfikat SSL dla swojej nazwy domeny</h2>
<p>Wysyłanie poczty wymaga certyfikatu SSL do szyfrowania i podpisywania.</p>    ?y5M<r?[Yd?_ţ1B??P????ڥva?   
<p>Uruchom <code>./chasquid/init.sh 123.com</code> zostanie zainstalowany automatycznie jednym kliknięciem (zastąp 123.com nazwą domeny wysyłającej).</p>    ??Z\????Ƥu?bz??D?a????p'??F]   
<p>acme.sh to zautomatyzowane narzędzie do podpisywania certyfikatów typu open source,</p>    ?\Kmڔ&EY?7?(mx?u???b?L?5??   
<p>Odnowienie certyfikatu wywoła skrypt <code>conf/reload/123.com.sh</code> , edytuj ten skrypt, możesz dodać polecenia, takie jak <code>nginx -s reload</code> aby odświeżyć pamięć podręczną certyfikatów powiązanych aplikacji.</p>    ?e???[e??@??uO?????%?2?	zRp   
<p>Wreszcie można go ustawić jako domyślny adres nadawcy (wraz z opcją odpowiedzi z tym samym adresem).</p>    ?y????n?p?b?;?F\{????k7h? 0????   
<img 2>
<p>Kontynuuj, korzystając z <a href="https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/">samouczka contabo: Dodawanie łączności IPv6 do serwera</a></p>    ?9Y'?8}ߢ????-?`?2n??
p?Fa$~?   
<p>Sprawdź Otrzymano w nagłówku oryginalnej wiadomości e-mail, a zobaczysz, że adres nadawcy to IPV6, co oznacza, że ​​IPV6 również został pomyślnie skonfigurowany.</p>    ??<UY????+?F̽^@;??ku????6xe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp" alt="" /></p>    ?????c??Y???!??P??w(l????5??2???   
<p>Jeśli serwer na ssh wyświetla <code>Welcome to TinyCore 13!</code> (jak pokazano na poniższym rysunku), oznacza to, że system nie został jeszcze zainstalowany. Odłącz ssh i poczekaj kilka minut, aby zalogować się ponownie.</p>    ??ȫ?[k'y^?X??_???J??ݵ?*#T?Dx   
<p><strong>Jeśli masz własną płatną firmową skrzynkę pocztową, nie modyfikuj MX i pomiń ten krok.</strong></p>    ??̟??q9JW?ڞG?>??C?
fsHa?j?m   
<p>Następnie wprowadź kod weryfikacyjny otrzymany w wiadomości e-mail, na którą został przekazany.</p>    ?Ό}T)?>E=?c?-??v?its????Pބ?q   
<p>Polecam kupowanie od hosta, który ma otwarte te porty i obsługuje konfigurowanie odwrotnych nazw domen.</p>    ?U???!m)f0??uΣG?o7?HVtS?????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp" alt="" /></p>    ???m? e7]Lo???_b??C%??>???X??   
<h2>Wykonaj kopię zapasową konfiguracji do repozytorium git</h2>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp" alt="" /></p>    ???Y??'?Ȏ?)??̶A/;/???;??:`ŗ?   
<p>Zaleca się używanie Gmaila do otrzymywania e-maili testowych w celu sprawdzenia, czy konfiguracja przebiegła pomyślnie.</p>    ?=???G?JzI>ʥ?'???`??P`F?Ӯ??.   
<p>Dodaj rekord TXT <code>_dmarc</code> ,</p>    ??Я?ߠuOgr??#Y(?\?3?9nֿ?z??   
<p>Gdy pojawi się <code>Welcome to Ubuntu 22.04.1 LTS</code> , inicjalizacja została zakończona i można kontynuować wykonywanie poniższych czynności.</p>    ????*Ao"`?,????Y??U?]SkӶp???1?   
<h2>DNS dodaje rekord SPF</h2>
<p>SPF (Sender Policy Framework) to technologia weryfikacji wiadomości e-mail używana do zapobiegania oszustwom e-mailowym.</p>    ?;2??j?6???C??5=?&|?_x????;?b?*   
<p>SPF dla <code>_spf.user.tax</code></p>    ?O?O??顾??l???s??l?7?6?{?z?~   
<p>następnie uruchomić</p>    ?Q?,?ir????u???d?wt;0?ZU?,X?M?7   
<p>Wejdź do katalogu conf i prześlij do magazynu</p>    ?,?7??"?Ku?????2&un?Ir??]_?   
<p>Uruchom <code>direnv allow</code> aby zainstalować zależności (direnv został zainstalowany w poprzednim procesie inicjalizacji jednym klawiszem, a do powłoki dodano hak)</p>    ?jV?????ǔ????5??=L???c??t?VA   
<p>Na przykład SPF <code>user.tax</code> jest następujący</p>    ƃ??0zn1?? ??BA??`>?k-?,\Z?   
<p>Edytuj <code>/etc/netplan/01-netcfg.yaml</code> , dodaj kilka linii, jak pokazano na poniższym rysunku (domyślny plik konfiguracyjny Contabo VPS ma już te linie, po prostu odkomentuj je).</p>    ?_;?<̉f=Fx?  i???T??.?F?_??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp" alt="" /></p>    ?7?=???????d?bA??????????J+?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp" alt="" /></p>    ?tu????9? 4?????I0]о!???P?`   
<p>Jeśli Twój serwer nazw domen nie obsługuje typu SPF, po prostu dodaj rekord typu TXT.</p>    ???Uk??vvJfQ???N??W?1?!?
dmP?   
<p>Po zakończeniu konfiguracji możesz użyć innych adresów e-mail do wysyłania e-maili na <code>i@user.tax</code> i <code>any123@user.tax</code> , aby sprawdzić, czy możesz odbierać e-maile w Gmailu.</p>    ???}??YLrT???ݥ?ܗr??9՜	?   
<p><code>grep chasquid /var/log/syslog</code> lub <code>journalctl -xeu chasquid</code> może przeglądać dziennik błędów.</p>    ?@Ә??S?A??u?q&? ?v?,*sgH??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp" alt="" /></p>    ?j?v$?k?C-??Bݦ??R?4??a?????>?   
<p>Odwiedź <a href="https://mail.google.com/mail/u/1/#settings/accounts">https://mail.google.com/mail/u/1/#settings/accounts</a> i kliknij „Dodaj kolejny adres e-mail”.</p>    ?]?F?%?Y"?????_P?0????[M??Ke   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp" alt="" /></p>    ڜ? ??~?dЬ?^p"?}?y?43?	????^   
<p>Jeśli nie, sprawdź dziennik chasquid ( <code>grep chasquid /var/log/syslog</code> ).</p>    ?0?F?b?????[6D???????s?
??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp" alt="" /></p>    ߮?B?D?J?%???]?^?P??????f??,   
<p>edytuj <code>/etc/sysctl.conf</code></p>    ??2???Ԟ3E,|??y???V??t??ߔ"9???O   
<p>Uruchom następujące polecenie, aby zainstalować jednym kliknięciem.</p>    ?^????~?%?t?4	?@7?K?j w"??W?%   
<img 6>
<p>Może dodać nadawcę</p>    ???^??PK??s??7<U????;w?Gf?=????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp" alt="" /></p>    ??N>??7]u????v_XI?[?s??k?od   
<p>Następnie uruchom <code>systemctl restart chasquid</code> aby ponownie uruchomić usługę.</p>    ?>???u$R???Bu>??T??JO/S(7???   
<p>Znajdź swojego dostawcę DNS z <a href="https://github.com/acmesh-official/acme.sh/wiki/dnsapi">acme.sh dnsapi</a> , edytuj <code>conf/conf.sh</code> .</p>    ??,NN???DR????Dz?s??F??5ظqζP   
<p>Poniżej pokazujemy krok po kroku jak zbudować własny serwer pocztowy.</p>    ?ꁶn??w޶?ѭD????C?C)?@??B7??2   
<img 5>
<h2>Dodaj nadawcę</h2>
<p>uruchomić</p>    ??"???gb??㪼+?lJZ?ۃ?]O;??QO?   
<ul>
<li>użytkownik: nazwa użytkownika SMTP</li>
<li>pass: hasło SMTP</li>
<li>do: odbiorcy</li>
</ul>
<p>Możesz wysłać testową wiadomość e-mail.</p>    ???]?D(#?????!v??8ꀂ?>Z?@L%?   
<p>Weryfikuje tożsamość nadawcy poczty, sprawdzając, czy adres IP nadawcy jest zgodny z rekordami DNS nazwy domeny, za którą się podaje, zapobiegając wysyłaniu fałszywych wiadomości e-mail przez oszustów.</p>    ??:???颕?m?ç???n???M蠘Ce   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp" alt="" /></p>    ??^?/f??`???M-}??zú???o($F?p??   
<h2>Edytuj nazwę hosta chasquid.conf</h2>
<p>Zmodyfikuj <code>conf/chasquid/chasquid.conf</code> na wartość odwrotnej nazwy domeny.</p>    ????k<?I?m3i??K?O?*Oy?;L??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp" alt="" /></p>    ?[??r.p/܅ ???Q?	??G"2?/?^   
<h3>[Opcjonalnie] Zainicjuj środowisko programistyczne</h3>
<p>Ten krok jest opcjonalny.</p>