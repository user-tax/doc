|       ?pD?l?8?ws?8(L佌?ev???p???  
<ul>
<li>0: Dèan aithris air toraidhean dearbhaidh airson a h-uile teachdaireachd</li>
<li>1: Na innis ach teachdaireachdan a dh'fhàillig an dearbhadh</li>
<li>d: Na dèan ach aithris air fàilligidhean dearbhaidh ainm fearainn</li>
<li>s: thoir cunntas air fàilligidhean dearbhaidh SPF a-mhàin</li>
<li>l: Na dèan ach aithris air fàilligidhean dearbhaidh DKIM</li>
</ul>
<h3>rua &amp; ruf</h3>
<ul>
<li>rua (Ag aithris URI airson aithisgean Iomlan): Seòladh post-d airson aithisgean iomlan fhaighinn</li>
<li>ruf (Ag aithris URI airson aithisgean Foireansach): seòladh puist-d gus aithisgean mionaideach fhaighinn</li>
</ul>
<h2>Cuir clàran MX ris gus puist-d a chuir air adhart gu Google Mail</h2>
<p>Leis nach b’ urrainn dhomh bogsa-puist corporra an-asgaidh a lorg a bheir taic do sheòlaidhean uile-choitcheann (Catch-All, gheibh mi puist-d sam bith a chaidh a chuir chun ainm fearainn seo, gun chuingealachaidhean air ro-leasachain), chleachd mi chasquid airson a h-uile post-d a chuir air adhart chun bhogsa puist Gmail agam.</p>    Z?I?`O???J??<?ۜc(?ƀ?0??'?~   
<p>Anns na leanas, bheir mi VPS Contabo mar eisimpleir gus sealltainn mar a thogas tu am frithealaiche puist agad fhèin.</p>    6???ZE?k߀P???T???Ӡ??y?S??   
<h2>Dèan rèiteachadh air ainm-sgrìobhte post-d DKIM</h2>
<p>Tha DKIM air a chleachdadh gus ainmean post-d a chuir gus casg a chuir air litrichean bho bhith air an làimhseachadh mar spama.</p>    ?f=??9M????,??ƿ?wɨ"&aj?l??S   
<p><code>v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all</code></p>    	z??????	9?#.??Oœ?2J@u.?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp" alt="" /></p>    
 	_??8????*??7Jm?j?7??.X?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp" alt="" /></p>    v??H??v-Hv????W?;?|??Kn-???:   
<p>Cruthaich taigh-bathair prìobhaideach an toiseach</p>    ?|=?.??2?^??w?j6??}Y'?Ϩ$?pe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp" alt="" /></p>    B??$??eb??u??`V???e???4?)?   
<p>Thoir an aire gu bheil mi air a bhith <code>include:_spf.google.com</code> an seo, oir rèitichidh mi <code>i@user.tax</code> mar an seòladh cur ann am bogsa puist Google nas fhaide air adhart.</p>    E?????<??ܶ9??????<lJ?gP??;????   
<p><code>*</code> a’ comharrachadh a h-uile post-d, is <code>i</code> ro-leasachan seòladh puist-d an neach-cleachdaidh a chaidh a chruthachadh gu h-àrd. Gus post a chuir air adhart, feumaidh gach neach-cleachdaidh loidhne a chuir ris.</p>    ???+&?gI??E??:-?TE?R???^?DG?ض??   
<p>Ma roghnaicheas tu Euro mar airgead ceannach, bidh a’ phrìs nas saoire (bidh frithealaiche le cuimhne 8GB agus 4 CPUs a’ cosg timcheall air 529 yuan gach bliadhna, agus tha a’ chiad chìs stàlaidh an-asgaidh airson aon bhliadhna).</p>    ?Z????x?2?+ճGh??RA2?4???C|?   
<h2>Cuir post-d gu i@user.tax le Google Mail</h2>
<p>Às deidh do Google Mail am post fhaighinn, tha e nàdarra a bhith ag iarraidh freagairt le <code>i@user.tax</code> an àite i.user.tax@gmail.com.</p>    ?t???NJ?` ???????06@??Uѭ?3??   
<img 0>
<p>Luchd-cleachdaidh Sìneach, feuch an cleachd thu an àithne a leanas na àite, agus thèid an cànan, sòn ùine, msaa a shuidheachadh gu fèin-ghluasadach.</p>    ???O?P?????v??g?? ??!t?D???lbe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp" alt="" /></p>    $?@?w???N????4?i?{?P????}m?   
<h2>Cuir post-d deuchainn gus dèanamh cinnteach a bheil an rèiteachadh soirbheachail</h2>
<p>Cuir a-steach <code>ops/chasquid</code></p>    ???? ?ۆ??c:[>$??????S??K?ض???   
<img 4>
<p>Tha an t-slighe airson an teisteanais a chaidh a chruthachadh rudeigin mar <code>/mnt/www/.acme.sh/123.com_ecc。</code></p>    %|????lG???;ت?{??Ǽ?E7 ??fe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp" alt="" /></p>    &??9? ?????????h???EN???|?̦[   
<h2>Suidheachadh siostam Ubuntu</h2>
<p>Is e an siostam obrachaidh an seo Ubuntu 22.04</p>    'u?-?-??:h*????*?2zg???@??U?   
<h3>Dèan cinnteach gu bheil am facal-faire air a shuidheachadh ceart</h3>
<img 7>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp" alt="" /></p>    '????_yU?j??????!???????2???   
<p>Tha sgòthan poblach a chleachdar gu cumanta air na puirt sin a bhacadh gu bunaiteach, agus dh’ fhaodadh gum bi e comasach am fosgladh le bhith a’ toirt seachad òrdugh obrach, ach tha e gu math trioblaideach às deidh a h-uile càil.</p>    (???2?T?G??U?=?c5??????#d??   
<p>An uairsin cuir ris a ’chlàr MX (bidh mi a’ comharrachadh gu dìreach seòladh an ainm fearainn cùil an seo, mar a chithear sa chiad loidhne san fhigear gu h-ìosal).</p>    )?U9ؾ1?a?'?R0]?*?Jo???v??21?   
<img 1>
<h3>Tha Contabo a’ comasachadh IPV6</h3>
<p>Dèan comas air IPV6 gus an urrainn do SMTP cuideachd puist-d a chuir le seòlaidhean IPV6.</p>    )Q???VmV;u?????ͽ8B?	
L| ?z   
    *&?]p/?<WO?-?I??\??B?x?9#?!e   
<p>Deasaich <code>conf/chasquid/domains/user.tax/aliases</code> , cuir am bogsa puist air adhart</p>    ,'? ?/a??Lޣ?Xf{????0??K? ?7   
<p>Atharraich no cuir ris na loidhnichean a leanas</p>    2?5ǜO\?=???z-??????d?????*oFP?$   
<p>Tha an susbaint mar a leanas</p>    2?I*<kucX1Nկ??*?VFr?S?;dJޱx??   
<p>Às deidh dhut an t-ainm àrainn cùil a shuidheachadh, cuimhnich gun cuir thu rèiteachadh air adhart an t-ainm àrainn ipv4 agus ipv6 chun t-seirbheisiche.</p>    5?-??ϸ?'?
W *k2zfF7?lX^?&?GJ???   
<p>San dòigh seo, tha sinn air crìoch a chuir air stèidheachadh frithealaiche puist SMTP agus aig an aon àm cleachdaidh sinn Google Mail gus puist-d a chuir agus fhaighinn.</p>    6%p4??g5?+f???m.?i\?Y?9x??TA =   
<p>An uairsin cliog air &quot;Seall Post-d tùsail&quot;</p>    63?g?:??X???C@?Q????Doe:?<:?H?{m   
<img 8>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp" alt="" /></p>    9ڕ?O/;??9??cƷ??v>?G???cP?-?R   
<p>Tha staid an obrachaidh àbhaisteach mar a chithear san dealbh gu h-ìosal</p>    =E?f?o???I?????????F,??x?>????   
<p>Le bhith a’ suidheachadh ainm fearainn cùil faodaidh sin casg a chuir air puist-d bho bhith air an comharrachadh mar spama.</p>    ?O?-B???-???[,-????Q?a?iT#@o?m0   
<p><code>v=spf1 a:smtp.user.tax ~all</code></p>    A?????T?3|7c?b?ve?B?"_?
??r?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp" alt="" /></p>    F?Ra9/]???I^??@i??????0G??   
<p>Bidh sinn a’ cleachdadh <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> gus teisteanasan a ghineadh.</p>    G|Tۍ?։0?a??????g??$??;??jC?   <h1>Tog am frithealaiche puist SMTP agad fhèin</h1>
<h2>roimh-ràdh</h2>
<p>Faodaidh SMTP seirbheisean a cheannach gu dìreach bho luchd-reic sgòthan, leithid:</p>    M?XOqh?N_jw?W?y6o?'?E(!:??????   
<p>Às deidh don àithne ruith gu soirbheachail, thèid iarraidh ort an clàr DKIM a shuidheachadh (mar a chithear gu h-ìosal).</p>    Q<qV???dB=6U????v?=??M?w\TMee   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp" alt="" /></p>    U?3i?O??捣~?z????z??x.????]e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp" alt="" /></p>    V	?????+t???^?j??s???}?HY'??   
<p>Nuair a gheibhear am post, nì am frithealaiche a tha a’ faighinn mion-sgrùdadh ainm fearainn air ais air seòladh IP an fhrithealaiche cur gus dearbhadh a bheil ainm fearainn cùil dligheach aig an t-seirbheisiche a tha a’ cur.</p>    W0?!?'{?'??[p???7Xr%?l????????iH?   
<h2>Tog frithealaiche SMTP le chasquid</h2>
<p>tha <a href="https://github.com/albertito/chasquid">chasquid</a> na fhrithealaiche SMTP stòr fosgailte sgrìobhte ann an cànan Go.</p>    W?SJ?۸Ͽ??mA?C}??\̮r?PNo?+v3/   
<p>Tha brìgh gach paramadair mar a leanas</p>    X[????
ҋa??e^??[=?e?A]d}~0???   
<p>Nuair a chuireas tu òrdugh, <code>prefer AMD</code> , agus bidh coileanadh nas fheàrr aig an fhrithealaiche le AMD CPU.</p>    X???߶g=????{?????????d??5/p?   
<p>Às deidh don rèiteachadh a bhith soirbheachail, faodaidh tu <code>curl 6.ipw.cn</code> a chleachdadh gus seòladh ipv6 den lìonra a-muigh agad fhaicinn.</p>    Yn??B_??W9?9?nJGYV? ?Y=@???Gb???   
<h2>rèiteachadh DNS DMARC</h2>
<p>Is e DMARC an giorrachadh de (Dearbhadh Teachdaireachd stèidhichte air Fearann, Aithris &amp; Co-chòrdadh).</p>    `Q8Y?7??,L???(X??Ʋ&D	??????   
<p>Mar neach-ionaid airson seann phrògraman frithealaiche puist leithid Postfix agus Sendmail, tha chasquid nas sìmplidh agus nas fhasa a chleachdadh, agus tha e cuideachd nas fhasa airson leasachadh àrd-sgoile.</p>    `?G?4?Xj????}?8?a?????F??ay$?]?N   
<p>An seo, tha mi a’ moladh <a href="https://contabo.com">Contabo</a> .</p>    a?# Rr?ͥ?c???*??>?As1?>p?)}???.   
<p>Tha structar an eòlaire mar a leanas:</p>    e}?????e˃?h??_???Y-?
>??َb^UĹ   
<h3>DKIM</h3>
<p>Mar a chithear san fhigear gu h-ìosal, tha duilleag puist tùsail Gmail a’ taisbeanadh DKIM, a tha a’ ciallachadh gu bheil an rèiteachadh DKIM soirbheachail.</p>    g?0?Q?-k-B?????j-???㻒???~On?2   
<p>An uairsin ath-thòisich am frithealaiche.</p>    j?Q????mK?????W???&?P?!?8?lh~   
<h2>Thoir sùil air inbhe seirbheis &amp; logaichean</h2>
<p><code>systemctl status chasquid</code> Faic inbhe seirbheis.</p>    kr
5?????4[82O?%??,?J	wQe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp" alt="" /></p>    m??O?fFȟ?%?~,b?Sn?37}???1B?{?   
<h2>Taghadh frithealaiche</h2>
<p>Feumaidh am frithealaiche SMTP fèin-aoigheachd IP poblach le puirt 25, 456, agus 587 fosgailte.</p>    pE?????,?????@??*M#??h???)?   
<p>Cuir a-steach na roghainnean taigh-bathair rèiteachaidh, ruith <code>./ssl.sh</code> , agus thèid pasgan <code>conf</code> a chruthachadh anns an eòlaire àrd.</p>    t?̏s?@7??B? V???v?ݯ?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp" alt="" /></p>    y?	??U,Ճ?&?;ks]?f????-BuW???   
<p>An uairsin ruith <code>./ssl.sh 123.com</code> gus teisteanasan <code>123.com</code> agus <code>*.123.com</code> a ghineadh airson an ainm fearainn agad.</p>    y?o??y?|?uভ?!?O???b?Vʕ_'?z???   
<p>Às deidh dhut an cleachdaiche a chuir ris, thèid <code>chasquid/domains/user.tax/users</code> ùrachadh, cuimhnich gun cuir thu a-steach e chun taigh-bathair.</p>    zEz?k?.'ۆ?qo??CӚx? ??mL!vYe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp" alt="" /></p>    zI?c?H???lbSi̕͡9A?ԣ??????#e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp" alt="" /></p>    |?L?65x????????:80??=%??
P1 ?o   
<p>Mar eisimpleir, bidh mi a’ cumail suas am pasgan conf chun phròiseas github agam fhèin mar a leanas</p>    #???Z?!?{)?#*mm??Ӣ?!S?<?????   
<p>Tha e air a chleachdadh gus breaban SPF a ghlacadh (is dòcha air adhbhrachadh le mearachdan rèiteachaidh, no gu bheil cuideigin eile a’ leigeil a-mach gur e thusa spam a chuir).</p>    ?n??? H+?B68?;"???)?S??¼̝ϡ   
<p>Tha Contabo na sholaraiche aoigheachd stèidhichte ann am Munich, a’ Ghearmailt, a chaidh a stèidheachadh ann an 2003 le prìsean gu math farpaiseach.</p>    ??w??????B?EG????%>??h???MnM?M   
<p>Dìreach cuir clàr TXT ris an DNS agad (mar a chithear gu h-ìosal).</p>    ?ϱ@W?a?t#?/d????u?D?v??Y??e0/?   
<h3>crioptachadh àbhaisteach TLS</h3>
<p>Mar a chithear san fhigear gu h-ìosal, tha a’ ghlas bheag seo ann, a tha a’ ciallachadh gun deach an teisteanas SSL a chomasachadh gu soirbheachail.</p>    ?>?vH??o?? ?Ap
p???f?e"??ve   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp" alt="" /></p>    ?sO?s?o?NR??Ac?G8??>?6cǈ(w??   
<p>Le bhith a’ cur clàran SPF a-steach faodaidh sin casg a chuir air puist-d bho bhith air an comharrachadh mar spama cho mòr ‘s as urrainn.</p>    ? >v?Ii?J???[F)??F?f?B0O???=  
<ul>
<li>gin: Chan eil gnìomh sam bith air a dhèanamh, chan eil ach an toradh dearbhaidh air a thoirt air ais don neach a chuir e tron ​​​​inneal aithris post-d.</li>
<li>Cuarantine: Cuir am post nach deach seachad air an dearbhadh a-steach don phasgan spama, ach nach diùlt am post gu dìreach.</li>
<li>diùlt: Diùlt gu dìreach puist-d a dh'fhàillig dearbhadh.</li>
</ul>
<h3>fo (Roghainnean fàilligeadh)</h3>
<p>A’ sònrachadh na tha de dh’fhiosrachadh air a thilleadh leis an inneal aithris. Faodar a shuidheachadh gu aon de na luachan a leanas:</p>    ?^?k? A??]t??????W?Ty?Ubsw?m  
<ul>
<li><a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html">Amazon SES SMTP</a></li>
<li><a href="https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods">Puing post-d Ali Cloud</a></li>
</ul>
<p>Faodaidh tu cuideachd am frithealaiche puist agad fhèin a thogail - cur air falbh gun chrìoch, cosgais iomlan ìosal.</p>    ?)??~z?uE???R3Q???????e?X?2ϖ*?   
<h3>p (Poileasaidh)</h3>
<p>A’ nochdadh mar a làimhsicheas tu puist-d a dh’ fhàilnicheas dearbhadh SPF (Sender Policy Framework) no DKIM (DomainKeys Aithnichte Mail). Faodar am paramadair p a shuidheachadh gu aon de thrì luachan:</p>    ?i??
0?]??P????u???)R??甄A+??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp" alt="" /></p>    ??|?T?#]1g?8D??N???????>?Z??Ǒ?   
<h2>Cuir air ais rèiteachadh ainm fearainn</h2>
<p>Tha an t-ainm àrainn cùil gus leigeil leis an t-seòladh IP a bhith air a rèiteachadh chun an ainm àrainn co-fhreagarrach.</p>    ??,3??.o?".???@-?"?:?j?*??H{??   
<p>Tadhail air <a href="https://my.contabo.com/rdns">https://my.contabo.com/rdns</a> agus rèiteachadh mar a chithear gu h-ìosal</p>    ????8???AіKO?t.?!TN߂A?A??hv?   
<p>Airson goireasachd, chuir mi stàladh agus rèiteachadh siostam bathar-bog ubuntu ann an <a href="https://github.com/user-tax-dev/os/tree/main/ubuntu">github.com/user-tax-dev/os/tree/main/ubuntu</a> .</p>    ?ֲ?b?_[??X*:(?9???? Gઠ?0"?  
<p>Mura h-eil ainm àrainn cùil aig an t-seirbheisiche a tha a’ cur a-steach no mura h-eil an t-ainm fearainn cùil a’ freagairt ri seòladh IP an fhrithealaiche cur, faodaidh am frithealaiche a gheibh am post-d aithneachadh mar spama no a dhiùltadh.</p>    ?+J??sun?ž${??o7?t'?=s	^B?I9   
<img 9>
<p>Tha brìgh nam paramadairean mar a leanas</p>    ?ڨ`?e?-???9aQw?>??z??6?j??T!?  
<p>Cuiridh a’ chiad ruith <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> an sàs gu fèin-obrachail agus cuiridh e gnìomh clàraichte airson ùrachadh fèin-ghluasadach. chì <code>crontab -l</code> gu bheil leithid de loidhne ann mar a leanas.</p>    ???'U?V,?5`s?D%?y??A?W]???|\??   
<h2>Dèan clon air na h-ops stòr rèiteachaidh</h2>
<img 3>
<h2>Cruthaich teisteanas SSL an-asgaidh airson an ainm fearainn agad</h2>
<p>Gus post a chuir a-steach feumaidh teisteanas SSL airson crioptachadh agus soidhnigeadh.</p>    ?y5M<r?[Yd?_ţ1B??P????ڥva?   
<p>Thèid Run <code>./chasquid/init.sh 123.com</code> a chuir a-steach gu fèin-ghluasadach le aon bhriogadh (cuir an t-ainm fearainn agad an àite 123.com).</p>    ??Z\????Ƥu?bz??D?a????p'??FX   
<p>Tha acme.sh na inneal soidhnidh teisteanais fèin-ghluasadach le còd fosgailte,</p>    ?\Kmڔ&EY?7?(mx?u???b?L?5?   
<p>Gairmidh ath-nuadhachadh teisteanais sgriobt <code>conf/reload/123.com.sh</code> , deasaich an sgriobt seo, faodaidh tu òrdughan leithid <code>nginx -s reload</code> a chuir ris gus an tasgadan teisteanais de thagraidhean co-cheangailte ùrachadh.</p>    ?e???[e??@??uO?????%?2?	zR?   
<p>Mu dheireadh, faodar a shuidheachadh mar an seòladh teachdaiche bunaiteach (còmhla ris an roghainn freagairt leis an aon sheòladh).</p>    ?y????n?p?b?;?F\{????k7h? 0????   
<img 2>
<p>Lean air adhart leis <a href="https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/">an oideachadh contabo: A’ cur ceangal IPv6 ris an t-seirbheisiche agad</a></p>    ?9Y'?8}ߢ????-?`?2n??
p?Fa$~?   
<p>Thoir sùil air an Fhuaras ann an ceann a’ phuist-d thùsail, agus chì thu gur e IPV6 an seòladh neach-cuiridh, a tha a’ ciallachadh gu bheil IPV6 cuideachd air a rèiteachadh gu soirbheachail.</p>    ??<UY????+?F̽^@;??ku????6xe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp" alt="" /></p>    ?????c??Y???!??P??w(l????5??2??!  
<p>Ma sheallas am frithealaiche air ssh <code>Welcome to TinyCore 13!</code> (mar a chithear san fhigear gu h-ìosal), tha e a’ ciallachadh nach deach an siostam a chuir a-steach fhathast. Feuch an dì-cheangail thu ssh agus fuirich beagan mhionaidean gus logadh a-steach a-rithist.</p>    ??ȫ?[k'y^?X??_???J??ݵ?*#T?D?   
<p><strong>Ma tha am bogsa puist gnìomhachais pàighte agad fhèin, feuch nach atharraich thu am MX agus leum air a’ cheum seo.</strong></p>    ??̟??q9JW?ڞG?>??C?
fsHa?j?w   
<p>An uairsin, cuir a-steach an còd dearbhaidh a fhuaireadh tron ​​​​phost-d a chaidh a chuir air adhart.</p>    ?Ό}T)?>E=?c?-??v?its????Pބ??   
<p>Tha mi a 'moladh ceannach bho òstair aig a bheil na puirt sin fosgailte agus a' toirt taic do bhith a 'stèidheachadh ainmean fearainn air ais.</p>    ?U???!m)f0??uΣG?o7?HVtS?????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp" alt="" /></p>    ???m? e7]Lo???_b??C%??>???X??   
<h2>Cùl-taic conf gu stòr git</h2>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp" alt="" /></p>    ???Y??'?Ȏ?)??̶A/;/???;??:`ŗ?   
<p>Thathas a’ moladh Gmail a chleachdadh gus puist-d deuchainn fhaighinn gus dèanamh cinnteach a bheil na rèiteachaidhean soirbheachail.</p>    ?=???G?JzI>ʥ?'???`??P`F?Ӯ??,   
<p>Cuir clàr TXT <code>_dmarc</code> ,</p>    ??Я?ߠuOgr??#Y(?\?3?9nֿ?z??   
<p>Nuair a nochdas <code>Welcome to Ubuntu 22.04.1 LTS</code> , tha an tòiseachadh deiseil, agus faodaidh tu leantainn air adhart leis na ceumannan a leanas.</p>    ????*Ao"`?,????Y??U?]SkӶp???1?   
<h2>DNS cuir clàr SPF ris</h2>
<p>Tha SPF (Frèam Poileasaidh Luchd-cuiridh) na theicneòlas dearbhaidh post-d air a chleachdadh gus casg a chuir air foill post-d.</p>    ?;2??j?6???C??5=?&|?_x????;?b?-   
<p>SPF airson <code>_spf.user.tax</code></p>    ?O?O??顾??l???s??l?7?6?{?z?~   
<p>ruith an uairsin</p>    ?Q?,?ir????u???d?wt;0?ZU?,X?M?K   
<p>Cuir a-steach an eòlaire conf agus cuir a-steach don taigh-bathair</p>    ?,?7??"?Ku?????2&un?Ir??]_?   
<p>Ruith <code>direnv allow</code> eisimeileachd a chuir a-steach (chaidh direnv a chuir a-steach sa phròiseas tòiseachaidh aon-iuchrach roimhe agus chaidh dubhan a chuir ris an t-slige)</p>    ?jV?????ǔ????5??=L???c??t?VH   
<p>Mar eisimpleir, tha an SPF de <code>user.tax</code> mar a leanas</p>    ƃ??0zn1?? ??BA??`>?k-?,\Z?   
<p>Deasaich <code>/etc/netplan/01-netcfg.yaml</code> , cuir beagan loidhnichean ris mar a chithear san fhigear gu h-ìosal (tha na loidhnichean sin aig faidhle rèiteachaidh bunaiteach Contabo VPS mu thràth, dìreach cuir às dhaibh).</p>    ?_;?<̉f=Fx?  i???T??.?F?_??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp" alt="" /></p>    ?7?=???????d?bA??????????J+?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp" alt="" /></p>    ?tu????9? 4?????I0]о!???P?|   
<p>Mura h-eil am frithealaiche ainm fearainn agad a’ toirt taic do sheòrsa SPF, dìreach cuir clàr seòrsa TXT ris.</p>    ???Uk??vvJfQ???N??W?1?!?
dmP?   
<p>Às deidh an rèiteachadh a bhith deiseil, faodaidh tu seòlaidhean puist-d eile a chleachdadh gus puist-d a chuir gu <code>i@user.tax</code> agus <code>any123@user.tax</code> gus faicinn an urrainn dhut puist-d fhaighinn ann an Gmail.</p>    ???}??YLrT???ݥ?ܗr??9՜	v   
<p><code>grep chasquid /var/log/syslog</code> no <code>journalctl -xeu chasquid</code> an loga mearachd fhaicinn.</p>    ?@Ә??S?A??u?q&? ?v?,*sgH??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp" alt="" /></p>    ?j?v$?k?C-??Bݦ??R?4??a?????>?   
<p>Tadhail air <a href="https://mail.google.com/mail/u/1/#settings/accounts">https://mail.google.com/mail/u/1/#settings/accounts</a> agus briog air &quot;Cuir seòladh puist-d eile ris&quot;.</p>    ?]?F?%?Y"?????_P?0????[M??Ke   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp" alt="" /></p>    ڜ? ??~?dЬ?^p"?}?y?43?	????`   
<p>Mura h-eil, thoir sùil air log chasquid ( <code>grep chasquid /var/log/syslog</code> ).</p>    ?0?F?b?????[6D???????s?
??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp" alt="" /></p>    ߮?B?D?J?%???]?^?P??????f??.   
<p>deasaich <code>/etc/sysctl.conf</code></p>    ??2???Ԟ3E,|??y???V??t??ߔ"9???E   
<p>Ruith an àithne a leanas airson a stàladh le aon bhriogadh.</p>    ?^????~?%?t?4	?@7?K?j w"??W?+   
<img 6>
<p>Faodar an neach a chuir ris</p>    ???^??PK??s??7<U????;w?Gf?=????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp" alt="" /></p>    ??N>??7]u????v_XI?[?s??k?of   
<p>An uairsin ruith <code>systemctl restart chasquid</code> gus an t-seirbheis ath-thòiseachadh.</p>    ?>???u$R???Bu>??T??JO/S(7???   
<p>Lorg an solaraiche DNS agad bho <a href="https://github.com/acmesh-official/acme.sh/wiki/dnsapi">acme.sh dnsapi</a> , deasaich <code>conf/conf.sh</code> .</p>    ??,NN???DR????Dz?s??F??5ظqζu   
<p>Gu h-ìosal, bidh sinn a’ sealltainn ceum air cheum mar a thogas sinn am frithealaiche puist againn fhèin.</p>    ?ꁶn??w޶?ѭD????C?C)?@??B7??6   
<img 5>
<h2>Cuir ris an t-seoladair</h2>
<p>ruith</p>    ??"???gb??㪼+?lJZ?ۃ?]O;??QO?   
<ul>
<li>cleachdaiche: ainm-cleachdaidh SMTP</li>
<li>pas: facal-faire SMTP</li>
<li>gu: neach-faighinn</li>
</ul>
<p>Faodaidh tu post-d deuchainn a chuir.</p>    ???]?D(#?????!v??8ꀂ?>Z?@L%  
<p>Bidh e a’ dearbhadh dearbh-aithne neach a chuir post le bhith a’ dèanamh cinnteach gu bheil seòladh IP an neach a chuir e a’ freagairt ri clàran DNS an ainm fearainn a tha e ag ràdh a tha, a’ cur casg air luchd-foill bho bhith a’ cur puist-d meallta.</p>    ??:???颕?m?ç???n???M蠘Ce   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp" alt="" /></p>    ??^?/f??`???M-}??zú???o($F?p??   
<h2>Deasaich ainm òstair chasquid.conf</h2>
<p>Atharraich <code>conf/chasquid/chasquid.conf</code> gu luach an ainm àrainn cùil.</p>    ????k<?I?m3i??K?O?*Oy?;L??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp" alt="" /></p>    ?[??r.p/܅ ???Q?	??G"2?/?`   
<h3>[Roghainneil] Tòisich an àrainneachd leasachaidh</h3>
<p>Tha an ceum seo roghainneil.</p>