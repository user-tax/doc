|       ?pD?l?8?ws?8(L佌?ev???p???.
  
<ul>
<li>0: എല്ലാ സന്ദേശങ്ങൾക്കും മൂല്യനിർണ്ണയ ഫലങ്ങൾ റിപ്പോർട്ട് ചെയ്യുക</li>
<li>1: സ്ഥിരീകരണം പരാജയപ്പെടുന്ന സന്ദേശങ്ങൾ മാത്രം റിപ്പോർട്ട് ചെയ്യുക</li>
<li>d: ഡൊമെയ്ൻ നാമം സ്ഥിരീകരണ പരാജയങ്ങൾ മാത്രം റിപ്പോർട്ട് ചെയ്യുക</li>
<li>s: SPF പരിശോധന പരാജയങ്ങൾ മാത്രം റിപ്പോർട്ട് ചെയ്യുക</li>
<li>l: DKIM പരിശോധന പരാജയങ്ങൾ മാത്രം റിപ്പോർട്ട് ചെയ്യുക</li>
</ul>
<h3>റുവാ &amp; റൂഫ്</h3>
<ul>
<li>rua (അഗ്രഗേറ്റ് റിപ്പോർട്ടുകൾക്കായുള്ള URI റിപ്പോർട്ടുചെയ്യുന്നു): സമാഹരിച്ച റിപ്പോർട്ടുകൾ സ്വീകരിക്കുന്നതിനുള്ള ഇമെയിൽ വിലാസം</li>
<li>ruf (ഫോറൻസിക് റിപ്പോർട്ടുകൾക്കായുള്ള URI റിപ്പോർട്ടുചെയ്യൽ): വിശദമായ റിപ്പോർട്ടുകൾ ലഭിക്കുന്നതിനുള്ള ഇമെയിൽ വിലാസം</li>
</ul>
<h2>Google മെയിലിലേക്ക് ഇമെയിലുകൾ കൈമാറാൻ MX റെക്കോർഡുകൾ ചേർക്കുക</h2>
<p>സാർവത്രിക വിലാസങ്ങളെ പിന്തുണയ്‌ക്കുന്ന ഒരു സൗജന്യ കോർപ്പറേറ്റ് മെയിൽബോക്‌സ് എനിക്ക് കണ്ടെത്താൻ കഴിയാത്തതിനാൽ (പ്രിഫിക്‌സുകളിൽ നിയന്ത്രണങ്ങളില്ലാതെ ഈ ഡൊമെയ്‌ൻ നാമത്തിലേക്ക് അയച്ച എല്ലാ ഇമെയിലുകളും ക്യാച്ച്-എല്ലാവർക്കും ലഭിക്കും), എല്ലാ ഇമെയിലുകളും എന്റെ Gmail മെയിൽബോക്‌സിലേക്ക് കൈമാറാൻ ഞാൻ ചാസ്‌ക്വിഡ് ഉപയോഗിച്ചു.</p>    Z?I?`O???J??<?ۜc(?ƀ?0??'?d  
<p>ഇനിപ്പറയുന്നതിൽ, നിങ്ങളുടെ സ്വന്തം മെയിൽ സെർവർ എങ്ങനെ നിർമ്മിക്കാമെന്ന് കാണിക്കുന്നതിന് ഞാൻ Contabo- യുടെ VPS ഒരു ഉദാഹരണമായി എടുക്കും.</p>    6???ZE?k߀P???T???Ӡ??y?S?B  
<h2>ഇമെയിൽ ഒപ്പ് DKIM കോൺഫിഗർ ചെയ്യുക</h2>
<p>കത്തുകൾ സ്പാം ആയി കണക്കാക്കുന്നത് തടയാൻ ഇമെയിൽ ഒപ്പുകൾ അയക്കാൻ DKIM ഉപയോഗിക്കുന്നു.</p>    ?f=??9M????,??ƿ?wɨ"&aj?l??S   
<p><code>v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all</code></p>    	z??????	9?#.??Oœ?2J@u.?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp" alt="" /></p>    
 	_??8????*??7Jm?j?7??.X?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp" alt="" /></p>    v??H??v-Hv????W?;?|??Kn-???r   
<p>ആദ്യം ഒരു സ്വകാര്യ വെയർഹൗസ് ഉണ്ടാക്കുക</p>    ?|=?.??2?^??w?j6??}Y'?Ϩ$?pe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp" alt="" /></p>    B??$??eb??u??`V???e???4?)*  
<p>ഞാൻ ഇവിടെ <code>include:_spf.google.com</code> , കാരണം ഞാൻ പിന്നീട് Google മെയിൽബോക്സിൽ അയയ്ക്കുന്ന വിലാസമായി <code>i@user.tax</code> കോൺഫിഗർ ചെയ്യും.</p>    E?????<??ܶ9??????<lJ?gP??;???%  
<p><code>*</code> എല്ലാ ഇമെയിലുകളെയും സൂചിപ്പിക്കുന്നു, മുകളിൽ സൃഷ്‌ടിച്ച അയയ്‌ക്കുന്ന ഉപയോക്താവിന്റെ ഇമെയിൽ വിലാസ പ്രിഫിക്‌സാണ് <code>i</code> . മെയിൽ ഫോർവേഡ് ചെയ്യുന്നതിന്, ഓരോ ഉപയോക്താവിനും ഒരു ലൈൻ ചേർക്കേണ്ടതുണ്ട്.</p>    ???+&?gI??E??:-?TE?R???^?DG?ض?F  
<p>നിങ്ങൾ വാങ്ങുന്നതിനുള്ള കറൻസിയായി യൂറോ തിരഞ്ഞെടുക്കുകയാണെങ്കിൽ, വില കുറവായിരിക്കും (8GB മെമ്മറിയും 4 CPU-കളും ഉള്ള ഒരു സെർവറിന് പ്രതിവർഷം ഏകദേശം 529 യുവാൻ ചിലവാകും, പ്രാരംഭ ഇൻസ്റ്റലേഷൻ ഫീസ് ഒരു വർഷത്തേക്ക് സൗജന്യമാണ്).</p>    ?Z????x?2?+ճGh??RA2?4???C|  
<h2>Google മെയിൽ ഉപയോഗിച്ച് i@user.tax എന്നതിലേക്ക് ഒരു ഇമെയിൽ അയയ്ക്കുക</h2>
<p>ഗൂഗിൾ മെയിലിന് മെയിൽ ലഭിച്ചതിന് ശേഷം, i.user.tax@gmail.com എന്നതിന് പകരം <code>i@user.tax</code> എന്ന് മറുപടി നൽകാൻ താൽപ്പര്യപ്പെടുന്നത് സ്വാഭാവികമാണ്.</p>    ?t???NJ?` ???????06@??Uѭ?3?<  
<img 0>
<p>ചൈനീസ് ഉപയോക്താക്കൾ, ദയവായി ഇനിപ്പറയുന്ന കമാൻഡ് ഉപയോഗിക്കുക, ഭാഷ, സമയ മേഖല മുതലായവ സ്വയമേവ സജ്ജീകരിക്കപ്പെടും.</p>    ???O?P?????v??g?? ??!t?D???lbe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp" alt="" /></p>    $?@?w???N????4?i?{?P????}m?   
<h2>കോൺഫിഗറേഷൻ വിജയകരമാണോ എന്ന് പരിശോധിക്കാൻ ഒരു ടെസ്റ്റ് ഇമെയിൽ അയയ്ക്കുക</h2>
<p><code>ops/chasquid</code> നൽകുക</p>    ???? ?ۆ??c:[>$??????S??K?ض???   
<img 4>
<p>സൃഷ്‌ടിച്ച സർട്ടിഫിക്കറ്റിന്റെ പാത <code>/mnt/www/.acme.sh/123.com_ecc。</code></p>    %|????lG???;ت?{??Ǽ?E7 ??fe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp" alt="" /></p>    &??9? ?????????h???EN???|?̦?   
<h2>ഉബുണ്ടു സിസ്റ്റം കോൺഫിഗറേഷൻ</h2>
<p>ഇവിടെയുള്ള ഓപ്പറേറ്റിംഗ് സിസ്റ്റം ഉബുണ്ടു 22.04 ആണ്</p>    'u?-?-??:h*????*?2zg???@??U  
<h3>പാസ്‌വേഡ് ശരിയായി സജ്ജീകരിച്ചിട്ടുണ്ടോയെന്ന് പരിശോധിക്കുക</h3>
<img 7>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp" alt="" /></p>    '????_yU?j??????!???????2???  
<p>സാധാരണയായി ഉപയോഗിക്കുന്ന പബ്ലിക് ക്ലൗഡുകൾ ഡിഫോൾട്ടായി ഈ പോർട്ടുകളെ തടഞ്ഞു, ഒരു വർക്ക് ഓർഡർ നൽകിക്കൊണ്ട് അവ തുറക്കാൻ കഴിഞ്ഞേക്കാം, എന്നാൽ എല്ലാത്തിനുമുപരി, ഇത് വളരെ പ്രശ്‌നകരമാണ്.</p>    (???2?T?G??U?=?c5??????#d??  
<p>തുടർന്ന് MX റെക്കോർഡ് ചേർക്കുക (ചുവടെയുള്ള ചിത്രത്തിൽ ആദ്യ വരിയിൽ കാണിച്ചിരിക്കുന്നതുപോലെ, റിവേഴ്സ് ഡൊമെയ്ൻ നാമത്തിന്റെ വിലാസത്തിലേക്ക് ഞാൻ നേരിട്ട് പോയിന്റ് ചെയ്യുന്നു).</p>    )?U9ؾ1?a?'?R0]?*?Jo???v??21O  
<img 1>
<h3>Contabo IPV6 പ്രവർത്തനക്ഷമമാക്കുന്നു</h3>
<p>IPV6 പ്രവർത്തനക്ഷമമാക്കുക, അതുവഴി SMTP ന് IPV6 വിലാസങ്ങളുള്ള ഇമെയിലുകളും അയയ്‌ക്കാൻ കഴിയും.</p>    )Q???VmV;u?????ͽ8B?	
L| ?z   
    *&?]p/?<WO?-?I??\??B?x?9#?!?   
<p><code>conf/chasquid/domains/user.tax/aliases</code> എഡിറ്റ് ചെയ്യുക, ഫോർവേഡിംഗ് മെയിൽബോക്സ് സജ്ജമാക്കുക</p>    ,'? ?/a??Lޣ?Xf{????0??K? ??   
<p>ഇനിപ്പറയുന്ന വരികൾ പരിഷ്ക്കരിക്കുക അല്ലെങ്കിൽ ചേർക്കുക</p>    2?5ǜO\?=???z-??????d?????*oFP?E   
<p>ഉള്ളടക്കം ഇപ്രകാരമാണ്</p>    2?I*<kucX1Nկ??*?VFr?S?;dJޱx?i  
<p>റിവേഴ്സ് ഡൊമെയ്ൻ നാമം സജ്ജീകരിച്ച ശേഷം, ipv4, ipv6 എന്നീ ഡൊമെയ്ൻ നാമങ്ങളുടെ ഫോർവേഡ് റെസല്യൂഷൻ സെർവറിലേക്ക് കോൺഫിഗർ ചെയ്യാൻ ഓർമ്മിക്കുക.</p>    5?-??ϸ?'?
W *k2zfF7?lX^?&?GJ??b  
<p>ഈ രീതിയിൽ, ഞങ്ങൾ SMTP മെയിൽ സെർവറിന്റെ സ്ഥാപനം പൂർത്തിയാക്കി, അതേ സമയം ഇമെയിലുകൾ അയയ്‌ക്കാനും സ്വീകരിക്കാനും Google മെയിൽ ഉപയോഗിക്കുക.</p>    6%p4??g5?+f???m.?i\?Y?9x??TA ?   
<p>തുടർന്ന് &quot;ഒറിജിനൽ ഇമെയിൽ കാണിക്കുക&quot; ക്ലിക്ക് ചെയ്യുക</p>    63?g?:??X???C@?Q????Doe:?<:?H?{m   
<img 8>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp" alt="" /></p>    9ڕ?O/;??9??cƷ??v>?G???cP?-??   
<p>സാധാരണ പ്രവർത്തനത്തിന്റെ അവസ്ഥ ചുവടെയുള്ള ചിത്രത്തിൽ കാണിച്ചിരിക്കുന്നു</p>    =E?f?o???I?????????F,??x?>????   
<p>ഒരു റിവേഴ്സ് ഡൊമെയ്ൻ നാമം സജ്ജീകരിക്കുന്നത് ഇമെയിലുകൾ സ്പാം ആയി തിരിച്ചറിയുന്നത് തടയാം.</p>    ?O?-B???-???[,-????Q?a?iT#@o?m0   
<p><code>v=spf1 a:smtp.user.tax ~all</code></p>    A?????T?3|7c?b?ve?B?"_?
??r?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp" alt="" /></p>    F?Ra9/]???I^??@i??????0G???   
<p>സർട്ടിഫിക്കറ്റുകൾ സൃഷ്ടിക്കാൻ ഞങ്ങൾ <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> ഉപയോഗിക്കുന്നു.</p>    G|Tۍ?։0?a??????g??$??;??jC?  <h1>നിങ്ങളുടെ സ്വന്തം SMTP മെയിൽ അയയ്ക്കുന്ന സെർവർ നിർമ്മിക്കുക</h1>
<h2>ആമുഖം</h2>
<p>ഇനിപ്പറയുന്നതുപോലുള്ള ക്ലൗഡ് വെണ്ടർമാരിൽ നിന്ന് SMTP സേവനങ്ങൾ നേരിട്ട് വാങ്ങാൻ കഴിയും:</p>    M?XOqh?N_jw?W?y6o?'?E(!:?????U  
<p>കമാൻഡ് വിജയകരമായി പ്രവർത്തിച്ചതിനുശേഷം, DKIM റെക്കോർഡ് സജ്ജമാക്കാൻ നിങ്ങളോട് ആവശ്യപ്പെടും (ചുവടെ കാണിച്ചിരിക്കുന്നത് പോലെ).</p>    Q<qV???dB=6U????v?=??M?w\TMee   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp" alt="" /></p>    U?3i?O??捣~?z????z??x.????]e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp" alt="" /></p>    V	?????+t???^?j??s???}?HY'?>  
<p>മെയിൽ ലഭിക്കുമ്പോൾ, അയയ്‌ക്കുന്ന സെർവറിന് സാധുവായ റിവേഴ്‌സ് ഡൊമെയ്‌ൻ നാമം ഉണ്ടോ എന്ന് സ്ഥിരീകരിക്കുന്നതിന്, അയയ്‌ക്കുന്ന സെർവറിന്റെ IP വിലാസത്തിൽ സ്വീകരിക്കുന്ന സെർവർ റിവേഴ്‌സ് ഡൊമെയ്‌ൻ നാമ വിശകലനം നടത്തും.</p>    W0?!?'{?'??[p???7Xr%?l????????iHE  
<h2>ചാസ്‌ക്വിഡ് ഉപയോഗിച്ച് SMTP സെർവർ നിർമ്മിക്കുക</h2>
<p>ഗോ ഭാഷയിൽ എഴുതിയ ഒരു ഓപ്പൺ സോഴ്‌സ് SMTP സെർവറാണ് <a href="https://github.com/albertito/chasquid">chasquid</a> .</p>    W?SJ?۸Ͽ??mA?C}??\̮r?PNo?+v3}   
<p>ഓരോ പാരാമീറ്ററിന്റെയും അർത്ഥം ഇപ്രകാരമാണ്</p>    X[????
ҋa??e^??[=?e?A]d}~0???   
<p>ഒരു ഓർഡർ നൽകുമ്പോൾ, റിമാർക്ക് <code>prefer AMD</code> , എഎംഡി സിപിയു ഉള്ള സെർവറിന് മികച്ച പ്രകടനം ഉണ്ടാകും.</p>    X???߶g=????{?????????d??5/pD  
<p>കോൺഫിഗറേഷൻ വിജയിച്ച ശേഷം, നിങ്ങളുടെ ബാഹ്യ നെറ്റ്‌വർക്കിന്റെ ipv6 വിലാസം കാണുന്നതിന് നിങ്ങൾക്ക് <code>curl 6.ipw.cn</code> ഉപയോഗിക്കാം.</p>    Yn??B_??W9?9?nJGYV? ?Y=@???Gb??_  
<h2>DNS കോൺഫിഗറേഷൻ DMARC</h2>
<p>(ഡൊമെയ്ൻ അടിസ്ഥാനമാക്കിയുള്ള സന്ദേശ പ്രാമാണീകരണം, റിപ്പോർട്ടിംഗ് &amp; അനുരൂപീകരണം) എന്നതിന്റെ ചുരുക്കമാണ് DMARC.</p>    `Q8Y?7??,L???(X??Ʋ&D	??????  
<p>പുരാതന മെയിൽ സെർവർ പ്രോഗ്രാമുകളായ Postfix, Sendmail എന്നിവയ്ക്ക് പകരമായി, chasquid ലളിതവും ഉപയോഗിക്കാൻ എളുപ്പവുമാണ്, കൂടാതെ ദ്വിതീയ വികസനത്തിനും ഇത് എളുപ്പമാണ്.</p>    `?G?4?Xj????}?8?a?????F??ay$?]?   
<p>ഇവിടെ, ഞാൻ <a href="https://contabo.com">Contabo</a> ശുപാർശ ചെയ്യുന്നു.</p>    a?# Rr?ͥ?c???*??>?As1?>p?)}???M   
<p>ഡയറക്ടറി ഘടന ഇപ്രകാരമാണ്:</p>    e}?????e˃?h??_???Y-?
>??َb^Uđ  
<h3>ഡി.കെ.ഐ.എം</h3>
<p>ചുവടെയുള്ള ചിത്രത്തിൽ കാണിച്ചിരിക്കുന്നതുപോലെ, Gmail യഥാർത്ഥ മെയിൽ പേജ് DKIM പ്രദർശിപ്പിക്കുന്നു, അതായത് DKIM കോൺഫിഗറേഷൻ വിജയിച്ചു എന്നാണ്.</p>    g?0?Q?-k-B?????j-???㻒???~On?\   
<p>തുടർന്ന് സെർവർ പുനരാരംഭിക്കുക.</p>    j?Q????mK?????W???&?P?!?8?lh?   
<h2>സേവന നിലയും ലോഗുകളും കാണുക</h2>
<p><code>systemctl status chasquid</code> സേവന നില കാണുക.</p>    kr
5?????4[82O?%??,?J	wQe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp" alt="" /></p>    m??O?fFȟ?%?~,b?Sn?37}???1B?{+  
<h2>സെർവർ തിരഞ്ഞെടുക്കൽ</h2>
<p>സ്വയം-ഹോസ്‌റ്റ് ചെയ്‌ത SMTP സെർവറിന് 25, 456, 587 തുറന്ന പോർട്ടുകളുള്ള ഒരു പൊതു ഐപി ആവശ്യമാണ്.</p>    pE?????,?????@??*M#??h???)3  
<p>കോൺഫിഗറേഷൻ വെയർഹൗസ് ഓപ്‌സ് നൽകുക, <code>./ssl.sh</code> റൺ ചെയ്യുക, മുകളിലെ ഡയറക്‌ടറിയിൽ ഒരു <code>conf</code> ഫോൾഡർ സൃഷ്‌ടിക്കപ്പെടും.</p>    t?̏s?@7??B? V???v?ݯ?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp" alt="" /></p>    y?	??U,Ճ?&?;ks]?f????-BuW??N  
<p>തുടർന്ന് നിങ്ങളുടെ ഡൊമെയ്ൻ നാമത്തിനായി <code>123.com</code> , <code>*.123.com</code> സർട്ടിഫിക്കറ്റുകൾ സൃഷ്ടിക്കാൻ <code>./ssl.sh 123.com</code> പ്രവർത്തിപ്പിക്കുക.</p>    y?o??y?|?uভ?!?O???b?Vʕ_'?z??!  
<p>ഉപയോക്താവിനെ ചേർത്ത ശേഷം, <code>chasquid/domains/user.tax/users</code> അപ്‌ഡേറ്റ് ചെയ്യപ്പെടും, അത് വെയർഹൗസിൽ സമർപ്പിക്കാൻ ഓർക്കുക.</p>    zEz?k?.'ۆ?qo??CӚx? ??mL!vYe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp" alt="" /></p>    zI?c?H???lbSi̕͡9A?ԣ??????#e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp" alt="" /></p>    |?L?65x????????:80??=%??
P1 ?&  
<p>ഉദാഹരണത്തിന്, ഞാൻ എന്റെ സ്വന്തം ഗിത്തബ് പ്രോസസിലേക്ക് conf ഫോൾഡർ ഇനിപ്പറയുന്ന രീതിയിൽ ബാക്കപ്പ് ചെയ്യുന്നു</p>    #???Z?!?{)?#*mm??Ӣ?!S?<?????  
<p>SPF ബൗൺസുകൾ ക്യാപ്‌ചർ ചെയ്യാൻ ഇത് ഉപയോഗിക്കുന്നു (ഒരുപക്ഷേ കോൺഫിഗറേഷൻ പിശകുകൾ മൂലമാകാം, അല്ലെങ്കിൽ സ്‌പാം അയയ്‌ക്കാൻ മറ്റാരെങ്കിലും നിങ്ങളാണെന്ന് നടിക്കുന്നു).</p>    ?n??? H+?B68?;"???)?S??¼̝?>  
<p>ജർമ്മനിയിലെ മ്യൂണിച്ച് ആസ്ഥാനമായുള്ള ഒരു ഹോസ്റ്റിംഗ് ദാതാവാണ് Contabo, 2003-ൽ വളരെ മത്സരാധിഷ്ഠിതമായ വിലകളിൽ സ്ഥാപിതമായി.</p>    ??w??????B?EG????%>??h???MnM??   
<p>നിങ്ങളുടെ DNS-ലേക്ക് ഒരു TXT റെക്കോർഡ് ചേർക്കുക (ചുവടെ കാണിച്ചിരിക്കുന്നത് പോലെ).</p>    ?ϱ@W?a?t#?/d????u?D?v??Y??e0/?  
<h3>TLS സ്റ്റാൻഡേർഡ് എൻക്രിപ്ഷൻ</h3>
<p>ചുവടെയുള്ള ചിത്രത്തിൽ കാണിച്ചിരിക്കുന്നതുപോലെ, ഈ ചെറിയ ലോക്ക് ഉണ്ട്, അതായത് SSL സർട്ടിഫിക്കറ്റ് വിജയകരമായി പ്രവർത്തനക്ഷമമാക്കി എന്നാണ്.</p>    ?>?vH??o?? ?Ap
p???f?e"??ve   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp" alt="" /></p>    ?sO?s?o?NR??Ac?G8??>?6cǈ(w??   
<p>SPF റെക്കോർഡുകൾ ചേർക്കുന്നത് ഇമെയിലുകൾ സ്പാം ആയി തിരിച്ചറിയുന്നത് പരമാവധി തടയാം.</p>    ? >v?Ii?J???[F)??F?f?B0O????  
<ul>
<li>ഒന്നുമില്ല: ഒരു നടപടിയും എടുത്തിട്ടില്ല, ഇമെയിൽ റിപ്പോർട്ടിംഗ് സംവിധാനം വഴി സ്ഥിരീകരണ ഫലം മാത്രമേ അയച്ചയാൾക്ക് തിരികെ നൽകൂ.</li>
<li>ക്വാറന്റൈൻ: വെരിഫിക്കേഷൻ പാസ്സാക്കാത്ത മെയിൽ സ്പാം ഫോൾഡറിലേക്ക് ഇടുക, എന്നാൽ മെയിൽ നേരിട്ട് നിരസിക്കില്ല.</li>
<li>നിരസിക്കുക: സ്ഥിരീകരണം പരാജയപ്പെടുന്ന ഇമെയിലുകൾ നേരിട്ട് നിരസിക്കുക.</li>
</ul>
<h3>ഫോ (പരാജയ ഓപ്ഷനുകൾ)</h3>
<p>റിപ്പോർട്ടിംഗ് സംവിധാനം നൽകുന്ന വിവരങ്ങളുടെ അളവ് വ്യക്തമാക്കുന്നു. ഇത് ഇനിപ്പറയുന്ന മൂല്യങ്ങളിലൊന്നിലേക്ക് സജ്ജമാക്കാൻ കഴിയും:</p>    ?^?k? A??]t??????W?Ty?Ubsw?l  
<ul>
<li><a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html">ആമസോൺ SES SMTP</a></li>
<li><a href="https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods">അലി ക്ലൗഡ് ഇമെയിൽ പുഷ്</a></li>
</ul>
<p>നിങ്ങൾക്ക് നിങ്ങളുടെ സ്വന്തം മെയിൽ സെർവർ നിർമ്മിക്കാനും കഴിയും - പരിധിയില്ലാത്ത അയയ്‌ക്കൽ, മൊത്തത്തിലുള്ള കുറഞ്ഞ ചിലവ്.</p>    ?)??~z?uE???R3Q???????e?X?2ϖ*$  
<h3>പി (നയം)</h3>
<p>SPF (Sender Policy Framework) അല്ലെങ്കിൽ DKIM (DomainKeys ഐഡന്റിഫൈഡ് മെയിൽ) പരിശോധനയിൽ പരാജയപ്പെടുന്ന ഇമെയിലുകൾ എങ്ങനെ കൈകാര്യം ചെയ്യണമെന്ന് സൂചിപ്പിക്കുന്നു. പി പാരാമീറ്റർ മൂന്ന് മൂല്യങ്ങളിൽ ഒന്നായി സജ്ജീകരിക്കാം:</p>    ?i??
0?]??P????u???)R??甄A+??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp" alt="" /></p>    ??|?T?#]1g?8D??N???????>?Z??Ǒk  
<h2>റിവേഴ്സ് ഡൊമെയ്ൻ നെയിം കോൺഫിഗറേഷൻ</h2>
<p>റിവേഴ്സ് ഡൊമെയ്ൻ നാമം IP വിലാസം അനുബന്ധ ഡൊമെയ്ൻ നാമത്തിലേക്ക് പരിഹരിക്കാൻ അനുവദിക്കുന്നതാണ്.</p>    ??,3??.o?".???@-?"?:?j?*??H{??   
<p><a href="https://my.contabo.com/rdns">https://my.contabo.com/rdns</a> സന്ദർശിച്ച് താഴെ കാണിച്ചിരിക്കുന്നത് പോലെ കോൺഫിഗർ ചെയ്യുക</p>    ????8???AіKO?t.?!TN߂A?A??hv?  
<p>സൗകര്യാർത്ഥം, ഉബുണ്ടു സോഫ്റ്റ്‌വെയറിന്റെ ഇൻസ്റ്റാളേഷനും സിസ്റ്റം കോൺഫിഗറേഷനും ഞാൻ <a href="https://github.com/user-tax-dev/os/tree/main/ubuntu">github.com/user-tax-dev/os/tree/main/ubuntu</a> എന്നതിൽ ഇട്ടു.</p>    ?ֲ?b?_[??X*:(?9???? Gઠ?0"?a  
<p>അയയ്ക്കുന്ന സെർവറിന് റിവേഴ്സ് ഡൊമെയ്ൻ നാമം ഇല്ലെങ്കിലോ റിവേഴ്സ് ഡൊമെയ്ൻ നാമം അയയ്ക്കുന്ന സെർവറിന്റെ IP വിലാസവുമായി പൊരുത്തപ്പെടുന്നില്ലെങ്കിൽ, സ്വീകരിക്കുന്ന സെർവർ ഇമെയിൽ സ്പാം ആയി തിരിച്ചറിയുകയോ നിരസിക്കുകയോ ചെയ്യാം.</p>    ?+J??sun?ž${??o7?t'?=s	^B?Ir   
<img 9>
<p>പരാമീറ്ററുകളുടെ അർത്ഥം ഇപ്രകാരമാണ്</p>    ?ڨ`?e?-???9aQw?>??z??6?j??T!??  
<p>ആദ്യ റൺ യാന്ത്രികമായി <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> ഇൻസ്റ്റാൾ ചെയ്യുകയും യാന്ത്രിക പുതുക്കലിനായി ഒരു ഷെഡ്യൂൾ ചെയ്ത ടാസ്ക് ചേർക്കുകയും ചെയ്യും. <code>crontab -l</code> ഇങ്ങനെ ഒരു ലൈൻ ഉണ്ടെന്ന് കാണാൻ കഴിയും.</p>    ???'U?V,?5`s?D%?y??A?W]???|\?D  
<h2>കോൺഫിഗറേഷൻ റിപ്പോസിറ്ററി ഓപ്‌സ് ക്ലോൺ ചെയ്യുക</h2>
<img 3>
<h2>നിങ്ങളുടെ ഡൊമെയ്ൻ നാമത്തിനായി ഒരു സൗജന്യ SSL സർട്ടിഫിക്കറ്റ് സൃഷ്ടിക്കുക</h2>
<p>മെയിൽ അയയ്‌ക്കുന്നതിന് എൻക്രിപ്ഷനും ഒപ്പിടാനും ഒരു SSL സർട്ടിഫിക്കറ്റ് ആവശ്യമാണ്.</p>    ?y5M<r?[Yd?_ţ1B??P????ڥva{  
<p>റൺ <code>./chasquid/init.sh 123.com</code> ഒറ്റ ക്ലിക്കിൽ സ്വയമേവ ഇൻസ്റ്റാൾ ചെയ്യപ്പെടും (നിങ്ങളുടെ അയയ്‌ക്കുന്ന ഡൊമെയ്‌ൻ നാമം ഉപയോഗിച്ച് 123.com മാറ്റിസ്ഥാപിക്കുക).</p>    ??Z\????Ƥu?bz??D?a????p'??F?   
<p>acme.sh ഒരു ഓപ്പൺ സോഴ്‌സ് ഓട്ടോമേറ്റഡ് സർട്ടിഫിക്കറ്റ് സൈനിംഗ് ടൂളാണ്,</p>    ?\Kmڔ&EY?7?(mx?u???b?L?5?a  
<p>സർട്ടിഫിക്കറ്റ് പുതുക്കൽ <code>conf/reload/123.com.sh</code> സ്ക്രിപ്റ്റ് വിളിക്കും, ഈ സ്ക്രിപ്റ്റ് എഡിറ്റ് ചെയ്യുക, ബന്ധപ്പെട്ട ആപ്ലിക്കേഷനുകളുടെ സർട്ടിഫിക്കറ്റ് കാഷെ പുതുക്കുന്നതിന് നിങ്ങൾക്ക് <code>nginx -s reload</code> പോലുള്ള കമാൻഡുകൾ ചേർക്കാൻ കഴിയും.</p>    ?e???[e??@??uO?????%?2?	zR0  
<p>അവസാനമായി, ഇത് ഡിഫോൾട്ട് അയച്ചയാളുടെ വിലാസമായി സജ്ജീകരിക്കാം (അതേ വിലാസത്തിൽ മറുപടി നൽകാനുള്ള ഓപ്ഷനോടൊപ്പം).</p>    ?y????n?p?b?;?F\{????k7h? 0????  
<img 2>
<p><a href="https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/">Contabo ട്യൂട്ടോറിയൽ പിന്തുടരുക: നിങ്ങളുടെ സെർവറിലേക്ക് IPv6 കണക്റ്റിവിറ്റി ചേർക്കുന്നു</a></p>    ?9Y'?8}ߢ????-?`?2n??
p?Fa$~?  
<p>യഥാർത്ഥ ഇമെയിലിന്റെ തലക്കെട്ടിൽ സ്വീകരിച്ചത് പരിശോധിക്കുക, അയച്ചയാളുടെ വിലാസം IPV6 ആണെന്ന് നിങ്ങൾക്ക് കാണാൻ കഴിയും, അതായത് IPV6-ഉം വിജയകരമായി ക്രമീകരിച്ചിരിക്കുന്നു എന്നാണ്.</p>    ??<UY????+?F̽^@;??ku????6xe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp" alt="" /></p>    ?????c??Y???!??P??w(l????5??2??{  
<p>ssh-ലെ സെർവർ കാണിക്കുന്നുവെങ്കിൽ <code>Welcome to TinyCore 13!</code> (ചുവടെയുള്ള ചിത്രത്തിൽ കാണിച്ചിരിക്കുന്നതുപോലെ), സിസ്റ്റം ഇതുവരെ ഇൻസ്റ്റാൾ ചെയ്തിട്ടില്ല എന്നാണ് ഇതിനർത്ഥം. ദയവായി ssh വിച്ഛേദിച്ച് വീണ്ടും ലോഗിൻ ചെയ്യാൻ കുറച്ച് മിനിറ്റ് കാത്തിരിക്കുക.</p>    ??ȫ?[k'y^?X??_???J??ݵ?*#T?DU  
<p><strong>നിങ്ങൾക്ക് സ്വന്തമായി പണമടച്ചുള്ള ബിസിനസ്സ് മെയിൽബോക്സ് ഉണ്ടെങ്കിൽ, ദയവായി MX പരിഷ്ക്കരിക്കരുത്, ഈ ഘട്ടം ഒഴിവാക്കുക.</strong></p>    ??̟??q9JW?ڞG?>??C?
fsHa?j̚   
<p>തുടർന്ന്, അയച്ച ഇമെയിലിന് ലഭിച്ച സ്ഥിരീകരണ കോഡ് നൽകുക.</p>    ?Ό}T)?>E=?c?-??v?its????Pބ??  
<p>ഈ പോർട്ടുകൾ തുറന്നിരിക്കുന്നതും റിവേഴ്സ് ഡൊമെയ്ൻ നാമങ്ങൾ സജ്ജീകരിക്കുന്നതിനെ പിന്തുണയ്ക്കുന്നതുമായ ഒരു ഹോസ്റ്റിൽ നിന്ന് വാങ്ങാൻ ഞാൻ ശുപാർശ ചെയ്യുന്നു.</p>    ?U???!m)f0??uΣG?o7?HVtS?????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp" alt="" /></p>    ???m? e7]Lo???_b??C%??>???X??   
<h2>conf ബാക്കപ്പ് git റിപ്പോസിറ്ററിയിലേക്ക്</h2>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp" alt="" /></p>    ???Y??'?Ȏ?)??̶A/;/???;??:`ŗJ  
<p>കോൺഫിഗറേഷനുകൾ വിജയകരമാണോ എന്ന് പരിശോധിക്കാൻ ടെസ്റ്റ് ഇമെയിലുകൾ സ്വീകരിക്കുന്നതിന് Gmail ഉപയോഗിക്കാൻ ശുപാർശ ചെയ്യുന്നു.</p>    ?=???G?JzI>ʥ?'???`??P`F?Ӯ??U   
<p>TXT റെക്കോർഡ് <code>_dmarc</code> ചേർക്കുക,</p>    ??Я?ߠuOgr??#Y(?\?3?9nֿ?z?  
<p><code>Welcome to Ubuntu 22.04.1 LTS</code> ദൃശ്യമാകുമ്പോൾ, സമാരംഭിക്കൽ പൂർത്തിയായി, നിങ്ങൾക്ക് ഇനിപ്പറയുന്ന ഘട്ടങ്ങൾ തുടരാം.</p>    ????*Ao"`?,????Y??U?]SkӶp???1C  
<h2>DNS SPF റെക്കോർഡ് ചേർക്കുക</h2>
<p>ഇമെയിൽ തട്ടിപ്പ് തടയാൻ ഉപയോഗിക്കുന്ന ഒരു ഇമെയിൽ സ്ഥിരീകരണ സാങ്കേതികവിദ്യയാണ് SPF (Sender Policy Framework).</p>    ?;2??j?6???C??5=?&|?_x????;?b?6   
<p><code>_spf.user.tax</code> നുള്ള SPF</p>    ?O?O??顾??l???s??l?7?6?{?z?~'   
<p>പിന്നെ ഓടുക</p>    ?Q?,?ir????u???d?wt;0?ZU?,X?M??   
<p>conf ഡയറക്ടറി നൽകി വെയർഹൗസിലേക്ക് സമർപ്പിക്കുക</p>    ?,?7??"?Ku?????2&un?Ir??]_?  
<p>ഡിപൻഡൻസികൾ ഇൻസ്റ്റാൾ ചെയ്യാൻ <code>direnv allow</code> റൺ ചെയ്യുക (മുമ്പത്തെ വൺ-കീ ഇനീഷ്യലൈസേഷൻ പ്രക്രിയയിൽ direnv ഇൻസ്റ്റാൾ ചെയ്തിട്ടുണ്ട് കൂടാതെ ഷെല്ലിലേക്ക് ഒരു ഹുക്ക് ചേർത്തിട്ടുണ്ട്)</p>    ?jV?????ǔ????5??=L???c??t?V?   
<p>ഉദാഹരണത്തിന്, <code>user.tax</code> ന്റെ SPF ഇനിപ്പറയുന്നതാണ്</p>    ƃ??0zn1?? ??BA??`>?k-?,\Z?  
<p>എഡിറ്റ് <code>/etc/netplan/01-netcfg.yaml</code> , ചുവടെയുള്ള ചിത്രത്തിൽ കാണിച്ചിരിക്കുന്നതുപോലെ കുറച്ച് വരികൾ ചേർക്കുക (Contabo VPS ഡീഫോൾട്ട് കോൺഫിഗറേഷൻ ഫയലിൽ ഇതിനകം തന്നെ ഈ വരികളുണ്ട്, അവ കമന്റ് ചെയ്യാതിരിക്കുക).</p>    ?_;?<̉f=Fx?  i???T??.?F?_??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp" alt="" /></p>    ?7?=???????d?bA??????????J+?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp" alt="" /></p>    ?tu????9? 4?????I0]о!???P?  
<p>നിങ്ങളുടെ ഡൊമെയ്ൻ നെയിം സെർവർ SPF തരത്തെ പിന്തുണയ്ക്കുന്നില്ലെങ്കിൽ, TXT ടൈപ്പ് റെക്കോർഡ് ചേർക്കുക.</p>    ???Uk??vvJfQ???N??W?1?!?
dmP?  
<p>കോൺഫിഗറേഷൻ പൂർത്തിയായ ശേഷം, നിങ്ങൾക്ക് Gmail-ൽ ഇമെയിലുകൾ ലഭിക്കുമോ എന്നറിയാൻ <code>i@user.tax</code> എന്നതിലേക്കും <code>any123@user.tax</code> എന്നതിലേക്കും ഇമെയിലുകൾ അയയ്‌ക്കാൻ മറ്റ് ഇമെയിൽ വിലാസങ്ങൾ ഉപയോഗിക്കാം.</p>    ???}??YLrT???ݥ?ܗr??9՜	?   
<p><code>grep chasquid /var/log/syslog</code> അല്ലെങ്കിൽ <code>journalctl -xeu chasquid</code> പിശക് ലോഗ് കാണാൻ കഴിയും.</p>    ?@Ә??S?A??u?q&? ?v?,*sgH??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp" alt="" /></p>    ?j?v$?k?C-??Bݦ??R?4??a?????>0  
<p><a href="https://mail.google.com/mail/u/1/#settings/accounts">https://mail.google.com/mail/u/1/#settings/accounts</a> സന്ദർശിച്ച് &quot;മറ്റൊരു ഇമെയിൽ വിലാസം ചേർക്കുക&quot; ക്ലിക്ക് ചെയ്യുക.</p>    ?]?F?%?Y"?????_P?0????[M??Ke   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp" alt="" /></p>    ڜ? ??~?dЬ?^p"?}?y?43?	?????   
<p>ഇല്ലെങ്കിൽ, chasquid ലോഗ് പരിശോധിക്കുക ( <code>grep chasquid /var/log/syslog</code> ).</p>    ?0?F?b?????[6D???????s?
??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp" alt="" /></p>    ߮?B?D?J?%???]?^?P??????f??;   
<p>എഡിറ്റ് <code>/etc/sysctl.conf</code></p>    ??2???Ԟ3E,|??y???V??t??ߔ"9????   
<p>ഒറ്റ ക്ലിക്കിൽ ഇൻസ്റ്റാൾ ചെയ്യാൻ താഴെ പറയുന്ന കമാൻഡ് പ്രവർത്തിപ്പിക്കുക.</p>    ?^????~?%?t?4	?@7?K?j w"??W?D   
<img 6>
<p>അയച്ചയാളെ ചേർക്കാം</p>    ???^??PK??s??7<U????;w?Gf?=????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp" alt="" /></p>    ??N>??7]u????v_XI?[?s??k?o?   
<p>തുടർന്ന് സേവനം പുനരാരംഭിക്കുന്നതിന് <code>systemctl restart chasquid</code> പ്രവർത്തിപ്പിക്കുക.</p>    ?>???u$R???Bu>??T??JO/S(7??  
<p><a href="https://github.com/acmesh-official/acme.sh/wiki/dnsapi">acme.sh dnsapi-</a> ൽ നിന്ന് നിങ്ങളുടെ DNS ദാതാവിനെ കണ്ടെത്തുക, <code>conf/conf.sh</code> എഡിറ്റ് ചെയ്യുക.</p>    ??,NN???DR????Dz?s??F??5ظqζ
  
<p>താഴെ, ഞങ്ങളുടെ സ്വന്തം മെയിൽ സെർവർ എങ്ങനെ നിർമ്മിക്കാമെന്ന് ഞങ്ങൾ ഘട്ടം ഘട്ടമായി കാണിക്കുന്നു.</p>    ?ꁶn??w޶?ѭD????C?C)?@??B7??Z   
<img 5>
<h2>അയച്ചയാളെ ചേർക്കുക</h2>
<p>ഓടുക</p>    ??"???gb??㪼+?lJZ?ۃ?]O;??QOT  
<ul>
<li>ഉപയോക്താവ്: SMTP ഉപയോക്തൃനാമം</li>
<li>പാസ്സ്: SMTP പാസ്വേഡ്</li>
<li>ലേക്ക്: സ്വീകർത്താവ്</li>
</ul>
<p>നിങ്ങൾക്ക് ഒരു ടെസ്റ്റ് ഇമെയിൽ അയയ്ക്കാം.</p>    ???]?D(#?????!v??8ꀂ?>Z?@L%?  
<p>അയച്ചയാളുടെ ഐപി വിലാസം അത് അവകാശപ്പെടുന്ന ഡൊമെയ്‌ൻ നാമത്തിന്റെ ഡിഎൻഎസ് രേഖകളുമായി പൊരുത്തപ്പെടുന്നുണ്ടോയെന്ന് പരിശോധിച്ച് ഇത് മെയിൽ അയയ്‌ക്കുന്നയാളുടെ ഐഡന്റിറ്റി സ്ഥിരീകരിക്കുന്നു, വ്യാജ ഇമെയിലുകൾ അയയ്‌ക്കുന്നതിൽ നിന്ന് തട്ടിപ്പുകാർ തടയുന്നു.</p>    ??:???颕?m?ç???n???M蠘Ce   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp" alt="" /></p>    ??^?/f??`???M-}??zú???o($F?p?M  
<h2>chasquid.conf ന്റെ ഹോസ്റ്റ്നാമം എഡിറ്റ് ചെയ്യുക</h2>
<p>വിപരീത ഡൊമെയ്ൻ നാമത്തിന്റെ മൂല്യത്തിലേക്ക് <code>conf/chasquid/chasquid.conf</code> പരിഷ്ക്കരിക്കുക.</p>    ????k<?I?m3i??K?O?*Oy?;L??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp" alt="" /></p>    ?[??r.p/܅ ???Q?	??G"2?/??   
<h3>[ഓപ്ഷണൽ] വികസന അന്തരീക്ഷം ആരംഭിക്കുക</h3>
<p>ഈ ഘട്ടം ഓപ്ഷണൽ ആണ്.</p>