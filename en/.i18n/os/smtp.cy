|       ?pD?l?8?ws?8(L佌?ev???p????  
<ul>
<li>0: Adrodd canlyniadau dilysu ar gyfer pob neges</li>
<li>1: Dim ond rhoi gwybod am negeseuon sy'n methu â dilysu</li>
<li>d: Dim ond adrodd am fethiannau dilysu enw parth</li>
<li>s: dim ond adrodd am fethiannau dilysu SPF</li>
<li>l: Rhowch wybod am fethiannau dilysu DKIM yn unig</li>
</ul>
<h3>rua&amp; ruf</h3>
<ul>
<li>rua (Adrodd URI ar gyfer adroddiadau Cyfun): Cyfeiriad e-bost ar gyfer derbyn adroddiadau cyfun</li>
<li>ruf (Adrodd URI ar gyfer adroddiadau Fforensig): cyfeiriad e-bost i dderbyn adroddiadau manwl</li>
</ul>
<h2>Ychwanegu cofnodion MX i anfon e-byst ymlaen at Google Mail</h2>
<p>Gan na allwn ddod o hyd i flwch post corfforaethol rhad ac am ddim sy'n cefnogi cyfeiriadau cyffredinol (Gall Catch-All, dderbyn unrhyw e-byst a anfonwyd at yr enw parth hwn, heb gyfyngiadau ar rhagddodiaid), defnyddiais chasquid i anfon pob e-bost ymlaen i fy mlwch post Gmail.</p>    Z?I?`O???J??<?ۜc(?ƀ?0??'?x   
<p>Yn y canlynol, byddaf yn cymryd VPS Contabo fel enghraifft i ddangos sut i adeiladu eich gweinydd post eich hun.</p>    6???ZE?k߀P???T???Ӡ??y?S??   
<h2>Ffurfweddu Llofnod E-bost DKIM</h2>
<p>Defnyddir DKIM i anfon llofnodion e-bost i atal llythyrau rhag cael eu trin fel sbam.</p>    ?f=??9M????,??ƿ?wɨ"&aj?l??S   
<p><code>v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all</code></p>    	z??????	9?#.??Oœ?2J@u.?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp" alt="" /></p>    
 	_??8????*??7Jm?j?7??.X?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp" alt="" /></p>    v??H??v-Hv????W?;?|??Kn-???$   
<p>Creu warws preifat yn gyntaf</p>    ?|=?.??2?^??w?j6??}Y'?Ϩ$?pe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp" alt="" /></p>    B??$??eb??u??`V???e???4?)?   
<p>Sylwch fy mod wedi <code>include:_spf.google.com</code> yma, oherwydd byddaf yn ffurfweddu <code>i@user.tax</code> fel y cyfeiriad anfon ym mlwch post Google yn ddiweddarach.</p>    E?????<??ܶ9??????<lJ?gP??;????   
<p><code>*</code> yn nodi pob e-bost, <code>i</code> yw rhagddodiad cyfeiriad e-bost y defnyddiwr anfon a grëwyd uchod. I anfon post ymlaen, mae angen i bob defnyddiwr ychwanegu llinell.</p>    ???+&?gI??E??:-?TE?R???^?DG?ض??   
<p>Os dewiswch Ewro fel arian cyfred prynu, bydd y pris yn rhatach (mae gweinydd gyda chof 8GB a 4 CPU yn costio tua 529 yuan y flwyddyn, ac mae'r ffi gosod gychwynnol yn rhad ac am ddim am flwyddyn).</p>    ?Z????x?2?+ճGh??RA2?4???C|?   
<h2>Anfonwch e-bost at i@user.tax gyda Google Mail</h2>
<p>Ar ôl i Google Mail dderbyn y post, mae'n naturiol dymuno ateb gyda <code>i@user.tax</code> yn lle i.user.tax@gmail.com.</p>    ?t???NJ?` ???????06@??Uѭ?3??   
<img 0>
<p>Defnyddwyr Tsieineaidd, defnyddiwch y gorchymyn canlynol yn lle hynny, a bydd yr iaith, parth amser, ac ati yn cael eu gosod yn awtomatig.</p>    ???O?P?????v??g?? ??!t?D???lbe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp" alt="" /></p>    $?@?w???N????4?i?{?P????}ms   
<h2>Anfonwch e-bost prawf i wirio a yw'r ffurfweddiad yn llwyddiannus</h2>
<p>Rhowch <code>ops/chasquid</code></p>    ???? ?ۆ??c:[>$??????S??K?ض??}   
<img 4>
<p>Mae'r llwybr ar gyfer y dystysgrif a gynhyrchir yn rhywbeth fel <code>/mnt/www/.acme.sh/123.com_ecc。</code></p>    %|????lG???;ت?{??Ǽ?E7 ??fe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp" alt="" /></p>    &??9? ?????????h???EN???|?̦O   
<h2>Cyfluniad system Ubuntu</h2>
<p>Y system weithredu yma yw Ubuntu 22.04</p>    'u?-?-??:h*????*?2zg???@??U?   
<h3>Gwiriwch fod y cyfrinair wedi'i osod yn gywir</h3>
<img 7>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp" alt="" /></p>    '????_yU?j??????!???????2???   
<p>Mae cymylau cyhoeddus a ddefnyddir yn gyffredin wedi rhwystro'r porthladdoedd hyn yn ddiofyn, ac efallai y bydd yn bosibl eu hagor trwy gyhoeddi gorchymyn gwaith, ond mae'n drafferthus iawn wedi'r cyfan.</p>    (???2?T?G??U?=?c5??????#d??   
<p>Yna ychwanegwch y cofnod MX (rwyf yn pwyntio'n uniongyrchol at gyfeiriad yr enw parth cefn yma, fel y dangosir yn y llinell gyntaf yn y ffigur isod).</p>    )?U9ؾ1?a?'?R0]?*?Jo???v??21~   
<img 1>
<h3>Mae Contabo yn galluogi IPV6</h3>
<p>Galluogi IPV6 fel y gall SMTP hefyd anfon e-byst gyda chyfeiriadau IPV6.</p>    )Q???VmV;u?????ͽ8B?	
L| ?z   
    *&?]p/?<WO?-?I??\??B?x?9#?!b   
<p>Golygu <code>conf/chasquid/domains/user.tax/aliases</code> , gosod blwch post anfon ymlaen</p>    ,'? ?/a??Lޣ?Xf{????0??K? ?5   
<p>Addaswch neu ychwanegwch y llinellau canlynol</p>    2?5ǜO\?=???z-??????d?????*oFP?"   
<p>Mae'r cynnwys fel a ganlyn</p>    2?I*<kucX1Nկ??*?VFr?S?;dJޱx?r   
<p>Ar ôl gosod yr enw parth cefn, cofiwch ffurfweddu cydraniad blaen yr enw parth ipv4 ac ipv6 i'r gweinydd.</p>    5?-??ϸ?'?
W *k2zfF7?lX^?&?GJ???   
<p>Yn y modd hwn, rydym wedi cwblhau sefydlu'r gweinydd post SMTP ac ar yr un pryd yn defnyddio Google Mail i anfon a derbyn negeseuon e-bost.</p>    6%p4??g5?+f???m.?i\?Y?9x??TA ?   
<p>Yna cliciwch ar &quot;Dangos yr E-bost Gwreiddiol&quot;</p>    63?g?:??X???C@?Q????Doe:?<:?H?{m   
<img 8>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp" alt="" /></p>    9ڕ?O/;??9??cƷ??v>?G???cP?-?E   
<p>Mae cyflwr gweithredu arferol fel y dangosir yn y ffigur isod</p>    =E?f?o???I?????????F,??x?>???Q   
<p>Gall gosod enw parth gwrthdro atal e-byst rhag cael eu hadnabod fel sbam.</p>    ?O?-B???-???[,-????Q?a?iT#@o?m0   
<p><code>v=spf1 a:smtp.user.tax ~all</code></p>    A?????T?3|7c?b?ve?B?"_?
??r?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp" alt="" /></p>    F?Ra9/]???I^??@i??????0G??u   
<p>Rydym yn defnyddio <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> i gynhyrchu tystysgrifau.</p>    G|Tۍ?։0?a??????g??$??;??jC?   <h1>Adeiladwch eich gweinydd anfon post SMTP eich hun</h1>
<h2>rhagymadrodd</h2>
<p>Gall SMTP brynu gwasanaethau yn uniongyrchol gan werthwyr cwmwl, megis:</p>    M?XOqh?N_jw?W?y6o?'?E(!:?????l   
<p>Ar ôl i'r gorchymyn redeg yn llwyddiannus, fe'ch anogir i osod y cofnod DKIM (fel y dangosir isod).</p>    Q<qV???dB=6U????v?=??M?w\TMee   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp" alt="" /></p>    U?3i?O??捣~?z????z??x.????]e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp" alt="" /></p>    V	?????+t???^?j??s???}?HY'??   
<p>Pan dderbynnir y post, bydd y gweinydd sy'n derbyn yn perfformio dadansoddiad enw parth gwrthdro ar gyfeiriad IP y gweinydd anfon i gadarnhau a oes gan y gweinydd anfon enw parth gwrthdro dilys.</p>    W0?!?'{?'??[p???7Xr%?l????????iH?   
<h2>Adeiladu gweinydd SMTP gyda chasquid</h2>
<p>Mae <a href="https://github.com/albertito/chasquid">chasquid</a> yn weinydd SMTP ffynhonnell agored sydd wedi'i ysgrifennu yn iaith Go.</p>    W?SJ?۸Ͽ??mA?C}??\̮r?PNo?+v3+   
<p>Mae ystyr pob paramedr fel a ganlyn</p>    X[????
ҋa??e^??[=?e?A]d}~0??o   
<p>Wrth osod archeb, mae'n <code>prefer AMD</code> , a bydd gan y gweinydd gyda CPU AMD berfformiad gwell.</p>    X???߶g=????{?????????d??5/p?   
<p>Ar ôl i'r cyfluniad fod yn llwyddiannus, gallwch ddefnyddio <code>curl 6.ipw.cn</code> i weld cyfeiriad ipv6 eich rhwydwaith allanol.</p>    Yn??B_??W9?9?nJGYV? ?Y=@???Gb??|   
<h2>Cyfluniad DNS DMARC</h2>
<p>DMARC yw'r talfyriad o (Dilysu Neges yn Seiliedig ar Barth, Adrodd a Chydymffurfiaeth).</p>    `Q8Y?7??,L???(X??Ʋ&D	??????   
<p>Yn lle'r rhaglenni gweinydd post hynafol fel Postfix a Sendmail, mae chasquid yn symlach ac yn haws ei ddefnyddio, ac mae hefyd yn haws ar gyfer datblygiad eilaidd.</p>    `?G?4?Xj????}?8?a?????F??ay$?]?G   
<p>Yma, rwy'n argymell <a href="https://contabo.com">Contabo</a> .</p>    a?# Rr?ͥ?c???*??>?As1?>p?)}???1   
<p>Mae strwythur y cyfeiriadur fel a ganlyn:</p>    e}?????e˃?h??_???Y-?
>??َb^UĜ   
<h3>DKIM</h3>
<p>Fel y dangosir yn y ffigur isod, mae tudalen bost wreiddiol Gmail yn dangos DKIM, sy'n golygu bod y ffurfweddiad DKIM yn llwyddiannus.</p>    g?0?Q?-k-B?????j-???㻒???~On?"   
<p>Yna ailgychwyn y gweinydd.</p>    j?Q????mK?????W???&?P?!?8?lhq   
<h2>Gweld statws gwasanaeth a logiau</h2>
<p><code>systemctl status chasquid</code> Gweld statws gwasanaeth.</p>    kr
5?????4[82O?%??,?J	wQe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp" alt="" /></p>    m??O?fFȟ?%?~,b?Sn?37}???1B?{?   
<h2>Dewis gweinydd</h2>
<p>Mae angen IP cyhoeddus ar y gweinydd SMTP hunangynhaliol gyda phorthladdoedd 25, 456, a 587 ar agor.</p>    pE?????,?????@??*M#??h???)?   
<p>Rhowch y cyfluniad warws ops, rhedeg <code>./ssl.sh</code> , a bydd ffolder <code>conf</code> yn cael ei greu yn y cyfeiriadur uchaf.</p>    t?̏s?@7??B? V???v?ݯ?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp" alt="" /></p>    y?	??U,Ճ?&?;ks]?f????-BuW???   
<p>Yna rhedeg <code>./ssl.sh 123.com</code> i gynhyrchu tystysgrifau <code>123.com</code> a <code>*.123.com</code> ar gyfer eich enw parth.</p>    y?o??y?|?uভ?!?O???b?Vʕ_'?z???   
<p>Ar ôl ychwanegu'r defnyddiwr, bydd <code>chasquid/domains/user.tax/users</code> yn cael ei ddiweddaru, cofiwch ei gyflwyno i'r warws.</p>    zEz?k?.'ۆ?qo??CӚx? ??mL!vYe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp" alt="" /></p>    zI?c?H???lbSi̕͡9A?ԣ??????#e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp" alt="" /></p>    |?L?65x????????:80??=%??
P1 ?i   
<p>Er enghraifft, rwy'n gwneud copi wrth gefn o'r ffolder conf i'm proses github fy hun fel a ganlyn</p>    #???Z?!?{)?#*mm??Ӣ?!S?<?????   
<p>Fe'i defnyddir i ddal adlamiadau SPF (efallai oherwydd gwallau ffurfweddu, neu mae rhywun arall yn cymryd arno mai chi i anfon sbam).</p>    ?n??? H+?B68?;"???)?S??¼̝?~   
<p>Mae Contabo yn ddarparwr cynnal wedi'i leoli ym Munich, yr Almaen, a sefydlwyd yn 2003 gyda phrisiau cystadleuol iawn.</p>    ??w??????B?EG????%>??h???MnM?>   
<p>Ychwanegwch gofnod TXT i'ch DNS (fel y dangosir isod).</p>    ?ϱ@W?a?t#?/d????u?D?v??Y??e0/?   
<h3>Amgryptio safonol TLS</h3>
<p>Fel y dangosir yn y ffigur isod, mae'r clo bach hwn, sy'n golygu bod y dystysgrif SSL wedi'i galluogi'n llwyddiannus.</p>    ?>?vH??o?? ?Ap
p???f?e"??ve   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp" alt="" /></p>    ?sO?s?o?NR??Ac?G8??>?6cǈ(w?m   
<p>Gall ychwanegu cofnodion SPF atal negeseuon e-bost rhag cael eu hadnabod fel sbam cymaint â phosibl.</p>    ? >v?Ii?J???[F)??F?f?B0O????  
<ul>
<li>dim: Ni chymerir unrhyw gamau, dim ond y canlyniad dilysu sy'n cael ei fwydo'n ôl i'r anfonwr trwy'r mecanwaith adrodd e-bost.</li>
<li>Cwarantîn: Rhowch y post nad yw wedi pasio'r dilysiad yn y ffolder sbam, ond ni fydd yn gwrthod y post yn uniongyrchol.</li>
<li>gwrthod: Gwrthod yn uniongyrchol e-byst sy'n methu â dilysu.</li>
</ul>
<h3>ar gyfer (Dewisiadau Methiant)</h3>
<p>Yn nodi faint o wybodaeth a ddychwelwyd gan y mecanwaith adrodd. Gellir ei osod i un o'r gwerthoedd canlynol:</p>    ?^?k? A??]t??????W?Ty?Ubsw?R  
<ul>
<li><a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html">Amazon SES SMTP</a></li>
<li><a href="https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods">Ali gwthio e-bost cwmwl</a></li>
</ul>
<p>Gallwch hefyd adeiladu eich gweinydd post eich hun - anfon diderfyn, cost gyffredinol isel.</p>    ?)??~z?uE???R3Q???????e?X?2ϖ*?   
<h3>p (Polisi)</h3>
<p>Yn dangos sut i drin e-byst sy'n methu dilysiad SPF (Fframwaith Polisi Anfonwr) neu DKIM (DomainKeys Identified Mail). Gellir gosod y paramedr p i un o dri gwerth:</p>    ?i??
0?]??P????u???)R??甄A+??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp" alt="" /></p>    ??|?T?#]1g?8D??N???????>?Z??Ǒ?   
<h2>Ffurfweddiad enw parth gwrthdroi</h2>
<p>Yr enw parth cefn yw caniatáu i'r cyfeiriad IP gael ei ddatrys i'r enw parth cyfatebol.</p>    ??,3??.o?".???@-?"?:?j?*??H{?u   
<p>Ewch i <a href="https://my.contabo.com/rdns">https://my.contabo.com/rdns</a> a ffurfweddu fel y dangosir isod</p>    ????8???AіKO?t.?!TN߂A?A??hv?   
<p>Er hwylustod, rhoddais y gosodiad a chyfluniad system meddalwedd ubuntu yn <a href="https://github.com/user-tax-dev/os/tree/main/ubuntu">github.com/user-tax-dev/os/tree/main/ubuntu</a> .</p>    ?ֲ?b?_[??X*:(?9???? Gઠ?0"??   
<p>Os nad oes gan y gweinydd sy'n anfon enw parth gwrthdro neu os nad yw'r enw parth cefn yn cyfateb i gyfeiriad IP y gweinydd anfon, gall y gweinydd sy'n derbyn adnabod yr e-bost fel sbam neu ei wrthod.</p>    ?+J??sun?ž${??o7?t'?=s	^B?I3   
<img 9>
<p>Mae ystyr y paramedrau fel a ganlyn</p>    ?ڨ`?e?-???9aQw?>??z??6?j??T!??   
<p>Bydd y rhediad cyntaf yn gosod <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> yn awtomatig ac yn ychwanegu tasg a drefnwyd ar gyfer adnewyddu awtomatig. gall <code>crontab -l</code> weld bod y fath linell fel a ganlyn.</p>    ???'U?V,?5`s?D%?y??A?W]???|\??   
<h2>Cloniwch y storfa ffurfweddu ops</h2>
<img 3>
<h2>Cynhyrchwch dystysgrif SSL am ddim ar gyfer eich enw parth</h2>
<p>Mae anfon post yn gofyn am dystysgrif SSL ar gyfer amgryptio a llofnodi.</p>    ?y5M<r?[Yd?_ţ1B??P????ڥva?   
<p>Bydd Run <code>./chasquid/init.sh 123.com</code> yn cael ei osod yn awtomatig gydag un clic (yn lle 123.com gyda'ch enw parth anfon).</p>    ??Z\????Ƥu?bz??D?a????p'??FR   
<p>Mae acme.sh yn offeryn llofnodi tystysgrif awtomataidd ffynhonnell agored,</p>    ?\Kmڔ&EY?7?(mx?u???b?L?5??   
<p>Bydd adnewyddu tystysgrif yn galw sgript <code>conf/reload/123.com.sh</code> , golygu'r sgript hon, gallwch ychwanegu gorchmynion fel <code>nginx -s reload</code> i adnewyddu storfa tystysgrif cymwysiadau cysylltiedig.</p>    ?e???[e??@??uO?????%?2?	zRo   
<p>Yn olaf, gellir ei osod fel y cyfeiriad anfonwr diofyn (ynghyd â'r opsiwn i ateb gyda'r un cyfeiriad).</p>    ?y????n?p?b?;?F\{????k7h? 0????   
<img 2>
<p>Dilynwch <a href="https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/">y tiwtorial contabo: Ychwanegu cysylltedd IPv6 i'ch gweinydd</a></p>    ?9Y'?8}ߢ????-?`?2n??
p?Fa$~?   
<p>Gwiriwch y Derbyniwyd ym mhennyn yr e-bost gwreiddiol, a gallwch weld mai'r cyfeiriad anfonwr yw IPV6, sy'n golygu bod IPV6 hefyd wedi'i ffurfweddu'n llwyddiannus.</p>    ??<UY????+?F̽^@;??ku????6xe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp" alt="" /></p>    ?????c??Y???!??P??w(l????5??2???   
<p>Os yw'r gweinydd ar ssh yn dangos <code>Welcome to TinyCore 13!</code> (fel y dangosir yn y ffigur isod), mae'n golygu nad yw'r system wedi'i gosod eto. Datgysylltwch ssh ac arhoswch am ychydig funudau i fewngofnodi eto.</p>    ??ȫ?[k'y^?X??_???J??ݵ?*#T?D|   
<p><strong>Os oes gennych eich blwch post busnes taledig eich hun, peidiwch ag addasu'r MX a hepgor y cam hwn.</strong></p>    ??̟??q9JW?ڞG?>??C?
fsHa?j?M   
<p>Yna, nodwch y cod dilysu a dderbyniwyd gan yr e-bost yr anfonwyd ato.</p>    ?Ό}T)?>E=?c?-??v?its????Pބ?w   
<p>Rwy'n argymell prynu gan westeiwr sydd â'r porthladdoedd hyn ar agor ac sy'n cefnogi sefydlu enwau parth cefn.</p>    ?U???!m)f0??uΣG?o7?HVtS?????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp" alt="" /></p>    ???m? e7]Lo???_b??C%??>???X??   
<h2>conf wrth gefn i ystorfa git</h2>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp" alt="" /></p>    ???Y??'?Ȏ?)??̶A/;/???;??:`ŗh   
<p>Argymhellir defnyddio Gmail i dderbyn e-byst prawf i wirio a yw'r ffurfweddiadau'n llwyddiannus.</p>    ?=???G?JzI>ʥ?'???`??P`F?Ӯ??2   
<p>Ychwanegu cofnod TXT <code>_dmarc</code> ,</p>    ??Я?ߠuOgr??#Y(?\?3?9nֿ?z??   
<p>Pan fydd <code>Welcome to Ubuntu 22.04.1 LTS</code> yn ymddangos, mae'r cychwyniad wedi'i gwblhau, a gallwch barhau â'r camau canlynol.</p>    ????*Ao"`?,????Y??U?]SkӶp???1?   
<h2>DNS ychwanegu cofnod SPF</h2>
<p>Mae SPF ( Fframwaith Polisi Anfonwyr ) yn dechnoleg dilysu e-bost a ddefnyddir i atal twyll e-bost.</p>    ?;2??j?6???C??5=?&|?_x????;?b?/   
<p>SPF ar gyfer <code>_spf.user.tax</code></p>    ?O?O??顾??l???s??l?7?6?{?z?~   
<p>yna rhedeg</p>    ?Q?,?ir????u???d?wt;0?ZU?,X?M?8   
<p>Rhowch y cyfeiriadur conf a'i gyflwyno i'r warws</p>    ?,?7??"?Ku?????2&un?Ir??]_?   
<p>Rhedeg <code>direnv allow</code> gosod dibyniaethau (mae direnv wedi'i osod yn y broses gychwynnol un allwedd flaenorol ac mae bachyn wedi'i ychwanegu at y gragen)</p>    ?jV?????ǔ????5??=L???c??t?VA   
<p>Er enghraifft, mae SPF <code>user.tax</code> fel a ganlyn</p>    ƃ??0zn1?? ??BA??`>?k-?,\Z?   
<p>Golygu <code>/etc/netplan/01-netcfg.yaml</code> , ychwanegwch ychydig o linellau fel y dangosir yn y ffigur isod (mae gan ffeil ffurfweddu rhagosodedig Contabo VPS y llinellau hyn eisoes, dim ond dad-wneud sylwadau arnynt).</p>    ?_;?<̉f=Fx?  i???T??.?F?_??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp" alt="" /></p>    ?7?=???????d?bA??????????J+?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp" alt="" /></p>    ?tu????9? 4?????I0]о!???P?[   
<p>Os nad yw eich gweinydd enw parth yn cefnogi math SPF, ychwanegwch gofnod math TXT.</p>    ???Uk??vvJfQ???N??W?1?!?
dmP?   
<p>Ar ôl i'r cyfluniad gael ei gwblhau, gallwch ddefnyddio cyfeiriadau e-bost eraill i anfon e-byst at <code>i@user.tax</code> ac <code>any123@user.tax</code> i weld a allwch chi dderbyn e-byst yn Gmail.</p>    ???}??YLrT???ݥ?ܗr??9՜	u   
<p>Gall <code>grep chasquid /var/log/syslog</code> neu <code>journalctl -xeu chasquid</code> weld y log gwallau.</p>    ?@Ә??S?A??u?q&? ?v?,*sgH??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp" alt="" /></p>    ?j?v$?k?C-??Bݦ??R?4??a?????>?   
<p>Ewch i <a href="https://mail.google.com/mail/u/1/#settings/accounts">https://mail.google.com/mail/u/1/#settings/accounts</a> a chliciwch &quot;Ychwanegu cyfeiriad e-bost arall&quot;.</p>    ?]?F?%?Y"?????_P?0????[M??Ke   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp" alt="" /></p>    ڜ? ??~?dЬ?^p"?}?y?43?	????V   
<p>Os na, gwiriwch y log chasquid ( <code>grep chasquid /var/log/syslog</code> ).</p>    ?0?F?b?????[6D???????s?
??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp" alt="" /></p>    ߮?B?D?J?%???]?^?P??????f??,   
<p>golygu <code>/etc/sysctl.conf</code></p>    ??2???Ԟ3E,|??y???V??t??ߔ"9???;   
<p>Rhedeg y gorchymyn canlynol i'w osod gydag un clic.</p>    ?^????~?%?t?4	?@7?K?j w"??W?*   
<img 6>
<p>Yn gallu ychwanegu anfonwr</p>    ???^??PK??s??7<U????;w?Gf?=????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp" alt="" /></p>    ??N>??7]u????v_XI?[?s??k?oU   
<p>Yna rhedeg <code>systemctl restart chasquid</code> i ailgychwyn y gwasanaeth.</p>    ?>???u$R???Bu>??T??JO/S(7???   
<p>Dewch o hyd i'ch darparwr DNS o <a href="https://github.com/acmesh-official/acme.sh/wiki/dnsapi">acme.sh dnsapi</a> , golygu <code>conf/conf.sh</code> .</p>    ??,NN???DR????Dz?s??F??5ظqζW   
<p>Isod, rydym yn dangos cam wrth gam sut i adeiladu ein gweinydd post ein hunain.</p>    ?ꁶn??w޶?ѭD????C?C)?@??B7??1   
<img 5>
<h2>Ychwanegu anfonwr</h2>
<p>rhedeg</p>    ??"???gb??㪼+?lJZ?ۃ?]O;??QO?   
<ul>
<li>defnyddiwr: enw defnyddiwr SMTP</li>
<li>pasio: cyfrinair SMTP</li>
<li>i: derbyniwr</li>
</ul>
<p>Gallwch anfon e-bost prawf.</p>    ???]?D(#?????!v??8ꀂ?>Z?@L%?   
<p>Mae'n gwirio hunaniaeth anfonwr post trwy wirio bod cyfeiriad IP yr anfonwr yn cyfateb i gofnodion DNS yr enw parth y mae'n honni ei fod, gan atal twyllwyr rhag anfon e-byst ffug.</p>    ??:???颕?m?ç???n???M蠘Ce   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp" alt="" /></p>    ??^?/f??`???M-}??zú???o($F?p?~   
<h2>Golygu enw gwesteiwr chasquid.conf</h2>
<p>Addasu <code>conf/chasquid/chasquid.conf</code> i werth yr enw parth cefn.</p>    ????k<?I?m3i??K?O?*Oy?;L??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp" alt="" /></p>    ?[??r.p/܅ ???Q?	??G"2?/?T   
<h3>[Dewisol] Cychwyn yr amgylchedd datblygu</h3>
<p>Mae'r cam hwn yn ddewisol.</p>