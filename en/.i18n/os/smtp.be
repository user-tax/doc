|       �pD�l�8�ws�8(L佌�ev���p����  
<ul>
<li>0: справаздача аб выніках праверкі для ўсіх паведамленняў</li>
<li>1: паведамляць толькі пра паведамленні, якія не прайшлі праверку</li>
<li>d: паведамляць толькі пра памылкі праверкі даменнага імя</li>
<li>s: паведамляць толькі аб збоях праверкі SPF</li>
<li>l: паведамляць толькі аб збоях праверкі DKIM</li>
</ul>
<h3>руа і руф</h3>
<ul>
<li>rua (URI справаздач для зводных справаздач): адрас электроннай пошты для атрымання зводных справаздач</li>
<li>ruf (URI справаздачнасці для крыміналістычных справаздач): адрас электроннай пошты для атрымання падрабязных справаздач</li>
</ul>
<h2>Дадайце запісы MX для перасылкі электронных лістоў у Google Mail</h2>
<p>Паколькі я не мог знайсці бясплатную карпаратыўную паштовую скрыню, якая падтрымлівае ўніверсальныя адрасы (Catch-All, можа атрымліваць любыя электронныя лісты, адпраўленыя на гэтае даменнае імя, без абмежаванняў на прэфіксы), я выкарыстаў chasquid для перанакіравання ўсіх лістоў у маю паштовую скрыню Gmail.</p>    Z�I�`O���J��<�ۜc(�ƀ�0��'��   
<p>У наступным я вазьму VPS Contabo ў якасці прыкладу, каб прадэманстраваць, як стварыць свой уласны паштовы сервер.</p>    6���ZE�k߀P���T���Ӡ��y�S�  
<h2>Наладзьце подпіс электроннай пошты DKIM</h2>
<p>DKIM выкарыстоўваецца для адпраўкі подпісаў электроннай пошты, каб прадухіліць расцэньванне лістоў як спаму.</p>    �f=��9M����,��ƿ�wɨ"&aj�l��S   
<p><code>v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all</code></p>    	z������	9�#.��Oœ�2J@u.�e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp" alt="" /></p>    
 	_��8���*��7Jm�j�7��.X�e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp" alt="" /></p>    v��H��v-Hv����W�;�|��Kn-���E   
<p>Спачатку стварыце прыватны склад</p>    �|=�.��2�^��w�j6��}Y'�Ϩ$�pe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp" alt="" /></p>    B��$��eb��u��`V��?e���4�)  
<p>Звярніце ўвагу, што тут у мяне ёсць <code>include:_spf.google.com</code> , таму што пазней я наладжу <code>i@user.tax</code> у якасці адраса адпраўкі ў паштовай скрыні Google.</p>    E�����<��ܶ9��?���<lJ�gP��;��e  
<p><code>*</code> паказвае ўсе электронныя лісты, <code>i</code> - прэфікс адраса электроннай пошты карыстальніка-адпраўшчыка, створанага вышэй. Для перасылкі пошты кожны карыстальнік павінен дадаць радок.</p>    ���+&�gI��E��:-�TE�R���^�DG�ض�t  
<p>Калі вы вылучыце ў якасці валюты пакупкі еўра, цана будзе танней (сервер з 8 ГБ памяці і 4 працэсарамі каштуе каля 529 юаняў у год, а першапачатковая плата за ўстаноўку бясплатная на працягу аднаго года).</p>    �Z����x�2�+ճGh��RA2�4���C|  
<h2>Адпраўце электронны ліст на i@user.tax з Google Mail</h2>
<p>Пасля таго, як Google Mail атрымае ліст, цалкам натуральна пажадаць адказаць <code>i@user.tax</code> замест i.user.tax@gmail.com.</p>    �t���NJ�` ������06@��Uѭ�3�  
<img 0>
<p>Кітайскія карыстальнікі, выкарыстоўвайце замест гэтага наступную каманду, і мова, гадзінны пояс і г.д. будуць устаноўлены аўтаматычна.</p>    ���O�P����v��g�� ��!t�D���lbe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp" alt="" /></p>    $�@�w���N�?��4�i�{�P����}m�   
<h2>Адпраўце тэставы электронны ліст, каб праверыць, ці паспяховая канфігурацыя</h2>
<p>Увядзіце <code>ops/chasquid</code></p>    ���� �ۆ��c:[>$������S�K�ض���   
<img 4>
<p>Шлях для згенераванага сертыфіката - нешта накшталт <code>/mnt/www/.acme.sh/123.com_ecc。</code></p>    %|����lG���;ت�{��Ǽ�E7 ��fe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp" alt="" /></p>    &��9? ?��������h���EN���|�̦y   
<h2>Канфігурацыя сістэмы Ubuntu</h2>
<p>Аперацыйная сістэма тут Ubuntu 22.04</p>    'u�-�-��:h*���*�2zg���@��U�   
<h3>Пераканайцеся, што пароль усталяваны правільна</h3>
<img 7>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp" alt="" /></p>    '����_yU�j������!�������2��6  
<p>Звычайна выкарыстоўваюцца публічныя воблакі заблакавалі гэтыя парты па змаўчанні, і іх можна адкрыць, выдаўшы працоўны заказ, але ў рэшце рэшт гэта вельмі клапотна.</p>    (��2�T�G��U�=�c5������#d��   
<p>Затым дадайце запіс MX (я паказваю непасрэдна на адрас зваротнага даменнага імя тут, як паказана ў першым радку на малюнку ніжэй).</p>    )?U9ؾ1�a�'�R0]�*�Jo���v��21�   
<img 1>
<h3>Contabo дазваляе IPV6</h3>
<p>Уключыце IPV6, каб SMTP таксама мог адпраўляць электронныя лісты з адрасамі IPV6.</p>    )Q���VmV;u�����ͽ8B�	
L| �z   
    *&�]p/�<WO�-�I�\��B�x�9#�!�   
<p>Рэдагаваць <code>conf/chasquid/domains/user.tax/aliases</code> , усталяваць паштовую скрыню пераадрасацыі</p>    ,'� �/a��Lޣ�Xf{����0��K� �J   
<p>Змяніце або дадайце наступныя радкі</p>    2�5ǜO\�=��z-������d�����*oFP�   
<p>Змест такі</p>    2�I*<kucX1Nկ��*�VFr�S�;dJޱx��   
<p>Пасля ўстаноўкі зваротнага даменнага імя не забудзьцеся наладзіць прамое дазвол даменных імёнаў ipv4 і ipv6 на сервер.</p>    5�-��ϸ�'�
W *k2zfF7�lX^�&�GJ��   
<p>Такім чынам, мы завяршылі стварэнне паштовага сервера SMTP і ў той жа час выкарыстоўваем Google Mail для адпраўкі і атрымання лістоў.</p>    6%p4��g5�+f���m.�i\�Y�9x��TA R   
<p>Затым націсніце «Паказаць зыходны ліст»</p>    63�g�:��X���C@�Q����Doe:�<:�H�{m   
<img 8>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp" alt="" /></p>    9ڕ�O/;��9��cƷ��v>�G���cP�-�f   
<p>Стан нармальнай працы, як паказана на малюнку ніжэй</p>    =E�f�o���I��������F,��x�>?��   
<p>Усталяванне зваротнага даменнага імя можа прадухіліць ідэнтыфікацыю электронных лістоў як спаму.</p>    ?O�-B���-���[,-���Q�a�iT#@o�m0   
<p><code>v=spf1 a:smtp.user.tax ~all</code></p>    A����T�3|7c�b�ve�B�"_�
��r�e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp" alt="" /></p>    F�Ra9/]���I^��@i������0G���   
<p>Мы выкарыстоўваем <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> для стварэння сертыфікатаў.</p>    G|Tۍ�։0�a�����g��$��;��jC  <h1>Стварыце свой уласны сервер адпраўкі пошты SMTP</h1>
<h2>прэамбула</h2>
<p>SMTP можа наўпрост купляць паслугі ў воблачных пастаўшчыкоў, напрыклад:</p>    M�XOqh�N_jw�W�y6o�'�E(!:����   
<p>Пасля паспяховага выканання каманды вам будзе прапанавана ўсталяваць запіс DKIM (як паказана ніжэй).</p>    Q<qV���dB=6U����v�=��M�w\TMee   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp" alt="" /></p>    U�3i�O��捣~�z����z?�x.���]e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp" alt="" /></p>    V	�����+t���^�j��s���}�HY'�n  
<p>Калі пошта атрымана, які прымае сервер будзе выконваць зваротны аналіз даменнага імя на IP-адрасе сервера-адпраўшчыка, каб пацвердзіць, ці мае сервер-адпраўшчык сапраўднае зваротнае даменнае імя.</p>    W0�!�'{�'��[p���7Xr%�l��������iH   
<h2>Стварыце сервер SMTP з дапамогай chasquid</h2>
<p><a href="https://github.com/albertito/chasquid">chasquid</a> - гэта SMTP-сервер з адкрытым зыходным кодам, напісаны на мове Go.</p>    W�SJ�۸Ͽ��mA�C}��\̮r�PNo�+v3M   
<p>Значэнне кожнага параметру наступнае</p>    X[����
ҋa��e^��[=�e�A]d}~0���   
<p>Пры размяшчэнні замовы адзначце <code>prefer AMD</code> , і сервер з працэсарам AMD будзе мець лепшую прадукцыйнасць.</p>    X���߶g=����{���������d��5/p�   
<p>Пасля паспяховай канфігурацыі вы можаце выкарыстоўваць <code>curl 6.ipw.cn</code> для прагляду ipv6-адраса вашай знешняй сеткі.</p>    Yn��B_��W9�9�nJGYV� �Y=@���Gb���   
<h2>Канфігурацыя DNS DMARC</h2>
<p>DMARC - гэта абрэвіятура (праверка сапраўднасці паведамленняў на аснове дамена, справаздачнасць і адпаведнасць).</p>    `Q8Y�7��,L���(X��Ʋ&D	�����=  
<p>У якасці замены для старажытных праграм паштовага сервера, такіх як Postfix і Sendmail, chasquid больш просты і лёгкі ў выкарыстанні, а таксама яго лягчэй для другаснай распрацоўкі.</p>    `�G�4�Xj����}�8�a����F��ay$�]�R   
<p>Тут я рэкамендую <a href="https://contabo.com">Contabo</a> .</p>    a�# Rr�ͥ�c���*��>�As1�>p�)}���?   
<p>Структура каталога наступная:</p>    e}�����e˃�h��_���Y-�
>��َb^U��   
<h3>DKIM</h3>
<p>Як паказана на малюнку ніжэй, зыходная старонка пошты Gmail адлюстроўвае DKIM, што азначае, што канфігурацыя DKIM прайшла паспяхова.</p>    g�0�Q�-k-B�����j-��㻒���~On�;   
<p>Затым перазапусціце сервер.</p>    j�Q����mK�����W��&?P�!�8�lh�   
<h2>Прагляд стану абслугоўвання і часопісаў</h2>
<p><code>systemctl status chasquid</code> Прагляд стану службы.</p>    kr
5�����4[82O�%��,�J	wQe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp" alt="" /></p>    m��O�fFȟ�%�~,b�Sn�37}���1B�{�   
<h2>Выбар сервера</h2>
<p>Для ўласнага сервера SMTP патрабуецца публічны IP з адкрытымі партамі 25, 456 і 587.</p>    pE�����,�����@��*M#��h���)�   
<p>Увядзіце ops сховішча канфігурацыі, запусціце <code>./ssl.sh</code> , і папка <code>conf</code> будзе створана ў верхнім каталогу.</p>    t�̏s�@7��B� V���v�ݯ?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp" alt="" /></p>    y�	��U,Ճ�&�;ks]�f����-BuW���   
<p>Затым запусціце <code>./ssl.sh 123.com</code> для стварэння сертыфікатаў <code>123.com</code> і <code>*.123.com</code> для вашага даменнага імя.</p>    y�o��y�|�uভ�!�O���b�Vʕ_'�z���   
<p>Пасля дадання карыстальніка <code>chasquid/domains/user.tax/users</code> будзе абноўлены, не забудзьце адправіць яго на склад.</p>    zEz�k�.'ۆ�qo��CӚx� ��mL!vYe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp" alt="" /></p>    zI�c�H���lbSi̕͡9A�ԣ������#e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp" alt="" /></p>    |�L�65x��������:80��=%��
P1 Ӥ   
<p>Напрыклад, я раблю рэзервовую копію тэчкі conf у свой уласны працэс github наступным чынам</p>    #���Z�!?{)�#*mm��Ӣ�!S�<����
  
<p>Ён выкарыстоўваецца для фіксацыі адмоў SPF (магчыма, выкліканых памылкамі канфігурацыі, або нехта іншы прыкідваецца вамі, каб рассылаць спам).</p>    �n��� H+�B68�;"���)�S��¼̝��   
<p>Contabo - хостынг-правайдэр, які базуецца ў Мюнхене, Германія, заснаваны ў 2003 годзе і мае вельмі канкурэнтаздольныя цэны.</p>    ��w������B�EG����%>��h���MnM�f   
<p>Проста дадайце запіс TXT у свой DNS (як паказана ніжэй).</p>    �ϱ@W�a�t#�/d����u�D�v��Y��e0/  
<h3>Стандартнае шыфраванне TLS</h3>
<p>Як паказана на малюнку ніжэй, ёсць гэты маленькі замак, які азначае, што сертыфікат SSL быў паспяхова ўключаны.</p>    �>�vH��o�� �Ap
p���f�e"��ve   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp" alt="" /></p>    �sO�s�o�NR��Ac�G8��>�6cǈ(w��   
<p>Даданне запісаў SPF можа максімальна прадухіліць ідэнтыфікацыю электронных лістоў як спаму.</p>    � >v�Ii�J��[F)��F�f�B0O���j  
<ul>
<li>none: ніякіх дзеянняў не прадпрымаецца, толькі вынік праверкі вяртаецца адпраўніку праз механізм паведамлення па электроннай пошце.</li>
<li>Каранцін: змесціце ліст, які не прайшоў праверку, у тэчку са спамам, але не будзе адхіляць ліст непасрэдна.</li>
<li>адхіліць: Непасрэдна адхіляць электронныя лісты, якія не прайшлі праверку.</li>
</ul>
<h3>fo (параметры няўдач)</h3>
<p>Вызначае аб'ём інфармацыі, які вяртаецца механізмам справаздачнасці. Яму можна задаць адно з наступных значэнняў:</p>    �^�k� A��]t������W�Ty�Ubsw��  
<ul>
<li><a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html">Amazon SES SMTP</a></li>
<li><a href="https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods">Алі воблачная электронная пошта</a></li>
</ul>
<p>Вы таксама можаце стварыць свой уласны паштовы сервер - неабмежаваная адпраўка, нізкі агульны кошт.</p>    �)��~z�uE�?�R3Q�������e�X�2ϖ*:  
<h3>p (Палітыка)</h3>
<p>Паказвае, як апрацоўваць электронныя лісты, якія не прайшлі праверку SPF (Sender Policy Framework) або DKIM (DomainKeys Identified Mail). Параметр p можа мець адно з трох значэнняў:</p>    �i��
0�]�P����u���)R��甄A+��e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp" alt="" /></p>    ��|�T�#]1g�8D��N�������>�Z��Ǒ�   
<h2>Зваротная канфігурацыя даменнага імя</h2>
<p>Адваротнае даменнае імя дазваляе пераўтварыць IP-адрас у адпаведнае даменнае імя.</p>    ��,3��.o�".���@-�"�:�j�*��H{��   
<p>Наведайце <a href="https://my.contabo.com/rdns">https://my.contabo.com/rdns</a> і наладзьце, як паказана ніжэй</p>    ����8���AіKO�t.�!TN߂A�A��hv!  
<p>Для зручнасці я змясціў усталяванне і канфігурацыю сістэмы праграмнага забеспячэння ubuntu на <a href="https://github.com/user-tax-dev/os/tree/main/ubuntu">github.com/user-tax-dev/os/tree/main/ubuntu</a> .</p>    �ֲ�b�_[��X*:(�9���� Gઠ�0"�o  
<p>Калі сервер-адпраўшчык не мае зваротнага даменнага імя або калі зваротнае даменнае імя не супадае з IP-адрасам сервера-адпраўшчыка, сервер-адпраўшчык можа распазнаць ліст як спам або адхіліць яго.</p>    �+J��sun�ž${�o7�t'�=s	^B�IH   
<img 9>
<p>Значэнне параметраў наступнае</p>    �ڨ`�e�-���9aQw�>��z��6�j�T!�j  
<p>Першы запуск аўтаматычна ўсталюе <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> і дадасць запланаванае заданне для аўтаматычнага абнаўлення. <code>crontab -l</code> можа бачыць, што ёсць такі радок наступным чынам.</p>    ��'U�V,�5`s�D%�y��A�W]���|\�S  
<h2>Кланіраваць ops сховішча канфігурацыі</h2>
<img 3>
<h2>Стварыце бясплатны сертыфікат SSL для вашага даменнага імя</h2>
<p>Для адпраўкі пошты патрабуецца сертыфікат SSL для шыфравання і подпісу.</p>    �y5M<r�[Yd�_ţ1B��P����ڥva�   
<p>Запусціце <code>./chasquid/init.sh 123.com</code> будзе ўсталяваны аўтаматычна ў адзін клік (заменіце 123.com даменным імем адпраўкі).</p>    ��Z\����Ƥu�bz��D�a����p'��F�   
<p>acme.sh - аўтаматызаваны інструмент подпісу сертыфікатаў з адкрытым зыходным кодам,</p>    �\Kmڔ&EY�7�(mx�u��b�L�5�d  
<p>Абнаўленне сертыфіката выкліча сцэнар <code>conf/reload/123.com.sh</code> , адрэдагуйце гэты сцэнар, вы можаце дадаць такія каманды, як <code>nginx -s reload</code> , каб абнавіць кэш сертыфікатаў звязаных прыкладанняў.</p>    �e���[e��@��uO�����%�2�	zR�   
<p>Нарэшце, яго можна ўсталяваць у якасці адраса адпраўніка па змаўчанні (разам з магчымасцю адказаць з тым жа адрасам).</p>    �y����n�p�b�;�F\{����k7h� 0����   
<img 2>
<p>Працягвайце <a href="https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/">інструкцыю contabo: Даданне падключэння IPv6 да вашага сервера</a></p>    �9Y'�8}ߢ���-�`�2n��
p�Fa$~  
<p>Праверце Received у загалоўку арыгінальнага электроннага ліста, і вы ўбачыце, што адрас адпраўніка IPV6, што азначае, што IPV6 таксама паспяхова наладжаны.</p>    ��<UY����+�F̽^@;��ku����6xe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp" alt="" /></p>    �����c��Y���!��P��w(l����5��2��]  
<p>Калі сервер на ssh адлюстроўвае <code>Welcome to TinyCore 13!</code> (як паказана на малюнку ніжэй), гэта азначае, што сістэма яшчэ не ўстаноўлена. Адключыце ssh і пачакайце некалькі хвілін, каб увайсці зноў.</p>    ��ȫ�[k'y^�X��_���J��ݵ�*#T�D�   
<p><strong>Калі ў вас ёсць уласны платны службовы паштовую скрыню, калі ласка, не змяняйце MX і прапусціце гэты крок.</strong></p>    ��̟��q9JW�ڞG�>��C�
fsHa�j̨   
<p>Затым увядзіце код пацверджання, атрыманы па электроннай пошце, на якую была пераслана.</p>    �Ό}T)�>E=�c�-��v�its����Pބ��   
<p>Я рэкамендую купляць у хоста, у якога гэтыя парты адкрыты і падтрымлівае наладжванне зваротных даменных імёнаў.</p>    �U���!m)f0��uΣG�o7�HVtS�����e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp" alt="" /></p>    ���m� e7]Lo���_b��C%��>���X��   
<h2>Рэзервовае капіраванне conf у рэпазітар git</h2>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp" alt="" /></p>    �?�Y��'�Ȏ�)��̶A/;/���;��:`ŗ�   
<p>Рэкамендуецца выкарыстоўваць Gmail для атрымання тэставых электронных лістоў, каб праверыць, ці паспяхова выкананы канфігурацыі.</p>    �=���G�JzI>ʥ�'���`��P`F�Ӯ��9   
<p>Дадаць запіс TXT <code>_dmarc</code> ,</p>    ��Я�ߠuOgr��#Y(�\�3�9nֿ�z��   
<p>Калі з'явіцца <code>Welcome to Ubuntu 22.04.1 LTS</code> , ініцыялізацыя завершана, і вы можаце працягнуць наступныя дзеянні.</p>    ���*Ao"`�,����Y��U�]SkӶp���1$  
<h2>DNS дадаць запіс SPF</h2>
<p>SPF (Sender Policy Framework) - гэта тэхналогія праверкі электроннай пошты, якая выкарыстоўваецца для прадухілення махлярства электроннай пошты.</p>    �;2��j�6���C��5=�&|�_x����;�b�-   
<p>SPF для <code>_spf.user.tax</code></p>    �O�O��顾��l��s��l�7�6�{�z�~   
<p>потым бегчы</p>    �Q�,�ir����u���d�wt;0�ZU�,X�M�U   
<p>Увайдзіце ў каталог conf і адпраўце на склад</p>    �,�7��"�Ku����2&un�Ir��]_#  
<p>Запусціце <code>direnv allow</code> , каб усталяваць залежнасці (direnv быў усталяваны ў папярэднім працэсе ініцыялізацыі адной клавішай, і ў абалонку быў дададзены хук)</p>    �jV����ǔ���5��=L���c��t�Vk   
<p>Напрыклад, SPF для <code>user.tax</code> выглядае наступным чынам</p>    ƃ��0zn1�� ��BA��`>�k-�,\ZS  
<p>Адрэдагуйце <code>/etc/netplan/01-netcfg.yaml</code> , дадайце некалькі радкоў, як паказана на малюнку ніжэй (канфігурацыйны файл Contabo VPS па змаўчанні ўжо змяшчае гэтыя радкі, проста раскаментуйце іх).</p>    �_;�<̉f=Fx�  i���T��.�F�_��e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp" alt="" /></p>    �7�=�������d�bA����������J+�e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp" alt="" /></p>    �tu����9� 4�����I0]о!���P��   
<p>Калі ваш сервер даменных імёнаў не падтрымлівае тып SPF, проста дадайце запіс тыпу TXT.</p>    ���Uk��vvJfQ���N��W�1�!�
dmP�  
<p>Пасля завяршэння канфігурацыі вы можаце выкарыстоўваць іншыя адрасы электроннай пошты для адпраўкі электронных лістоў на <code>i@user.tax</code> і <code>any123@user.tax</code> , каб даведацца, ці можаце вы атрымліваць электронныя лісты ў Gmail.</p>    ���}��YLrT���ݥ�ܗr��9՜	�   
<p><code>grep chasquid /var/log/syslog</code> або <code>journalctl -xeu chasquid</code> можа праглядаць журнал памылак.</p>    �@Ә��S�A��u�q&� �v�,*sgH��e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp" alt="" /></p>    �j�v$�k�C-��Bݦ��R�4��a??���>�   
<p>Наведайце <a href="https://mail.google.com/mail/u/1/#settings/accounts">https://mail.google.com/mail/u/1/#settings/accounts</a> і націсніце «Дадаць іншы адрас электроннай пошты».</p>    �]�F�%�Y"�����_P�0����[M��Ke   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp" alt="" /></p>    ڜ� ��~?dЬ�^p"�}�y�43�	����q   
<p>Калі няма, праверце журнал chasquid ( <code>grep chasquid /var/log/syslog</code> ).</p>    �0�F�b�����[6D�������s�
��e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp" alt="" /></p>    ߮�B�D�J�%���]�^�P�����f��:   
<p>рэдагаваць <code>/etc/sysctl.conf</code></p>    ��2���Ԟ3E,|��y���V��t��ߔ"9���q   
<p>Выканайце наступную каманду, каб усталяваць у адзін клік.</p>    �^���~�%�t�4	�@7�K�j w"��W�<   
<img 6>
<p>Можна дадаць адпраўніка</p>    ���^��PK��s��7<U���;w�Gf�=���e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp" alt="" /></p>    ��N>�?7]u����v_XI�[�s��k�o   
<p>Затым запусціце <code>systemctl restart chasquid</code> , каб перазапусціць службу.</p>    �>���u$R���Bu>��T��JO/S(7���   
<p>Знайдзіце свайго DNS-правайдэра ў <a href="https://github.com/acmesh-official/acme.sh/wiki/dnsapi">acme.sh dnsapi</a> , адрэдагуйце <code>conf/conf.sh</code> .</p>    �,NN��DR����Dz?s��F��5ظqζ�   
<p>Ніжэй мы крок за крокам дэманструем, як стварыць уласны паштовы сервер.</p>    �ꁶn��w޶�ѭD����C�C)�@��B7��E   
<img 5>
<h2>Дадаць адпраўніка</h2>
<p>бегчы</p>    �"���gb�㪼+�lJZ�ۃ�]O;��QO�   
<ul>
<li>карыстальнік: імя карыстальніка SMTP</li>
<li>pass: пароль SMTP</li>
<li>каму: атрымальнік</li>
</ul>
<p>Вы можаце адправіць тэставы ліст.</p>    ���]�D(#�����!v��8ꀂ�>Z�@L%Y  
<p>Ён правярае асобу адпраўніка пошты, правяраючы, што IP-адрас адпраўніка супадае з запісамі DNS даменнага імя, за якое ён сябе выдае, што прадухіляе ашуканцаў ад адпраўкі фальшывых лістоў.</p>    ��:���颕�m�ç��?n���M蠘Ce   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp" alt="" /></p>    ��^�/f��`���M-}��zú���o($F�p��   
<h2>Адрэдагуйце імя хаста chasquid.conf</h2>
<p>Змяніце <code>conf/chasquid/chasquid.conf</code> да значэння адваротнага даменнага імя.</p>    ����k<�I�m3i��K�O�*Oy�;L��e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp" alt="" /></p>    �[��r.p/܅ ��Q�	��G"2�/��   
<h3>[Дадаткова] Ініцыялізаваць асяроддзе распрацоўкі</h3>
<p>Гэты крок неабавязковы.</p>