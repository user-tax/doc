|       �pD�l�8�ws�8(L佌�ev���p���E  
<ul>
<li>0: Kpesa nsonaazụ nkwado maka ozi niile</li>
<li>1: Naanị kọọ ozi na-ada nkwenye</li>
<li>d: Naanị kọọ ọdịda nkwenye aha ngalaba</li>
<li>s: naanị kọwapụta ọdịda nkwenye SPF</li>
<li>l: Naanị gosi ọdịda nkwenye DKIM</li>
</ul>
<h3>rua &amp; ruf</h3>
<ul>
<li>rua (URI na-akọ maka mkpesa mkpokọta): Adreesị ozi-e maka ịnata akụkọ ekpokọtara</li>
<li>ruf (URI na-akọ maka akụkọ gbasara amụma): adreesị ozi-e iji nweta akụkọ zuru ezu</li>
</ul>
<h2>Tinye ndekọ MX iji zipu ozi-e na Google Mail</h2>
<p>N'ihi na enweghị m ike ịchọta igbe ozi ụlọ ọrụ efu na-akwado adreesị ụwa niile (Catch-All, nwere ike ịnweta ozi-e ọ bụla ezigara na ngalaba aha a, na-enweghị mgbochi na prefixes), ejiri m chasquid ziga ozi-e niile na igbe ozi Gmail m.</p>    Z�I�`O���J��<�ۜc(�ƀ�0��'�x   
<p>Na ndị na-esonụ, m ga-ewere Contabo's VPS dị ka ihe atụ iji gosi otú e si wuo gị onwe gị nkesa ozi.</p>    6���ZE�k߀P���T���Ӡ��y�S�   
<h2>Hazie mbinye aka email DKIM</h2>
<p>A na-eji DKIM zipu mbinye aka email iji gbochie a na-emeso akwụkwọ ozi dị ka spam.</p>    �f=��9M����,��ƿ�wɨ"&aj�l��S   
<p><code>v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all</code></p>    	z������	9�#.��Oœ�2J@u.�e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp" alt="" /></p>    
 	_��8���*��7Jm�j�7��.X�e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp" alt="" /></p>    v��H��v-Hv����W�;�|��Kn-���<   
<p>Buru ụzọ mepụta ụlọ nkwakọba ihe nkeonwe</p>    �|=�.��2�^��w�j6��}Y'�Ϩ$�pe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp" alt="" /></p>    B��$��eb��u��`V��?e���4�)�   
<p>Rịba ama na m nwere <code>include:_spf.google.com</code> ebe a, n'ihi na m ga-ahazi <code>i@user.tax</code> dị ka adreesị izipu na igbe ozi Google ma emechaa.</p>    E�����<��ܶ9��?���<lJ�gP��;���   
<p><code>*</code> na-egosi ozi-e niile, a bụ <code>i</code> prefix adreesị ozi-e nke onye na-ezipụ ozi emepụtara n'elu. Iji zipu ozi, onye ọrụ ọ bụla kwesịrị ịgbakwunye ahịrị.</p>    ���+&�gI��E��:-�TE�R���^�DG�ض��   
<p>Ọ bụrụ na ịhọrọ Euro dị ka ego ịzụrụ, ọnụahịa ahụ ga-adị ọnụ ala (ihe nkesa nwere ebe nchekwa 8GB na 4 CPUs na-efu ihe dị ka yuan 529 kwa afọ, ego ntinye mbụ bụ n'efu maka otu afọ).</p>    �Z����x�2�+ճGh��RA2�4���C|�   
<h2>Jiri Google Mail ziga email na i@user.tax</h2>
<p>Mgbe Google Mail natachara ozi ahụ, ọ bụ ihe dị mma ịchọrọ iji <code>i@user.tax</code> zaghachi kama i.user.tax@gmail.com.</p>    �t���NJ�` ������06@��Uѭ�3�}   
<img 0>
<p>Ndị ọrụ China, biko jiri iwu na-esonụ kama, a ga-edozi asụsụ, mpaghara oge, wdg na-akpaghị aka.</p>    ���O�P����v��g�� ��!t�D���lbe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp" alt="" /></p>    $�@�w���N�?��4�i�{�P����}mr   
<h2>Zipụ ozi-e nwale ka ịlele ma nhazi ahụ ọ na-aga nke ọma</h2>
<p>Tinye <code>ops/chasquid</code></p>    ���� �ۆ��c:[>$������S�K�ض��p   
<img 4>
<p>Ụzọ maka asambodo emepụtara bụ ihe dị ka <code>/mnt/www/.acme.sh/123.com_ecc。</code></p>    %|����lG���;ت�{��Ǽ�E7 ��fe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp" alt="" /></p>    &��9? ?��������h���EN���|�̦W   
<h2>Nhazi sistemụ Ubuntu</h2>
<p>Sistemụ arụmọrụ ebe a bụ Ubuntu 22.04</p>    'u�-�-��:h*���*�2zg���@��U�   
<h3>Nyochaa na edobere okwuntughe nke ọma</h3>
<img 7>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp" alt="" /></p>    '����_yU�j������!�������2���   
<p>Igwe ojii nke ọha na eze na-ejikarị egbochila ọdụ ụgbọ mmiri ndị a na ndabara, yana enwere ike imeghe ha site na ịnye usoro ọrụ, mana ọ na-enye nsogbu mgbe niile.</p>    (��2�T�G��U�=�c5������#d��   
<p>Wee tinye ndekọ MX (m na-atụ aka ozugbo na adreesị nke ngalaba aha azụ ebe a, dị ka egosiri na ahịrị mbụ na ọnụ ọgụgụ dị n'okpuru).</p>    )?U9ؾ1�a�'�R0]�*�Jo���v��21r   
<img 1>
<h3>Contabo na-enyere IPV6 aka</h3>
<p>Kwado IPV6 ka SMTP nwekwara ike izipu ozi-e na adreesị IPv6.</p>    )Q���VmV;u�����ͽ8B�	
L| �z   
    *&�]p/�<WO�-�I�\��B�x�9#�!_   
<p>Dezie <code>conf/chasquid/domains/user.tax/aliases</code> , tọọ igbe ozi mbugharị</p>    ,'� �/a��Lޣ�Xf{����0��K� �3   
<p>Gbanwee ma ọ bụ tinye ahịrị ndị a</p>    2�5ǜO\�=��z-������d�����*oFP�#   
<p>Ọdịnaya dị ka ndị a</p>    2�I*<kucX1Nկ��*�VFr�S�;dJޱx�o   
<p>Mgbe mwube reverse ngalaba aha, cheta hazi ebugharị mkpebi nke ngalaba aha ipv4 na ipv6 na ihe nkesa.</p>    5�-��ϸ�'�
W *k2zfF7�lX^�&�GJ�   
<p>N'ụzọ dị otú a, anyị emechala nguzobe nke SMTP ozi nkesa na n'otu oge ahụ na-eji Google Mail izipu na-enweta ozi ịntanetị.</p>    6%p4��g5�+f���m.�i\�Y�9x��TA .   
<p>Wee pịa &quot;Gosi Email izizi&quot;</p>    63�g�:��X���C@�Q����Doe:�<:�H�{m   
<img 8>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp" alt="" /></p>    9ڕ�O/;��9��cƷ��v>�G���cP�-�K   
<p>Ọnọdụ ọrụ nkịtị dị ka egosiri na foto dị n'okpuru</p>    =E�f�o���I��������F,��x�>?��b   
<p>Ịtọba aha ngalaba ọzọ nwere ike igbochi ozi ịntanetị ka amata ya dị ka spam.</p>    ?O�-B���-���[,-���Q�a�iT#@o�m0   
<p><code>v=spf1 a:smtp.user.tax ~all</code></p>    A����T�3|7c�b�ve�B�"_�
��r�e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp" alt="" /></p>    F�Ra9/]���I^��@i������0G��j   
<p>Anyị na-eji <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> iwepụta asambodo.</p>    G|Tۍ�։0�a�����g��$��;��jC�   <h1>Mepụta ihe nkesa ozi SMTP nke gị</h1>
<h2>okwu mmalite</h2>
<p>SMTP nwere ike zụta ọrụ ozugbo n'aka ndị na-ere igwe ojii, dị ka:</p>    M�XOqh�N_jw�W�y6o�'�E(!:����k   
<p>Mgbe iwu ahụ gachara nke ọma, a ga-akpali gị ịtọ ndekọ DKIM (dị ka egosiri n'okpuru).</p>    Q<qV���dB=6U����v�=��M�w\TMee   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp" alt="" /></p>    U�3i�O��捣~�z����z?�x.���]e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp" alt="" /></p>    V	�����+t���^�j��s���}�HY'��   
<p>Mgbe enwetara ozi ahụ, ihe nkesa na-enweta ga-eme nyocha ngalaba aha na adreesị IP nke ihe nkesa na-ezipụ iji gosi ma ihe nkesa na-ezipụ nwere aha ngalaba ntụgharị dị irè.</p>    W0�!�'{�'��[p���7Xr%�l��������iH�   
<h2>Jiri chasquid wuo ihe nkesa SMTP</h2>
<p><a href="https://github.com/albertito/chasquid">chasquid</a> bụ ihe nkesa SMTP mepere emepe edere n'asụsụ Go.</p>    W�SJ�۸Ͽ��mA�C}��\̮r�PNo�+v39   
<p>Ihe njiri mara nke ọ bụla pụtara bụ nke a</p>    X[����
ҋa��e^��[=�e�A]d}~0��s   
<p>Mgbe ị na-enye iwu, okwu <code>prefer AMD</code> , na ihe nkesa nwere AMD CPU ga-arụ ọrụ nke ọma.</p>    X���߶g=����{���������d��5/p~   
<p>Mgbe nhazi ahụ gachara, ị nwere ike iji <code>curl 6.ipw.cn</code> lelee adreesị ipv6 nke netwọk mpụga gị.</p>    Yn��B_��W9�9�nJGYV� �Y=@���Gb��n   
<h2>Nhazi DNS DMARC</h2>
<p>DMARC bụ mbiri nke (Nchọpụta ozi dabere na ngalaba, mkpesa na nkwenye).</p>    `Q8Y�7��,L���(X��Ʋ&D	������   
<p>Dị ka onye nọchiri anya mmemme ihe nkesa ozi oge ochie dị ka Postfix na Sendmail, chasquid dị mfe ma dị mfe iji, ọ dịkwa mfe maka mmepe nke abụọ.</p>    `�G�4�Xj����}�8�a����F��ay$�]�I   
<p>N'ebe a, ana m akwado <a href="https://contabo.com">Contabo</a> .</p>    a�# Rr�ͥ�c���*��>�As1�>p�)}���%   
<p>Nhazi ndekọ aha bụ nke a:</p>    e}�����e˃�h��_���Y-�
>��َb^UĘ   
<h3>DKIM</h3>
<p>Dị ka egosiri na foto dị n'okpuru, Gmail akwụkwọ ozi mbụ gosipụtara DKIM, nke pụtara na nhazi DKIM na-aga nke ọma.</p>    g�0�Q�-k-B�����j-��㻒���~On�2   
<p>Mgbe ahụ malitegharịa ihe nkesa ahụ.</p>    j�Q����mK�����W��&?P�!�8�lhp   
<h2>Lelee ọkwa ọrụ &amp; ndekọ</h2>
<p><code>systemctl status chasquid</code> Lelee ọkwa ọrụ.</p>    kr
5�����4[82O�%��,�J	wQe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp" alt="" /></p>    m��O�fFȟ�%�~,b�Sn�37}���1B�{�   
<h2>Nhọrọ nkesa</h2>
<p>Ihe nkesa SMTP nke kwadoro onwe ya chọrọ IP ọha nwere ọdụ ụgbọ mmiri 25, 456, na 587 mepere emepe.</p>    pE�����,�����@��*M#��h���)~   
<p>Tinye nhazi ụlọ nkwakọba ihe, mee <code>./ssl.sh</code> , a ga-emepụta folda <code>conf</code> na ndekọ elu.</p>    t�̏s�@7��B� V���v�ݯ?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp" alt="" /></p>    y�	��U,Ճ�&�;ks]�f����-BuW��   
<p>Wee na-agba ọsọ <code>./ssl.sh 123.com</code> ka ịmepụta <code>123.com</code> na <code>*.123.com</code> asambodo maka aha ngalaba gị.</p>    y�o��y�|�uভ�!�O���b�Vʕ_'�z��   
<p>Mgbe ịgbakwunye onye ọrụ, <code>chasquid/domains/user.tax/users</code> ga-emelite, cheta idobe ya n'ụlọ nkwakọba ihe.</p>    zEz�k�.'ۆ�qo��CӚx� ��mL!vYe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp" alt="" /></p>    zI�c�H���lbSi̕͡9A�ԣ������#e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp" alt="" /></p>    |�L�65x��������:80��=%��
P1 �^   
<p>Dịka ọmụmaatụ, ana m akwado nchekwa conf na usoro github nke m dị ka ndị a</p>    #���Z�!?{)�#*mm��Ӣ�!S�<����   
<p>A na-eji ya weghara bounces SPF (ikekwe kpatara njehie nhazi, ma ọ bụ onye ọzọ na-eme ka ọ bụrụ na ị na-eziga spam).</p>    �n��� H+�B68�;"���)�S��¼̝�r   
<p>Contabo bụ onye na-eweta nnabata dabere na Munich, Germany, hiwere na 2003 yana ọnụ ahịa asọmpi.</p>    ��w������B�EG����%>��h���MnM�O   
<p>Dị nnọọ tinye a TXT ndekọ gị DNS (dị ka e gosiri n'okpuru).</p>    �ϱ@W�a�t#�/d����u�D�v��Y��e0/�   
<h3>TLS ọkọlọtọ nzuzo</h3>
<p>Dịka egosiri na foto dị n'okpuru, enwere obere mkpọchi a, nke pụtara na ejirila asambodo SSL rụọ ọrụ nke ọma.</p>    �>�vH��o�� �Ap
p���f�e"��ve   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp" alt="" /></p>    �sO�s�o�NR��Ac�G8��>�6cǈ(w�n   
<p>Ịtinye ndekọ SPF nwere ike igbochi ozi ịntanetị ka a mata ya dị ka spam dị ka o kwere mee.</p>    � >v�Ii�J��[F)��F�f�B0O����  
<ul>
<li>Ọ dịghị ihe ọ bụla: Ọ dịghị ihe e mere, naanị nkwenye nkwenye na-enyeghachi onye zitere ya site na usoro mkpesa email.</li>
<li>Kwarantaini: Tinye mail nke na-agafebeghị nkwenye ahụ n'ime folda spam, mana agaghị ajụ mail ozugbo.</li>
<li>jụrụ: Jụ ozugbo ozi-e na-adaghị nkwenye.</li>
</ul>
<h3>maka (Nhọrọ ọdịda)</h3>
<p>Na-akọwapụta ọnụọgụ ozi nke usoro mkpesa weghachiri. Enwere ike ịtọ ya ka ọ bụrụ otu ụkpụrụ ndị a:</p>    �^�k� A��]t������W�Ty�Ubsw�J  
<ul>
<li><a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html">Amazon SES SMTP</a></li>
<li><a href="https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods">Ali ojii email push</a></li>
</ul>
<p>Ị nwekwara ike wuo ihe nkesa ozi gị - enweghị oke nzipu, ọnụ ahịa dị ala.</p>    �)��~z�uE�?�R3Q�������e�X�2ϖ*�   
<h3>p (Iwu)</h3>
<p>Na-egosi otu esi ejikwa ozi-e na-ada SPF (Nhazi amụma ezipụ) ma ọ bụ DKIM (DomainKeys Identified Mail). Enwere ike ịtọ paramita p ka ọ bụrụ otu n'ime ụkpụrụ atọ:</p>    �i��
0�]�P����u���)R��甄A+��e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp" alt="" /></p>    ��|�T�#]1g�8D��N�������>�Z��Ǒ�   
<h2>Weghachite ngalaba aha nhazi</h2>
<p>The reverse ngalaba aha bụ ikwe ka adreesị IP na-edozi ka kwekọrọ na ngalaba aha.</p>    ��,3��.o�".���@-�"�:�j�*��H{�w   
<p>Gaa na <a href="https://my.contabo.com/rdns">https://my.contabo.com/rdns</a> wee hazie dị ka egosiri n'okpuru</p>    ����8���AіKO�t.�!TN߂A�A��hv�   
<p>Maka ịdị mma, etinyere m nrụnye na nhazi usoro nke ubuntu software na <a href="https://github.com/user-tax-dev/os/tree/main/ubuntu">github.com/user-tax-dev/os/tree/main/ubuntu</a> .</p>    �ֲ�b�_[��X*:(�9���� Gઠ�0"�  
<p>Ọ bụrụ na ihe nkesa na-ezipụ enweghị aha ngalaba ntụgharị ma ọ bụ ọ bụrụ na aha ngalaba ahụ adabaghị na adreesị IP nke ihe nkesa na-ezipụ, ihe nkesa na-enweta nwere ike ịmata email ahụ dị ka spam ma ọ bụ jụ ya.</p>    �+J��sun�ž${�o7�t'�=s	^B�I5   
<img 9>
<p>Ihe paramita pụtara dị ka ndị a</p>    �ڨ`�e�-���9aQw�>��z��6�j�T!�  
<p>Nke mbụ na-agba ọsọ ga-arụnye <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> na-akpaghị aka ma gbakwunye ọrụ ahaziri maka mmeghari akpaka. <code>crontab -l</code> nwere ike ịhụ na enwere ahịrị dị ka ndị a.</p>    ��'U�V,�5`s�D%�y��A�W]���|\��   
<h2>Mechie ops nhazi nhazi</h2>
<img 3>
<h2>N'ịwa a free SSL akwụkwọ n'ihi na gị na ngalaba aha</h2>
<p>Izipu ozi chọrọ asambodo SSL maka izo ya ezo na ibinye aka.</p>    �y5M<r�[Yd�_ţ1B��P����ڥva�   
<p>Run <code>./chasquid/init.sh 123.com</code> ga-arụnyere na-akpaghị aka na otu click (dochie 123.com na gị iziga ngalaba aha).</p>    ��Z\����Ƥu�bz��D�a����p'��FR   
<p>acme.sh bụ ngwá ọrụ ntinye akwụkwọ akpaghị aka na-emeghe isi,</p>    �\Kmڔ&EY�7�(mx�u��b�L�5��   
<p>Asambodo ọhụrụ ga-akpọ <code>conf/reload/123.com.sh</code> script, dezie edemede a, ị nwere ike tinye iwu dị ka <code>nginx -s reload</code> iji nweta ume cache akwụkwọ nke ngwa ndị metụtara ya.</p>    �e���[e��@��uO�����%�2�	zR}   
<p>N'ikpeazụ, enwere ike ịtọ ya dị ka adreesị ezipụ nke ndabara (yana nhọrọ iji otu adreesị zaghachi).</p>    �y����n�p�b�;�F\{����k7h� 0���   
<img 2>
<p>Soro <a href="https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/">nkuzi contabo: Ịtinye njikọ IPv6 na nkesa gị</a></p>    �9Y'�8}ߢ���-�`�2n��
p�Fa$~�   
<p>Lelee ihe enwetara na nkụnye eji isi mee nke ozi-e mbụ, ma ị ga-ahụ na adreesị onye zitere bụ IPV6, nke pụtara na ahaziri IPV6 nke ọma.</p>    ��<UY����+�F̽^@;��ku����6xe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp" alt="" /></p>    �����c��Y���!��P��w(l����5��2���   
<p>Ọ bụrụ na ihe nkesa na ssh gosipụtara <code>Welcome to TinyCore 13!</code> (dị ka egosiri na foto dị n'okpuru ebe a), ọ pụtara na arụnyebeghị usoro ahụ. Biko kwụpụ ssh wee chere nkeji ole na ole ka ịbanye ọzọ.</p>    ��ȫ�[k'y^�X��_���J��ݵ�*#T�D�   
<p><strong>Ọ bụrụ na ị nwere igbe ozi azụmahịa a na-akwụ ụgwọ nke gị, biko emezigharịla MX wee mafee nzọụkwụ a.</strong></p>    ��̟��q9JW�ڞG�>��C�
fsHa�j�J   
<p>Mgbe ahụ, tinye koodu nkwenye enwetara site na ozi-e ezigara ya.</p>    �Ό}T)�>E=�c�-��v�its����Pބ�   
<p>Ana m akwado ịzụrụ n'aka onye ọbịa nke nwere ọdụ ụgbọ mmiri ndị a meghere ma na-akwado ịtọ aha ngalaba ntụgharị.</p>    �U���!m)f0��uΣG�o7�HVtS�����e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp" alt="" /></p>    ���m� e7]Lo���_b��C%��>���X��   
<h2>Ndabere conf gaa na ebe nchekwa git</h2>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp" alt="" /></p>    �?�Y��'�Ȏ�)��̶A/;/���;��:`ŗd   
<p>A na-atụ aro ka iji Gmail nweta ozi-e nwale iji lelee ma nhazi ahụ ọ na-aga nke ọma.</p>    �=���G�JzI>ʥ�'���`��P`F�Ӯ��/   
<p>Tinye ndekọ TXT <code>_dmarc</code> ,</p>    ��Я�ߠuOgr��#Y(�\�3�9nֿ�z��   
<p>Mgbe <code>Welcome to Ubuntu 22.04.1 LTS</code> pụtara, mmalite agwụla, ma ị nwere ike ịga n'ihu na usoro ndị a.</p>    ���*Ao"`�,����Y��U�]SkӶp���1   
<h2>DNS tinye ndekọ SPF</h2>
<p>SPF ( Nhazi Amụma nke izipu ) bụ teknụzụ nkwenye email ejiri egbochi wayo email.</p>    �;2��j�6���C��5=�&|�_x����;�b�+   
<p>SPF maka <code>_spf.user.tax</code></p>    �O�O��顾��l��s��l�7�6�{�z�~   
<p>wee gbaa ọsọ</p>    �Q�,�ir����u���d�wt;0�ZU�,X�M�>   
<p>Tinye ndekọ conf wee nyefee n'ụlọ nkwakọba ihe</p>    �,�7��"�Ku����2&un�Ir��]_�   
<p>Gbaa <code>direnv allow</code> ka ịwụnye ịdabere (direnv etinyere na usoro mmalite otu igodo gara aga ma tinye nko na shei)</p>    �jV����ǔ���5��=L���c��t�VG   
<p>Dịka ọmụmaatụ, SPF nke <code>user.tax</code> bụ nke a</p>    ƃ��0zn1�� ��BA��`>�k-�,\Z�   
<p>Dezie <code>/etc/netplan/01-netcfg.yaml</code> , gbakwunye ahịrị ole na ole dị ka egosiri na ọnụ ọgụgụ dị n'okpuru (Contabo VPS faịlụ nhazi nhazi nke nwere ahịrị ndị a, naanị na-ekwupụtaghị ha).</p>    �_;�<̉f=Fx�  i���T��.�F�_��e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp" alt="" /></p>    �7�=�������d�bA����������J+�e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp" alt="" /></p>    �tu����9� 4�����I0]о!���P�|   
<p>Ọ bụrụ na gị na ngalaba aha nkesa na-adịghị akwado SPF ụdị, dị nnọọ tinye TXT ụdị ndekọ.</p>    ���Uk��vvJfQ���N��W�1�!�
dmP�   
<p>Mgbe nhazi ahụ mechara, ị nwere ike iji adreesị ozi-e ndị ọzọ iji zipu ozi-e na <code>i@user.tax</code> na <code>any123@user.tax</code> iji hụ ma ị nwere ike ịnweta ozi-e na Gmail.</p>    ���}��YLrT���ݥ�ܗr��9՜	�   
<p><code>grep chasquid /var/log/syslog</code> ma ọ bụ <code>journalctl -xeu chasquid</code> nwere ike ịlele ndekọ njehie.</p>    �@Ә��S�A��u�q&� �v�,*sgH��e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp" alt="" /></p>    �j�v$�k�C-��Bݦ��R�4��a??���>�   
<p>Gaa na <a href="https://mail.google.com/mail/u/1/#settings/accounts">https://mail.google.com/mail/u/1/#settings/accounts</a> wee pịa &quot;Tinye adreesị ozi-e ọzọ&quot;.</p>    �]�F�%�Y"�����_P�0����[M��Ke   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp" alt="" /></p>    ڜ� ��~?dЬ�^p"�}�y�43�	����m   
<p>Ọ bụrụ na ọ bụghị, lelee ndekọ chasquid ( <code>grep chasquid /var/log/syslog</code> ).</p>    �0�F�b�����[6D�������s�
��e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp" alt="" /></p>    ߮�B�D�J�%���]�^�P�����f��+   
<p>dezie <code>/etc/sysctl.conf</code></p>    ��2���Ԟ3E,|��y���V��t��ߔ"9���7   
<p>Gbaa iwu na-esonụ ka ịwụnye na otu pịa.</p>    �^���~�%�t�4	�@7�K�j w"��W�7   
<img 6>
<p>Enwere ike ịgbakwunye onye na-ezipụ</p>    ���^��PK��s��7<U���;w�Gf�=���e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp" alt="" /></p>    ��N>�?7]u����v_XI�[�s��k�oZ   
<p>Wee mee <code>systemctl restart chasquid</code> ka ịmalitegharị ọrụ ahụ.</p>    �>���u$R���Bu>��T��JO/S(7���   
<p>Chọta onye na-eweta DNS gị site na <a href="https://github.com/acmesh-official/acme.sh/wiki/dnsapi">acme.sh dnsapi</a> , dezie <code>conf/conf.sh</code> .</p>    �,NN��DR����Dz?s��F��5ظqζk   
<p>N'okpuru ebe a, anyị na-egosi nzọụkwụ site nzọụkwụ otu esi ewuo ihe nkesa ozi anyị.</p>    �ꁶn��w޶�ѭD����C�C)�@��B7��:   
<img 5>
<h2>Tinye onye zitere</h2>
<p>na-agba ọsọ</p>    �"���gb�㪼+�lJZ�ۃ�]O;��QO�   
<ul>
<li>onye ọrụ: SMTP aha njirimara</li>
<li>ngafe: SMTP paswọọdụ</li>
<li>ka: onye nnata</li>
</ul>
<p>Ị nwere ike izipu email ule.</p>    ���]�D(#�����!v��8ꀂ�>Z�@L%�   
<p>Ọ na-enyocha njirimara nke onye na-ezigara ozi site na ịlele na adreesị IP onye na-ezite ya kwekọrọ na ndekọ DNS nke ngalaba aha ọ na-ekwu na ọ bụ, na-egbochi ndị wayo izipu ozi ịntanetị adịgboroja.</p>    ��:���颕�m�ç��?n���M蠘Ce   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp" alt="" /></p>    ��^�/f��`���M-}��zú���o($F�p��   
<h2>Dezie aha nnabata nke chasquid.conf</h2>
<p>Gbanwee <code>conf/chasquid/chasquid.conf</code> ka uru nke aha ngalaba azụ.</p>    ����k<�I�m3i��K�O�*Oy�;L��e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp" alt="" /></p>    �[��r.p/܅ ��Q�	��G"2�/�R   
<h3>[Nhọrọ] Bido gburugburu mmepe</h3>
<p>Nzọụkwụ a bụ nhọrọ.</p>