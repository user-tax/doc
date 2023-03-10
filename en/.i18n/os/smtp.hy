|       �pD�l�8�ws�8(L佌�ev���p����  
<ul>
<li>0: Հաղորդեք վավերացման արդյունքների մասին բոլոր հաղորդագրությունների համար</li>
<li>
<ol>
<li>Հաղորդել միայն այն հաղորդագրությունների մասին, որոնք չեն հաստատում</li>
</ol>
</li>
<li>դ․ զեկուցել միայն տիրույթի անվան ստուգման ձախողումների մասին</li>
<li>s. զեկուցել միայն SPF-ի ստուգման ձախողումների մասին</li>
<li>l. Հաղորդել միայն DKIM-ի ստուգման ձախողումների մասին</li>
</ul>
<h3>rua &amp; ruf</h3>
<ul>
<li>rua (Հաշվետվական URI համախառն հաշվետվությունների համար). Էլ. հասցե՝ համախառն հաշվետվություններ ստանալու համար</li>
<li>ruf (Զեկուցող URI դատաբժշկական հաշվետվությունների համար). էլփոստի հասցե՝ մանրամասն հաշվետվություններ ստանալու համար</li>
</ul>
<h2>Ավելացրեք MX գրառումներ՝ նամակները Google Mail-ին փոխանցելու համար</h2>
<p>Քանի որ ես չկարողացա գտնել անվճար կորպորատիվ փոստարկղ, որն աջակցում է ունիվերսալ հասցեներ (Catch-All, կարող է ստանալ ցանկացած նամակներ, որոնք ուղարկվում են այս տիրույթի անունով, առանց նախածանցների սահմանափակումների), ես օգտագործեցի chasquid՝ բոլոր նամակները Gmail-ի փոստարկղ փոխանցելու համար:</p>    Z�I�`O���J��<�ۜc(�ƀ�0��'��   
<p>Հետևյալում ես կվերցնեմ Contabo-ի VPS-ը որպես օրինակ՝ ցույց տալու համար, թե ինչպես կառուցել ձեր սեփական փոստային սերվերը:</p>    6���ZE�k߀P���T���Ӡ��y�S�!  
<h2>Կարգավորեք էլփոստի ստորագրությունը DKIM</h2>
<p>DKIM-ն օգտագործվում է էլ.փոստի ստորագրություններ ուղարկելու համար՝ կանխելու նամակները որպես սպամ չվերաբերվել:</p>    �f=��9M����,��ƿ�wɨ"&aj�l��S   
<p><code>v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all</code></p>    	z������	9�#.��Oœ�2J@u.�e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp" alt="" /></p>    
 	_��8���*��7Jm�j�7��.X�e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp" alt="" /></p>    v��H��v-Hv����W�;�|��Kn-���;   
<p>Նախ ստեղծեք մասնավոր պահեստ</p>    �|=�.��2�^��w�j6��}Y'�Ϩ$�pe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp" alt="" /></p>    B��$��eb��u��`V��?e���4�)�   
<p>Նկատի ունեցեք, որ ես այստեղ <code>include:_spf.google.com</code> , քանի որ ավելի ուշ կկարգավորեմ <code>i@user.tax</code> որպես ուղարկող հասցե Google-ի փոստարկղում:</p>    E�����<��ܶ9��?���<lJ�gP��;��U  
<p><code>*</code> ցույց է տալիս բոլոր նամակները, <code>i</code> ուղարկող օգտատիրոջ էլփոստի հասցեի նախածանցն է, որը ստեղծվել է վերևում: Փոստ փոխանցելու համար յուրաքանչյուր օգտվող պետք է ավելացնի տող:</p>    ���+&�gI��E��:-�TE�R���^�DG�ض�M  
<p>Եթե ​​որպես գնման արժույթ ընտրեք եվրոն, գինն ավելի էժան կլինի (8 ԳԲ հիշողությամբ և 4 պրոցեսորով սերվերն արժե տարեկան մոտ 529 յուան, իսկ տեղադրման սկզբնական վճարը մեկ տարի անվճար է):</p>    �Z����x�2�+ճGh��RA2�4���C|  
<h2>Google Mail-ով նամակ ուղարկեք i@user.tax հասցեին</h2>
<p>Google Mail-ը նամակը ստանալուց հետո բնական է, որ ցանկանաք պատասխանել <code>i@user.tax</code> ով i.user.tax@gmail.com-ի փոխարեն:</p>    �t���NJ�` ������06@��Uѭ�3��   
<img 0>
<p>Չինացի օգտատերեր, փոխարենը օգտագործեք հետևյալ հրամանը, և լեզուն, ժամային գոտին և այլն ավտոմատ կերպով կկարգավորվեն:</p>    ���O�P����v��g�� ��!t�D���lbe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp" alt="" /></p>    $�@�w���N�?��4�i�{�P����}m�   
<h2>Ուղարկեք փորձնական նամակ՝ ստուգելու, թե արդյոք կազմաձևումը հաջող է</h2>
<p>Մուտքագրեք <code>ops/chasquid</code></p>    ���� �ۆ��c:[>$������S�K�ض��v   
<img 4>
<p>Ստեղծված վկայագրի ուղին նման է <code>/mnt/www/.acme.sh/123.com_ecc。</code></p>    %|����lG���;ت�{��Ǽ�E7 ��fe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp" alt="" /></p>    &��9? ?��������h���EN���|�̦�   
<h2>Ubuntu համակարգի կոնֆիգուրացիա</h2>
<p>Այստեղ օպերացիոն համակարգը Ubuntu 22.04-ն է</p>    'u�-�-��:h*���*�2zg���@��U�   
<h3>Ստուգեք, որ գաղտնաբառը ճիշտ է դրված</h3>
<img 7>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp" alt="" /></p>    '����_yU�j������!�������2��D  
<p>Սովորաբար օգտագործվող հանրային ամպերը լռելյայն արգելափակել են այս նավահանգիստները, և հնարավոր է, որ դրանք բացվեն աշխատանքային պատվեր տալով, բայց ի վերջո դա շատ անհանգիստ է:</p>    (��2�T�G��U�=�c5������#d�  
<p>Այնուհետև ավելացրեք MX գրառումը (ես ուղղակիորեն ցույց եմ տալիս այստեղ հակառակ դոմենի անվան հասցեն, ինչպես ցույց է տրված ստորև նկարի առաջին տողում):</p>    )?U9ؾ1�a�'�R0]�*�Jo���v��21�   
<img 1>
<h3>Contabo-ն հնարավորություն է տալիս IPV6-ին</h3>
<p>Միացրեք IPV6-ը, որպեսզի SMTP-ն կարողանա նաև նամակներ ուղարկել IPV6 հասցեներով:</p>    )Q���VmV;u�����ͽ8B�	
L| �z   
    *&�]p/�<WO�-�I�\��B�x�9#�!�   
<p>Խմբագրել <code>conf/chasquid/domains/user.tax/aliases</code> , սահմանել վերահասցեավորման փոստարկղը</p>    ,'� �/a��Lޣ�Xf{����0��K� �L   
<p>Փոփոխեք կամ ավելացրեք հետևյալ տողերը</p>    2�5ǜO\�=��z-������d�����*oFP�>   
<p>Բովանդակությունը հետեւյալն է</p>    2�I*<kucX1Nկ��*�VFr�S�;dJޱx��   
<p>Հակադարձ տիրույթի անունը սահմանելուց հետո հիշեք, որ ipv4 և ipv6 տիրույթի անվան առաջ լուծումը կարգավորեք սերվերին:</p>    5�-��ϸ�'�
W *k2zfF7�lX^�&�GJ��   
<p>Այս կերպ մենք ավարտել ենք SMTP փոստի սերվերի ստեղծումը և միևնույն ժամանակ օգտագործում ենք Google Mail նամակներ ուղարկելու և ստանալու համար:</p>    6%p4��g5�+f���m.�i\�Y�9x��TA a   
<p>Այնուհետև կտտացրեք «Ցույց տալ բնօրինակ էլփոստը»</p>    63�g�:��X���C@�Q����Doe:�<:�H�{m   
<img 8>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp" alt="" /></p>    9ڕ�O/;��9��cƷ��v>�G���cP�-�^   
<p>Նորմալ շահագործման վիճակը նման է ստորև նկարում</p>    =E�f�o���I��������F,��x�>?��   
<p>Հակադարձ տիրույթի անուն սահմանելը կարող է կանխել էլ. նամակները որպես սպամ նույնացնելը:</p>    ?O�-B���-���[,-���Q�a�iT#@o�m0   
<p><code>v=spf1 a:smtp.user.tax ~all</code></p>    A����T�3|7c�b�ve�B�"_�
��r�e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp" alt="" /></p>    F�Ra9/]���I^��@i������0G���   
<p>Մենք օգտագործում ենք <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> վկայականներ ստեղծելու համար:</p>    G|Tۍ�։0�a�����g��$��;��jC  <h1>Կառուցեք ձեր սեփական SMTP նամակների ուղարկման սերվերը</h1>
<h2>նախաբան</h2>
<p>SMTP-ն կարող է ուղղակիորեն ծառայություններ գնել ամպային վաճառողներից, ինչպիսիք են՝</p>    M�XOqh�N_jw�W�y6o�'�E(!:����   
<p>Հրամանի հաջող գործարկումից հետո ձեզ կառաջարկվի սահմանել DKIM ռեկորդը (ինչպես ցույց է տրված ստորև):</p>    Q<qV���dB=6U����v�=��M�w\TMee   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp" alt="" /></p>    U�3i�O��捣~�z����z?�x.���]e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp" alt="" /></p>    V	�����+t���^�j��s���}�HY'�a  
<p>Երբ նամակը ստացվի, ստացող սերվերը կկատարի հակադարձ տիրույթի անվան վերլուծություն ուղարկող սերվերի IP հասցեի վրա՝ հաստատելու, թե արդյոք ուղարկող սերվերն ունի վավեր հակադարձ տիրույթի անուն:</p>    W0�!�'{�'��[p���7Xr%�l��������iH�   
<h2>Կառուցեք SMTP սերվեր chasquid-ով</h2>
<p><a href="https://github.com/albertito/chasquid">chasquid-ը</a> բաց կոդով SMTP սերվեր է՝ գրված Go լեզվով:</p>    W�SJ�۸Ͽ��mA�C}��\̮r�PNo�+v3V   
<p>Յուրաքանչյուր պարամետրի իմաստը հետևյալն է</p>    X[����
ҋa��e^��[=�e�A]d}~0���   
<p>Պատվեր կատարելիս նշեք <code>prefer AMD</code> , և AMD պրոցեսորով սերվերը կունենա ավելի լավ կատարում:</p>    X���߶g=����{���������d��5/p�   
<p>Կարգավորումը հաջողությամբ ավարտվելուց հետո կարող եք օգտագործել <code>curl 6.ipw.cn</code> ՝ ձեր արտաքին ցանցի ipv6 հասցեն դիտելու համար:</p>    Yn��B_��W9�9�nJGYV� �Y=@���Gb���   
<h2>DNS կոնֆիգուրացիա DMARC</h2>
<p>DMARC-ը (Domain-based Message Authentication, Reporting &amp; Conformance)-ի հապավումն է:</p>    `Q8Y�7��,L���(X��Ʋ&D	�����1  
<p>Որպես փոխարինող հին փոստի սերվերի ծրագրերին, ինչպիսիք են Postfix-ը և Sendmail-ը, chasquid-ն ավելի պարզ և հեշտ է օգտագործել, ինչպես նաև ավելի հեշտ է երկրորդական զարգացման համար:</p>    `�G�4�Xj����}�8�a����F��ay$�]�k   
<p>Այստեղ ես խորհուրդ եմ տալիս <a href="https://contabo.com">Contabo-ին</a> :</p>    a�# Rr�ͥ�c���*��>�As1�>p�)}���H   
<p>Գրացուցակի կառուցվածքը հետևյալն է.</p>    e}�����e˃�h��_���Y-�
>��َb^U��   
<h3>DKIM</h3>
<p>Ինչպես ցույց է տրված ստորև նկարում, Gmail-ի սկզբնական փոստի էջը ցուցադրում է DKIM, ինչը նշանակում է, որ DKIM կոնֆիգուրացիան հաջող է:</p>    g�0�Q�-k-B�����j-��㻒���~On�E   
<p>Այնուհետև վերագործարկեք սերվերը:</p>    j�Q����mK�����W��&?P�!�8�lh�   
<h2>Դիտեք ծառայության կարգավիճակը և տեղեկամատյանները</h2>
<p><code>systemctl status chasquid</code> Դիտել ծառայության կարգավիճակը:</p>    kr
5�����4[82O�%��,�J	wQe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp" alt="" /></p>    m��O�fFȟ�%�~,b�Sn�37}���1B�{�   
<h2>Սերվերի ընտրություն</h2>
<p>Ինքնահոսթինգային SMTP սերվերը պահանջում է հանրային IP՝ 25, 456 և 587 բաց նավահանգիստներով:</p>    pE�����,�����@��*M#��h���)�   
<p>Մուտքագրեք կոնֆիգուրացիայի պահեստի ops, գործարկեք <code>./ssl.sh</code> , և վերին գրացուցակում կստեղծվի <code>conf</code> թղթապանակ:</p>    t�̏s�@7��B� V���v�ݯ?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp" alt="" /></p>    y�	��U,Ճ�&�;ks]�f����-BuW���   
<p>Այնուհետև գործարկեք <code>./ssl.sh 123.com</code> ՝ ձեր տիրույթի անվան համար <code>123.com</code> և <code>*.123.com</code> վկայագրեր ստեղծելու համար:</p>    y�o��y�|�uভ�!�O���b�Vʕ_'�z��   
<p>Օգտատիրոջը ավելացնելուց հետո <code>chasquid/domains/user.tax/users</code> կթարմացվի, հիշեք այն ներկայացնել պահեստ:</p>    zEz�k�.'ۆ�qo��CӚx� ��mL!vYe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp" alt="" /></p>    zI�c�H���lbSi̕͡9A�ԣ������#e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp" alt="" /></p>    |�L�65x��������:80��=%��
P1 Ӡ   
<p>Օրինակ, ես կրկնօրինակում եմ conf թղթապանակը իմ սեփական github գործընթացում հետևյալ կերպ</p>    #���Z�!?{)�#*mm��Ӣ�!S�<����1  
<p>Այն օգտագործվում է SPF-ի ցատկումները գրավելու համար (կարող է պայմանավորված լինել կազմաձևման սխալներով, կամ ինչ-որ մեկը ձևացնում է, որ դուք եք սպամ ուղարկելու համար):</p>    �n��� H+�B68�;"���)�S��¼̝��   
<p>Contabo-ն հոսթինգ մատակարար է, որը հիմնված է Գերմանիայի Մյունխեն քաղաքում, որը հիմնադրվել է 2003 թվականին՝ շատ մրցունակ գներով:</p>    ��w������B�EG����%>��h���MnM��   
<p>Պարզապես ավելացրեք TXT գրառում ձեր DNS-ին (ինչպես ցույց է տրված ստորև):</p>    �ϱ@W�a�t#�/d����u�D�v��Y��e0/  
<h3>TLS ստանդարտ գաղտնագրում</h3>
<p>Ինչպես ցույց է տրված ստորև նկարում, կա այս փոքրիկ կողպեքը, ինչը նշանակում է, որ SSL վկայագիրը հաջողությամբ միացված է:</p>    �>�vH��o�� �Ap
p���f�e"��ve   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp" alt="" /></p>    �sO�s�o�NR��Ac�G8��>�6cǈ(w��   
<p>SPF գրառումների ավելացումը կարող է հնարավորինս կանխել էլ. փոստերը որպես սպամ ճանաչվելը:</p>    � >v�Ii�J��[F)��F�f�B0O���p  
<ul>
<li>Ոչ մեկը. Ոչ մի գործողություն չի ձեռնարկվում, միայն ստուգման արդյունքը հետ է ուղարկվում ուղարկողին էլփոստի հաշվետվության մեխանիզմի միջոցով:</li>
<li>Կարանտին. Տեղադրեք այն նամակը, որը ստուգումը չի անցել սպամի թղթապանակում, բայց ուղղակիորեն չի մերժի նամակը:</li>
<li>մերժել. ուղղակիորեն մերժել նամակները, որոնք չեն հաստատում:</li>
</ul>
<h3>fo (Ձախողման ընտրանքներ)</h3>
<p>Նշում է հաշվետվության մեխանիզմով վերադարձվող տեղեկատվության քանակը: Այն կարող է սահմանվել հետևյալ արժեքներից մեկի վրա.</p>    �^�k� A��]t������W�Ty�Ubsw��  
<ul>
<li><a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html">Amazon SES SMTP</a></li>
<li><a href="https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods">Ալի ամպային էլփոստի հրում</a></li>
</ul>
<p>Դուք կարող եք նաև ստեղծել ձեր սեփական փոստի սերվերը՝ անսահմանափակ ուղարկում, ցածր ընդհանուր արժեք:</p>    �)��~z�uE�?�R3Q�������e�X�2ϖ*j  
<h3>p (Քաղաքականություն)</h3>
<p>Ցույց է տալիս, թե ինչպես վարվել նամակների հետ, որոնք ձախողվում են SPF (Sender Policy Framework) կամ DKIM (DomainKeys Identified Mail) ստուգում: p պարամետրը կարող է սահմանվել երեք արժեքներից մեկի վրա.</p>    �i��
0�]�P����u���)R��甄A+��e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp" alt="" /></p>    ��|�T�#]1g�8D��N�������>�Z��Ǒ�   
<h2>Հակադարձ տիրույթի անվան կազմաձևում</h2>
<p>Հակադարձ տիրույթի անունը թույլ է տալիս IP հասցեն լուծել համապատասխան տիրույթի անունով:</p>    ��,3��.o�".���@-�"�:�j�*��H{��   
<p>Այցելեք <a href="https://my.contabo.com/rdns">https://my.contabo.com/rdns</a> և կազմաձևեք, ինչպես ցույց է տրված ստորև</p>    ����8���AіKO�t.�!TN߂A�A��hv$  
<p>Հարմարության համար ես տեղադրել եմ ubuntu ծրագրաշարի տեղադրումը և համակարգի կազմաձևումը <a href="https://github.com/user-tax-dev/os/tree/main/ubuntu">github.com/user-tax-dev/os/tree/main/ubuntu</a> հասցեում:</p>    �ֲ�b�_[��X*:(�9���� Gઠ�0"�q  
<p>Եթե ​​ուղարկող սերվերը չունի հակադարձ տիրույթի անուն կամ եթե հակառակ տիրույթի անունը չի համընկնում ուղարկող սերվերի IP հասցեի հետ, ստացող սերվերը կարող է էլփոստը ճանաչել որպես սպամ կամ մերժել այն:</p>    �+J��sun�ž${�o7�t'�=s	^B�IG   
<img 9>
<p>Պարամետրերի իմաստը հետևյալն է</p>    �ڨ`�e�-���9aQw�>��z��6�j�T!�y  
<p>Առաջին գործարկումն ավտոմատ կերպով կտեղադրի <a href="https://github.com/acmesh-official/acme.sh">acme.sh-ը</a> և կավելացնի պլանավորված առաջադրանք՝ ավտոմատ նորացման համար: <code>crontab -l</code> կարող է տեսնել, որ կա այսպիսի տող հետևյալ կերպ.</p>    ��'U�V,�5`s�D%�y��A�W]���|\�D  
<h2>Կլոնավորեք կազմաձևման պահոցը</h2>
<img 3>
<h2>Ստեղծեք անվճար SSL վկայագիր ձեր տիրույթի անվան համար</h2>
<p>Փոստ ուղարկելու համար անհրաժեշտ է SSL վկայագիր կոդավորման և ստորագրման համար:</p>    �y5M<r�[Yd�_ţ1B��P����ڥva�   
<p>Run <code>./chasquid/init.sh 123.com</code> ավտոմատ կերպով կտեղադրվի մեկ սեղմումով (փոխարինեք 123.com-ը ձեր ուղարկող տիրույթի անունով):</p>    ��Z\����Ƥu�bz��D�a����p'��Fv   
<p>acme.sh-ը բաց կոդով ավտոմատացված վկայականի ստորագրման գործիք է,</p>    �\Kmڔ&EY�7�(mx�u��b�L�5�f  
<p>Վկայագրի նորացումը կկանչի <code>conf/reload/123.com.sh</code> սկրիպտը, խմբագրեք այս սկրիպտը, կարող եք ավելացնել հրամաններ, ինչպիսին է <code>nginx -s reload</code> ՝ հարակից հավելվածների վկայականի քեշը թարմացնելու համար:</p>    �e���[e��@��uO�����%�2�	zR�   
<p>Ի վերջո, այն կարող է սահմանվել որպես լռելյայն ուղարկողի հասցե (նույն հասցեով պատասխանելու հնարավորության հետ միասին):</p>    �y����n�p�b�;�F\{����k7h� 0����   
<img 2>
<p>Հետևեք <a href="https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/">contabo ձեռնարկին. IPv6 կապի ավելացում ձեր սերվերին</a></p>    �9Y'�8}ߢ���-�`�2n��
p�Fa$~  
<p>Ստուգեք Received-ը սկզբնական էլ.փոստի վերնագրում և կարող եք տեսնել, որ ուղարկողի հասցեն IPV6 է, ինչը նշանակում է, որ IPV6-ը նույնպես հաջողությամբ կազմաձևված է:</p>    ��<UY����+�F̽^@;��ku����6xe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp" alt="" /></p>    �����c��Y���!��P��w(l����5��2���  
<p>Եթե ​​ssh սերվերը ցուցադրում է <code>Welcome to TinyCore 13!</code> (ինչպես ցույց է տրված ստորև նկարում), դա նշանակում է, որ համակարգը դեռ տեղադրված չէ: Խնդրում ենք անջատել ssh-ը և սպասել մի քանի րոպե՝ նորից մուտք գործելու համար:</p>    ��ȫ�[k'y^�X��_���J��ݵ�*#T�D�   
<p><strong>Եթե ​​ունեք ձեր սեփական վճարովի բիզնես փոստարկղը, խնդրում ենք մի փոփոխեք MX-ը և բաց թողեք այս քայլը:</strong></p>    ��̟��q9JW�ڞG�>��C�
fsHa�j̕   
<p>Այնուհետև մուտքագրեք հաստատման կոդը, որը ստացվել է նամակով, որին ուղարկվել է:</p>    �Ό}T)�>E=�c�-��v�its����Pބ��   
<p>Ես խորհուրդ եմ տալիս գնել այն հոսթից, որն ունի այս նավահանգիստները բաց և աջակցում է հակադարձ տիրույթի անունների տեղադրմանը:</p>    �U���!m)f0��uΣG�o7�HVtS�����e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp" alt="" /></p>    ���m� e7]Lo���_b��C%��>���X��   
<h2>Կրկնօրինակեք conf-ը git պահոցում</h2>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp" alt="" /></p>    �?�Y��'�Ȏ�)��̶A/;/���;��:`ŗ�   
<p>Խորհուրդ է տրվում օգտագործել Gmail-ը՝ թեստային նամակներ ստանալու համար՝ ստուգելու, թե արդյոք կազմաձևերը հաջող են:</p>    �=���G�JzI>ʥ�'���`��P`F�Ӯ��C   
<p>Ավելացնել TXT գրառում <code>_dmarc</code> ,</p>    ��Я�ߠuOgr��#Y(�\�3�9nֿ�z��   
<p>Երբ հայտնվի <code>Welcome to Ubuntu 22.04.1 LTS</code> , սկզբնավորումն ավարտված է, և դուք կարող եք շարունակել հետևյալ քայլերը:</p>    ���*Ao"`�,����Y��U�]SkӶp���1  
<h2>DNS-ն ավելացնում է SPF գրառումը</h2>
<p>SPF (Sender Policy Framework) էլփոստի ստուգման տեխնոլոգիա է, որն օգտագործվում է էլփոստի խարդախությունը կանխելու համար:</p>    �;2��j�6���C��5=�&|�_x����;�b�4   
<p>SPF <code>_spf.user.tax</code> ի համար</p>    �O�O��顾��l��s��l�7�6�{�z�~   
<p>ապա վազիր</p>    �Q�,�ir����u���d�wt;0�ZU�,X�M�]   
<p>Մուտքագրեք conf գրացուցակը և ներկայացրեք պահեստ</p>    �,�7��"�Ku����2&un�Ir��]_  
<p>Գործարկել <code>direnv allow</code> տեղադրել կախվածություններ (direnv-ը տեղադրվել է նախորդ մեկ բանալի սկզբնավորման գործընթացում և կեռիկ է ավելացվել պատյանում)</p>    �jV����ǔ���5��=L���c��t�VI   
<p>Օրինակ, <code>user.tax</code> ի SPF-ը հետևյալն է</p>    ƃ��0zn1�� ��BA��`>�k-�,\Z_  
<p>Խմբագրեք <code>/etc/netplan/01-netcfg.yaml</code> , ավելացրեք մի քանի տող, ինչպես ցույց է տրված ստորև նկարում (Contabo VPS լռելյայն կազմաձևման ֆայլն արդեն ունի այս տողերը, պարզապես հանեք դրանք մեկնաբանությունից):</p>    �_;�<̉f=Fx�  i���T��.�F�_��e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp" alt="" /></p>    �7�=�������d�bA����������J+�e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp" alt="" /></p>    �tu����9� 4�����I0]о!���P��   
<p>Եթե ​​ձեր տիրույթի անվան սերվերը չի աջակցում SPF տիպին, պարզապես ավելացրեք TXT տեսակի գրառումը:</p>    ���Uk��vvJfQ���N��W�1�!�
dmPP  
<p>Կազմաձևման ավարտից հետո դուք կարող եք օգտագործել այլ էլ․ հասցեներ՝ նամակներ ուղարկելու համար <code>i@user.tax</code> և <code>any123@user.tax</code> ՝ տեսնելու, թե արդյոք կարող եք նամակներ ստանալ Gmail-ում:</p>    ���}��YLrT���ݥ�ܗr��9՜	�   
<p><code>grep chasquid /var/log/syslog</code> կամ <code>journalctl -xeu chasquid</code> կարող է դիտել սխալների գրանցամատյանը:</p>    �@Ә��S�A��u�q&� �v�,*sgH��e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp" alt="" /></p>    �j�v$�k�C-��Bݦ��R�4��a??���>�   
<p>Այցելեք <a href="https://mail.google.com/mail/u/1/#settings/accounts">https://mail.google.com/mail/u/1/#settings/accounts</a> և սեղմեք «Ավելացնել այլ էլ․ հասցե»:</p>    �]�F�%�Y"�����_P�0����[M��Ke   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp" alt="" /></p>    ڜ� ��~?dЬ�^p"�}�y�43�	����i   
<p>Եթե ​​ոչ, ստուգեք chasquid log-ը ( <code>grep chasquid /var/log/syslog</code> ):</p>    �0�F�b�����[6D�������s�
��e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp" alt="" /></p>    ߮�B�D�J�%���]�^�P�����f��6   
<p>խմբագրել <code>/etc/sysctl.conf</code></p>    ��2���Ԟ3E,|��y���V��t��ߔ"9���s   
<p>Մեկ սեղմումով տեղադրելու համար գործարկեք հետևյալ հրամանը.</p>    �^���~�%�t�4	�@7�K�j w"��W�A   
<img 6>
<p>Կարող է ավելացնել ուղարկող</p>    ���^��PK��s��7<U���;w�Gf�=���e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp" alt="" /></p>    ��N>�?7]u����v_XI�[�s��k�o�   
<p>Այնուհետև գործարկեք <code>systemctl restart chasquid</code> ծառայությունը վերագործարկելու համար:</p>    �>���u$R���Bu>��T��JO/S(7���   
<p>Գտեք ձեր DNS մատակարարին <a href="https://github.com/acmesh-official/acme.sh/wiki/dnsapi">acme.sh dnsapi-</a> ից, խմբագրեք <code>conf/conf.sh</code> :</p>    �,NN��DR����Dz?s��F��5ظqζ�   
<p>Ստորև մենք քայլ առ քայլ ցույց ենք տալիս, թե ինչպես կառուցել մեր սեփական փոստային սերվերը:</p>    �ꁶn��w޶�ѭD����C�C)�@��B7��G   
<img 5>
<h2>Ավելացնել ուղարկող</h2>
<p>վազել</p>    �"���gb�㪼+�lJZ�ۃ�]O;��QO�   
<ul>
<li>օգտվող՝ SMTP օգտվողի անուն</li>
<li>անցում. SMTP գաղտնաբառ</li>
<li>հասցեատիրոջը</li>
</ul>
<p>Դուք կարող եք ուղարկել փորձնական նամակ:</p>    ���]�D(#�����!v��8ꀂ�>Z�@L%r  
<p>Այն ստուգում է փոստ ուղարկողի ինքնությունը՝ ստուգելով, որ ուղարկողի IP հասցեն համընկնում է տիրույթի անվանման DNS գրառումների հետ, որը նա պնդում է, որ խարդախներին թույլ չի տալիս կեղծ նամակներ ուղարկել:</p>    ��:���颕�m�ç��?n���M蠘Ce   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp" alt="" /></p>    ��^�/f��`���M-}��zú���o($F�p��   
<h2>Խմբագրել chasquid.conf-ի հոսթի անունը</h2>
<p>Փոփոխեք <code>conf/chasquid/chasquid.conf</code> հակառակ տիրույթի անվան արժեքին:</p>    ����k<�I�m3i��K�O�*Oy�;L��e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp" alt="" /></p>    �[��r.p/܅ ��Q�	��G"2�/��   
<h3>[Ըստ ցանկության] Նախաձեռնել զարգացման միջավայրը</h3>
<p>Այս քայլը կամընտիր է:</p>