|       ?pD?l?8?ws?8(L佌?ev???p????  
<ul>
<li>0: Irrapporta r-riżultati tal-validazzjoni għall-messaġġi kollha</li>
<li>1: Irrapporta biss messaġġi li jfallu l-verifika</li>
<li>d: Irrapporta biss il-fallimenti tal-verifika tal-isem tad-dominju</li>
<li>s: jirrapporta biss in-nuqqasijiet tal-verifika SPF</li>
<li>l: Irrapporta biss il-fallimenti tal-verifika DKIM</li>
</ul>
<h3>rua &amp; ruf</h3>
<ul>
<li>rua (Rapporting URI for Aggregate reports): Indirizz elettroniku biex tirċievi rapporti aggregati</li>
<li>ruf (Rapporting URI għal rapporti Forensiċi): indirizz elettroniku biex tirċievi rapporti dettaljati</li>
</ul>
<h2>Żid rekords MX biex tibgħat emails lil Google Mail</h2>
<p>Minħabba li ma stajtx insib kaxxa postali korporattiva b'xejn li tappoġġja indirizzi universali (Catch-All, tista' tirċievi kwalunkwe email mibgħuta lil dan l-isem tad-dominju, mingħajr restrizzjonijiet fuq il-prefissi), użajt chasquid biex tibgħat l-emails kollha lill-kaxxa tal-posta tal-Gmail tiegħi.</p>    Z?I?`O???J??<?ۜc(?ƀ?0??'?y   
<p>F'dan li ġej, se nieħu l-VPS ta' Contabo bħala eżempju biex nuri kif tibni s-server tal-posta tiegħek stess.</p>    6???ZE?k߀P???T???Ӡ??y?S??   
<h2>Ikkonfigura l-Firma tal-Email DKIM</h2>
<p>DKIM jintuża biex jintbagħat firem email biex jipprevjeni li l-ittri jiġu ttrattati bħala spam.</p>    ?f=??9M????,??ƿ?wɨ"&aj?l??S   
<p><code>v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all</code></p>    	z??????	9?#.??Oœ?2J@u.?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp" alt="" /></p>    
 	_??8????*??7Jm?j?7??.X?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp" alt="" /></p>    v??H??v-Hv????W?;?|??Kn-???&   
<p>Oħloq maħżen privat l-ewwel</p>    ?|=?.??2?^??w?j6??}Y'?Ϩ$?pe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp" alt="" /></p>    B??$??eb??u??`V???e???4?)?   
<p>Innota li għandi <code>include:_spf.google.com</code> hawn, għaliex ser nikkonfigura <code>i@user.tax</code> bħala l-indirizz li jibgħat fil-kaxxa postali ta' Google aktar tard.</p>    E?????<??ܶ9??????<lJ?gP??;????   
<p><code>*</code> jindika l-emails kollha, <code>i</code> huwa l-prefiss tal-indirizz tal-email tal-utent li jibgħat maħluq hawn fuq. Biex tibgħat il-posta, kull utent jeħtieġ li jżid linja.</p>    ???+&?gI??E??:-?TE?R???^?DG?ض??   
<p>Jekk tagħżel l-Euro bħala l-munita tax-xiri, il-prezz ikun irħas (server b'memorja ta '8GB u 4 CPUs jiswa madwar 529 wan fis-sena, u l-miżata tal-installazzjoni inizjali hija b'xejn għal sena).</p>    ?Z????x?2?+ճGh??RA2?4???C|?   
<h2>Ibgħat email lil i@user.tax b'Google Mail</h2>
<p>Wara li Google Mail tirċievi l-posta, huwa naturali li tixtieq twieġeb bi <code>i@user.tax</code> minflok i.user.tax@gmail.com.</p>    ?t???NJ?` ???????06@??Uѭ?3??   
<img 0>
<p>Utenti Ċiniżi, jekk jogħġbok uża l-kmand li ġej minflok, u l-lingwa, iż-żona tal-ħin, eċċ se jiġu ssettjati awtomatikament.</p>    ???O?P?????v??g?? ??!t?D???lbe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp" alt="" /></p>    $?@?w???N????4?i?{?P????}m?   
<h2>Ibgħat email tat-test biex tivverifika jekk il-konfigurazzjoni hix ta' suċċess</h2>
<p>Daħħal <code>ops/chasquid</code></p>    ???? ?ۆ??c:[>$??????S??K?ض??~   
<img 4>
<p>Il-mogħdija għaċ-ċertifikat iġġenerat hija xi ħaġa bħal <code>/mnt/www/.acme.sh/123.com_ecc。</code></p>    %|????lG???;ت?{??Ǽ?E7 ??fe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp" alt="" /></p>    &??9? ?????????h???EN???|?̦d   
<h2>Konfigurazzjoni tas-sistema Ubuntu</h2>
<p>Is-sistema operattiva hawnhekk hija Ubuntu 22.04</p>    'u?-?-??:h*????*?2zg???@??U?   
<h3>Ivverifika li l-password hija ssettjata b'mod korrett</h3>
<img 7>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp" alt="" /></p>    '????_yU?j??????!???????2???   
<p>Sħab pubbliċi użati b'mod komuni bblokkaw dawn il-portijiet b'mod awtomatiku, u jista 'jkun possibbli li jinfetħu billi toħroġ ordni ta' xogħol, iżda wara kollox hija idejqek ħafna.</p>    (???2?T?G??U?=?c5??????#d??   
<p>Imbagħad żid ir-rekord MX (nippunta direttament lejn l-indirizz tal-isem tad-dominju invers hawn, kif muri fl-ewwel linja fil-figura hawn taħt).</p>    )?U9ؾ1?a?'?R0]?*?Jo???v??21?   
<img 1>
<h3>Contabo jippermetti l-IPV6</h3>
<p>Ippermetti IPV6 sabiex l-SMTP ikun jista' jibgħat ukoll emails b'indirizzi IPV6.</p>    )Q???VmV;u?????ͽ8B?	
L| ?z   
    *&?]p/?<WO?-?I??\??B?x?9#?!k   
<p>Editja <code>conf/chasquid/domains/user.tax/aliases</code> , issettja l-kaxxa tal-posta li tibgħat</p>    ,'? ?/a??Lޣ?Xf{????0??K? ?/   
<p>Immodifika jew żid il-linji li ġejjin</p>    2?5ǜO\?=???z-??????d?????*oFP?!   
<p>Il-kontenut huwa kif ġej</p>    2?I*<kucX1Nկ??*?VFr?S?;dJޱx??   
<p>Wara li ssettja l-isem tad-dominju b'lura, ftakar li tikkonfigura r-riżoluzzjoni 'l quddiem tal-isem tad-dominju ipv4 u ipv6 lis-server.</p>    5?-??ϸ?'?
W *k2zfF7?lX^?&?GJ???   
<p>B'dan il-mod, lestejna l-istabbiliment tas-server tal-posta SMTP u fl-istess ħin nużaw Google Mail biex nibagħtu u nirċievu emails.</p>    6%p4??g5?+f???m.?i\?Y?9x??TA >   
<p>Imbagħad ikklikkja &quot;Uri l-Email Oriġinali&quot;</p>    63?g?:??X???C@?Q????Doe:?<:?H?{m   
<img 8>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp" alt="" /></p>    9ڕ?O/;??9??cƷ??v>?G???cP?-?H   
<p>L-istat ta 'tħaddim normali huwa kif muri fil-figura hawn taħt</p>    =E?f?o???I?????????F,??x?>???o   
<p>L-issettjar ta' isem ta' dominju invers jista' jipprevjeni emails milli jiġu identifikati bħala spam.</p>    ?O?-B???-???[,-????Q?a?iT#@o?m0   
<p><code>v=spf1 a:smtp.user.tax ~all</code></p>    A?????T?3|7c?b?ve?B?"_?
??r?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp" alt="" /></p>    F?Ra9/]???I^??@i??????0G??u   
<p>Aħna nużaw <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> biex niġġeneraw ċertifikati.</p>    G|Tۍ?։0?a??????g??$??;??jC?   <h1>Ibni s-server tiegħek li tibgħat il-posta SMTP</h1>
<h2>preambolu</h2>
<p>SMTP jista’ jixtri direttament servizzi minn bejjiegħa tal-cloud, bħal:</p>    M?XOqh?N_jw?W?y6o?'?E(!:?????r   
<p>Wara li l-kmand jaħdem b'suċċess, tkun imħeġġeġ biex tissettja r-rekord DKIM (kif muri hawn taħt).</p>    Q<qV???dB=6U????v?=??M?w\TMee   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp" alt="" /></p>    U?3i?O??捣~?z????z??x.????]e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp" alt="" /></p>    V	?????+t???^?j??s???}?HY'??   
<p>Meta tiġi riċevuta l-posta, is-server li jirċievi jwettaq analiżi tal-isem tad-dominju invers fuq l-indirizz IP tas-server li jibgħat biex jikkonferma jekk is-server li jibgħat għandux isem tad-dominju reverse validu.</p>    W0?!?'{?'??[p???7Xr%?l????????iH?   
<h2>Ibni server SMTP ma chasquid</h2>
<p><a href="https://github.com/albertito/chasquid">chasquid</a> huwa server SMTP open source miktub bil-lingwa Go.</p>    W?SJ?۸Ͽ??mA?C}??\̮r?PNo?+v33   
<p>It-tifsira ta 'kull parametru hija kif ġej</p>    X[????
ҋa??e^??[=?e?A]d}~0??r   
<p>Meta tagħmel ordni, rimarka <code>prefer AMD</code> , u s-server b'AMD CPU se jkollu prestazzjoni aħjar.</p>    X???߶g=????{?????????d??5/p?   
<p>Wara li l-konfigurazzjoni tirnexxi, tista 'tuża <code>curl 6.ipw.cn</code> biex tara l-indirizz ipv6 tan-netwerk estern tiegħek.</p>    Yn??B_??W9?9?nJGYV? ?Y=@???Gb???   
<h2>Konfigurazzjoni DNS DMARC</h2>
<p>DMARC hija l-abbrevjazzjoni ta' (Awtentikazzjoni, Rappurtar u Konformità tal-Messaġġ ibbażati fuq id-Dominju).</p>    `Q8Y?7??,L???(X??Ʋ&D	??????   
<p>Bħala sostitut għall-programmi antiki tas-server tal-posta bħal Postfix u Sendmail, chasquid huwa aktar sempliċi u faċli biex jintuża, u huwa wkoll aktar faċli għall-iżvilupp sekondarju.</p>    `?G?4?Xj????}?8?a?????F??ay$?]?K   
<p>Hawnhekk, nirrakkomanda <a href="https://contabo.com">Contabo</a> .</p>    a?# Rr?ͥ?c???*??>?As1?>p?)}???2   
<p>L-istruttura tad-direttorju hija kif ġej:</p>    e}?????e˃?h??_???Y-?
>??َb^UĢ   
<h3>DKIM</h3>
<p>Kif muri fil-figura hawn taħt, il-paġna tal-posta oriġinali tal-Gmail turi DKIM, li jfisser li l-konfigurazzjoni DKIM hija ta 'suċċess.</p>    g?0?Q?-k-B?????j-???㻒???~On?&   
<p>Imbagħad erġa ibda s-server.</p>    j?Q????mK?????W???&?P?!?8?lhu   
<h2>Ara l-istatus tas-servizz u z-zkuk</h2>
<p><code>systemctl status chasquid</code> Ara l-istatus tas-servizz.</p>    kr
5?????4[82O?%??,?J	wQe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp" alt="" /></p>    m??O?fFȟ?%?~,b?Sn?37}???1B?{}   
<h2>Għażla tas-server</h2>
<p>Is-server SMTP awto-ospitat jeħtieġ IP pubbliku bil-portijiet 25, 456, u 587 miftuħa.</p>    pE?????,?????@??*M#??h???)?   
<p>Daħħal l-ops tal-maħżen tal-konfigurazzjoni, mexxi <code>./ssl.sh</code> , u se jinħoloq folder <code>conf</code> fid-direttorju ta 'fuq.</p>    t?̏s?@7??B? V???v?ݯ?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp" alt="" /></p>    y?	??U,Ճ?&?;ks]?f????-BuW???   
<p>Imbagħad mexxi <code>./ssl.sh 123.com</code> biex tiġġenera ċertifikati <code>123.com</code> u <code>*.123.com</code> għall-isem tad-dominju tiegħek.</p>    y?o??y?|?uভ?!?O???b?Vʕ_'?z???   
<p>Wara li żżid l-utent, <code>chasquid/domains/user.tax/users</code> se jiġu aġġornati, ftakar li tissottomettiha lill-maħżen.</p>    zEz?k?.'ۆ?qo??CӚx? ??mL!vYe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp" alt="" /></p>    zI?c?H???lbSi̕͡9A?ԣ??????#e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp" alt="" /></p>    |?L?65x????????:80??=%??
P1 ?g   
<p>Pereżempju, nagħmel backup tal-folder tal-conf fil-proċess tal-github tiegħi stess kif ġej</p>    #???Z?!?{)?#*mm??Ӣ?!S?<?????   
<p>Jintuża biex jinqabad SPF bounces (forsi kkawżati minn żbalji ta 'konfigurazzjoni, jew xi ħadd ieħor qed jippretendi li inti biex tibgħat spam).</p>    ?n??? H+?B68?;"???)?S??¼̝?   
<p>Contabo huwa fornitur ta 'hosting ibbażat fi Munich, il-Ġermanja, imwaqqaf fl-2003 bi prezzijiet kompetittivi ħafna.</p>    ??w??????B?EG????%>??h???MnM?D   
<p>Żid biss rekord TXT mad-DNS tiegħek (kif muri hawn taħt).</p>    ?ϱ@W?a?t#?/d????u?D?v??Y??e0/?   
<h3>Encryption standard TLS</h3>
<p>Kif muri fil-figura hawn taħt, hemm dan il-lock żgħir, li jfisser li ċ-ċertifikat SSL ġie attivat b'suċċess.</p>    ?>?vH??o?? ?Ap
p???f?e"??ve   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp" alt="" /></p>    ?sO?s?o?NR??Ac?G8??>?6cǈ(w?s   
<p>Iż-żieda ta 'rekords SPF tista' tipprevjeni emails milli jiġu identifikati bħala spam kemm jista 'jkun.</p>    ? >v?Ii?J???[F)??F?f?B0O???9  
<ul>
<li>xejn: Ma tittieħed l-ebda azzjoni, ir-riżultat tal-verifika biss jingħata lura lill-mittent permezz tal-mekkaniżmu ta' rappurtar bl-email.</li>
<li>Kwarantina: Poġġi l-posta li ma għaddietx mill-verifika fil-folder tal-ispam, iżda mhux se tirrifjuta l-posta direttament.</li>
<li>tirrifjuta: Tiċħad direttament emails li ma rnexxilhomx verifika.</li>
</ul>
<h3>fo (Għażliet ta' Falliment)</h3>
<p>Jispeċifika l-ammont ta' informazzjoni mibgħuta lura mill-mekkaniżmu ta' rappurtar. Jista' jiġi ssettjat għal wieħed mill-valuri li ġejjin:</p>    ?^?k? A??]t??????W?Ty?Ubsw?W  
<ul>
<li><a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html">Amazon SES SMTP</a></li>
<li><a href="https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods">Ali sħaba email push</a></li>
</ul>
<p>Tista 'wkoll tibni s-server tal-posta tiegħek stess - jibgħat illimitat, spiża ġenerali baxxa.</p>    ?)??~z?uE???R3Q???????e?X?2ϖ*?   
<h3>p (Politika)</h3>
<p>Jindika kif timmaniġġja l-emails li jfallu mill-verifika SPF (Sender Policy Framework) jew DKIM (DomainKeys Identified Mail). Il-parametru p jista' jiġi ssettjat għal wieħed minn tliet valuri:</p>    ?i??
0?]??P????u???)R??甄A+??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp" alt="" /></p>    ??|?T?#]1g?8D??N???????>?Z??Ǒ?   
<h2>Reverse konfigurazzjoni tal-isem tad-dominju</h2>
<p>L-isem tad-dominju invers huwa li jippermetti li l-indirizz IP jiġi solvut għall-isem tad-dominju korrispondenti.</p>    ??,3??.o?".???@-?"?:?j?*??H{?s   
<p>Żur <a href="https://my.contabo.com/rdns">https://my.contabo.com/rdns</a> u kkonfigura kif muri hawn taħt</p>    ????8???AіKO?t.?!TN߂A?A??hv?   
<p>Għall-konvenjenza, nressaq l-installazzjoni u l-konfigurazzjoni tas-sistema tas-softwer ubuntu <a href="https://github.com/user-tax-dev/os/tree/main/ubuntu">f'github.com/</a> user-tax-dev/os/tree/main/ubuntu .</p>    ?ֲ?b?_[??X*:(?9???? Gઠ?0"??   
<p>Jekk is-server li jibgħat m'għandux isem tad-dominju invers jew jekk l-isem tad-dominju invers ma jaqbilx mal-indirizz IP tas-server li jibgħat, is-server li jirċievi jista' jagħraf l-email bħala spam jew jirrifjutah.</p>    ?+J??sun?ž${??o7?t'?=s	^B?I6   
<img 9>
<p>It-tifsira tal-parametri hija kif ġej</p>    ?ڨ`?e?-???9aQw?>??z??6?j??T!??   
<p>L-ewwel ġirja awtomatikament tinstalla <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> u żżid kompitu skedat għal tiġdid awtomatiku. <code>crontab -l</code> jista 'jara li hemm tali linja kif ġej.</p>    ???'U?V,?5`s?D%?y??A?W]???|\??   
<h2>Ikklona l-ops tar-repożitorju tal-konfigurazzjoni</h2>
<img 3>
<h2>Iġġenera ċertifikat SSL b'xejn għall-isem tad-dominju tiegħek</h2>
<p>Li tibgħat posta teħtieġ ċertifikat SSL għall-encryption u l-iffirmar.</p>    ?y5M<r?[Yd?_ţ1B??P????ڥva?   
<p>Mexxi <code>./chasquid/init.sh 123.com</code> se jiġi installat awtomatikament bi klikk waħda (issostitwixxi 123.com bl-isem tad-dominju li jibgħat).</p>    ??Z\????Ƥu?bz??D?a????p'??FM   
<p>acme.sh hija għodda awtomatizzata għall-iffirmar taċ-ċertifikati,</p>    ?\Kmڔ&EY?7?(mx?u???b?L?5??   
<p>It-tiġdid taċ-ċertifikat se jsejjaħ script <code>conf/reload/123.com.sh</code> , editja din l-iskrittura, tista 'żżid kmandi bħal <code>nginx -s reload</code> biex jġedded il-cache taċ-ċertifikat ta' applikazzjonijiet relatati.</p>    ?e???[e??@??uO?????%?2?	zR?   
<p>Fl-aħħarnett, jista 'jiġi ssettjat bħala l-indirizz default tal-mittent (flimkien mal-għażla li tirrispondi bl-istess indirizz).</p>    ?y????n?p?b?;?F\{????k7h? 0????   
<img 2>
<p>Segwi bit <a href="https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/">-tutorja ta' contabo: Żid il-konnettività IPv6 mas-server tiegħek</a></p>    ?9Y'?8}ߢ????-?`?2n??
p?Fa$~?   
<p>Iċċekkja l-Ricevut fl-intestatura tal-email oriġinali, u tista 'tara li l-indirizz tal-mittent huwa IPV6, li jfisser li IPV6 huwa kkonfigurat ukoll b'suċċess.</p>    ??<UY????+?F̽^@;??ku????6xe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp" alt="" /></p>    ?????c??Y???!??P??w(l????5??2???   
<p>Jekk is-server fuq ssh juri <code>Welcome to TinyCore 13!</code> (kif muri fil-figura hawn taħt), dan ifisser li s-sistema għadha ma ġietx installata. Jekk jogħġbok aqla ssh u stenna għal ftit minuti biex terġa' tidħol.</p>    ??ȫ?[k'y^?X??_???J??ݵ?*#T?D?   
<p><strong>Jekk għandek il-kaxxa postali tan-negozju mħallsa tiegħek stess, jekk jogħġbok timmodifikax l-MX u aqbeż dan il-pass.</strong></p>    ??̟??q9JW?ڞG?>??C?
fsHa?j?^   
<p>Imbagħad, daħħal il-kodiċi ta 'verifika li waslet bl-email li ġiet mibgħuta lil.</p>    ?Ό}T)?>E=?c?-??v?its????Pބ??   
<p>Nirrakkomanda li tixtri minn host li għandu dawn il-portijiet miftuħa u jappoġġja t-twaqqif ta 'ismijiet ta' domain reverse.</p>    ?U???!m)f0??uΣG?o7?HVtS?????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp" alt="" /></p>    ???m? e7]Lo???_b??C%??>???X??   
<h2>Backup conf għar-repożitorju git</h2>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp" alt="" /></p>    ???Y??'?Ȏ?)??̶A/;/???;??:`ŗ?   
<p>Huwa rakkomandat li tuża Gmail biex tirċievi emails tat-test biex tivverifika jekk il-konfigurazzjonijiet humiex ta' suċċess.</p>    ?=???G?JzI>ʥ?'???`??P`F?Ӯ??-   
<p>Żid rekord TXT <code>_dmarc</code> ,</p>    ??Я?ߠuOgr??#Y(?\?3?9nֿ?z??   
<p>Meta tidher <code>Welcome to Ubuntu 22.04.1 LTS</code> , l-inizjalizzazzjoni tkun kompluta, u tista 'tkompli bil-passi li ġejjin.</p>    ????*Ao"`?,????Y??U?]SkӶp???1?   
<h2>DNS żid rekord SPF</h2>
<p>SPF (Sender Policy Framework) hija teknoloġija ta' verifika tal-email użata biex tipprevjeni l-frodi tal-email.</p>    ?;2??j?6???C??5=?&|?_x????;?b?,   
<p>SPF għal <code>_spf.user.tax</code></p>    ?O?O??顾??l???s??l?7?6?{?z?~   
<p>imbagħad run</p>    ?Q?,?ir????u???d?wt;0?ZU?,X?M??   
<p>Daħħal id-direttorju tal-konf u ibgħat lill-maħżen</p>    ?,?7??"?Ku?????2&un?Ir??]_?   
<p>Mexxi <code>direnv allow</code> li tinstalla dipendenzi (direnv ġie installat fil-proċess ta 'inizjalizzazzjoni ta' ċavetta waħda preċedenti u ġie miżjud ganċ mal-qoxra)</p>    ?jV?????ǔ????5??=L???c??t?VD   
<p>Per eżempju, l-SPF ta ' <code>user.tax</code> huwa kif ġej</p>    ƃ??0zn1?? ??BA??`>?k-?,\Z?   
<p>Editja <code>/etc/netplan/01-netcfg.yaml</code> , żid ftit linji kif muri fil-figura hawn taħt (il-fajl tal-konfigurazzjoni default Contabo VPS diġà għandu dawn il-linji, sempliċement neħħihom il-kumment).</p>    ?_;?<̉f=Fx?  i???T??.?F?_??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp" alt="" /></p>    ?7?=???????d?bA??????????J+?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp" alt="" /></p>    ?tu????9? 4?????I0]о!???P?q   
<p>Jekk is-server tal-isem tad-dominju tiegħek ma jappoġġjax it-tip SPF, żid biss ir-rekord tat-tip TXT.</p>    ???Uk??vvJfQ???N??W?1?!?
dmP?   
<p>Wara li titlesta l-konfigurazzjoni, tista' tuża indirizzi email oħra biex tibgħat emails lil <code>i@user.tax</code> u <code>any123@user.tax</code> biex tara jekk tistax tirċievi emails fil-Gmail.</p>    ???}??YLrT???ݥ?ܗr??9՜	?   
<p><code>grep chasquid /var/log/syslog</code> jew <code>journalctl -xeu chasquid</code> jistgħu jaraw ir-reġistru tal-iżbalji.</p>    ?@Ә??S?A??u?q&? ?v?,*sgH??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp" alt="" /></p>    ?j?v$?k?C-??Bݦ??R?4??a?????>?   
<p>Żur <a href="https://mail.google.com/mail/u/1/#settings/accounts">https://mail.google.com/mail/u/1/#settings/accounts</a> u kklikkja &quot;Żid indirizz elettroniku ieħor&quot;.</p>    ?]?F?%?Y"?????_P?0????[M??Ke   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp" alt="" /></p>    ڜ? ??~?dЬ?^p"?}?y?43?	????Z   
<p>Jekk le, iċċekkja l-log chasquid ( <code>grep chasquid /var/log/syslog</code> ).</p>    ?0?F?b?????[6D???????s?
??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp" alt="" /></p>    ߮?B?D?J?%???]?^?P??????f??,   
<p>editja <code>/etc/sysctl.conf</code></p>    ??2???Ԟ3E,|??y???V??t??ߔ"9???=   
<p>Mexxi l-kmand li ġej biex tinstalla bi klikk waħda.</p>    ?^????~?%?t?4	?@7?K?j w"??W?'   
<img 6>
<p>Jista 'jżid il-mittent</p>    ???^??PK??s??7<U????;w?Gf?=????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp" alt="" /></p>    ??N>??7]u????v_XI?[?s??k?o_   
<p>Imbagħad ħaddem <code>systemctl restart chasquid</code> biex terġa 'tibda s-servizz.</p>    ?>???u$R???Bu>??T??JO/S(7???   
<p>Sib il-fornitur tad-DNS tiegħek minn <a href="https://github.com/acmesh-official/acme.sh/wiki/dnsapi">acme.sh dnsapi</a> , editja <code>conf/conf.sh</code> .</p>    ??,NN???DR????Dz?s??F??5ظqζT   
<p>Hawn taħt, aħna nuru pass pass kif nibnu s-server tal-posta tagħna stess.</p>    ?ꁶn??w޶?ѭD????C?C)?@??B7??,   
<img 5>
<h2>Żid il-mittent</h2>
<p>run</p>    ??"???gb??㪼+?lJZ?ۃ?]O;??QO?   
<ul>
<li>utent: isem tal-utent SMTP</li>
<li>pass: password SMTP</li>
<li>lil: destinatarju</li>
</ul>
<p>Tista' tibgħat email tat-test.</p>    ???]?D(#?????!v??8ꀂ?>Z?@L%?   
<p>Jivverifika l-identità ta’ mittent tal-posta billi jiċċekkja li l-indirizz IP ta’ min jibgħat jaqbel mar-rekords DNS tal-isem tad-dominju li jiddikjara li hu, u jipprevjeni lill-frodisti milli jibagħtu emails foloz.</p>    ??:???颕?m?ç???n???M蠘Ce   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp" alt="" /></p>    ??^?/f??`???M-}??zú???o($F?p??   
<h2>Editja l-isem tal-host ta' chasquid.conf</h2>
<p>Immodifika <code>conf/chasquid/chasquid.conf</code> għall-valur tal-isem tad-dominju invers.</p>    ????k<?I?m3i??K?O?*Oy?;L??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp" alt="" /></p>    ?[??r.p/܅ ???Q?	??G"2?/?f   
<h3>[Mhux obbligatorju] Inizjalizza l-ambjent tal-iżvilupp</h3>
<p>Dan il-pass huwa fakultattiv.</p>