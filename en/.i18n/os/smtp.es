|       ?pD?l?8?ws?8(L佌?ev???p????  
<ul>
<li>0: Informe de resultados de validación para todos los mensajes</li>
<li>1: Informar solo los mensajes que fallan en la verificación</li>
<li>d: Informar solo errores de verificación de nombres de dominio</li>
<li>s: solo informar fallas de verificación de SPF</li>
<li>l: Informar solo fallas de verificación de DKIM</li>
</ul>
<h3>rua y ruf</h3>
<ul>
<li>rua (URI de informes para informes agregados): dirección de correo electrónico para recibir informes agregados</li>
<li>ruf (URI de informes para informes forenses): dirección de correo electrónico para recibir informes detallados</li>
</ul>
<h2>Agregue registros MX para reenviar correos electrónicos a Google Mail</h2>
<p>Debido a que no pude encontrar un buzón corporativo gratuito que admita direcciones universales (Catch-All, puede recibir cualquier correo electrónico enviado a este nombre de dominio, sin restricciones en los prefijos), usé chasquid para reenviar todos los correos electrónicos a mi buzón de Gmail.</p>    Z?I?`O???J??<?ۜc(?ƀ?0??'?|   
<p>A continuación, tomaré el VPS de Contabo como ejemplo para demostrar cómo construir su propio servidor de correo.</p>    6???ZE?k߀P???T???Ӡ??y?S??   
<h2>Configurar firma de correo electrónico DKIM</h2>
<p>DKIM se utiliza para enviar firmas de correo electrónico para evitar que las cartas se traten como spam.</p>    ?f=??9M????,??ƿ?wɨ"&aj?l??S   
<p><code>v=spf1 a mx include:_spf.user.tax include:_spf.google.com ~all</code></p>    	z??????	9?#.??Oœ?2J@u.?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/-qKACz9.webp" alt="" /></p>    
 	_??8????*??7Jm?j?7??.X?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/0szKWqV.webp" alt="" /></p>    v??H??v-Hv????W?;?|??Kn-???)   
<p>Crear un almacén privado primero</p>    ?|=?.??2?^??w?j6??}Y'?Ϩ$?pe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/5MEi41I.webp" alt="" /></p>    B??$??eb??u??`V???e???4?)?   
<p>Tenga en cuenta que he <code>include:_spf.google.com</code> aquí, porque configuraré <code>i@user.tax</code> como la dirección de envío en el buzón de Google más adelante.</p>    E?????<??ܶ9??????<lJ?gP??;????   
<p><code>*</code> indica todos los correos electrónicos, <code>i</code> es el prefijo de la dirección de correo electrónico del usuario remitente creado anteriormente. Para reenviar correo, cada usuario debe agregar una línea.</p>    ???+&?gI??E??:-?TE?R???^?DG?ض??   
<p>Si elige el euro como moneda de compra, el precio será más económico (un servidor con 8 GB de memoria y 4 CPU cuesta alrededor de 529 yuanes por año, y la tarifa de instalación inicial es gratuita durante un año).</p>    ?Z????x?2?+ճGh??RA2?4???C|?   
<h2>Envíe un correo electrónico a i@user.tax con Google Mail</h2>
<p>Después de que Google Mail recibe el correo, es natural que desee responder con <code>i@user.tax</code> en lugar de i.user.tax@gmail.com.</p>    ?t???NJ?` ???????06@??Uѭ?3??   
<img 0>
<p>Usuarios chinos, utilicen el siguiente comando en su lugar, y el idioma, la zona horaria, etc. se configurarán automáticamente.</p>    ???O?P?????v??g?? ??!t?D???lbe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/CAwyY4E.webp" alt="" /></p>    $?@?w???N????4?i?{?P????}m?   
<h2>Envíe un correo electrónico de prueba para verificar si la configuración es exitosa</h2>
<p>Introduzca <code>ops/chasquid</code></p>    ???? ?ۆ??c:[>$??????S??K?ض??t   
<img 4>
<p>La ruta para el certificado generado es algo así como <code>/mnt/www/.acme.sh/123.com_ecc。</code></p>    %|????lG???;ت?{??Ǽ?E7 ??fe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/khHjLof.webp" alt="" /></p>    &??9? ?????????h???EN???|?̦]   
<h2>Configuración del sistema Ubuntu</h2>
<p>El sistema operativo aquí es Ubuntu 22.04</p>    'u?-?-??:h*????*?2zg???@??U?   
<h3>Verifique que la contraseña esté configurada correctamente</h3>
<img 7>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/e92JHXq.webp" alt="" /></p>    '????_yU?j??????!???????2???   
<p>Las nubes públicas de uso común han bloqueado estos puertos de forma predeterminada y es posible abrirlos emitiendo una orden de trabajo, pero después de todo es muy problemático.</p>    (???2?T?G??U?=?c5??????#d??   
<p>Luego agregue el registro MX (señalo directamente la dirección del nombre de dominio inverso aquí, como se muestra en la primera línea de la figura a continuación).</p>    )?U9ؾ1?a?'?R0]?*?Jo???v??21?   
<img 1>
<h3>Contabo habilita IPV6</h3>
<p>Habilite IPV6 para que SMTP también pueda enviar correos electrónicos con direcciones IPV6.</p>    )Q???VmV;u?????ͽ8B?	
L| ?z   
    *&?]p/?<WO?-?I??\??B?x?9#?!c   
<p>Edite <code>conf/chasquid/domains/user.tax/aliases</code> , configure el buzón de reenvío</p>    ,'? ?/a??Lޣ?Xf{????0??K? ?2   
<p>Modifique o agregue las siguientes líneas</p>    2?5ǜO\?=???z-??????d?????*oFP?$   
<p>El contenido es el siguiente</p>    2?I*<kucX1Nկ??*?VFr?S?;dJޱx??   
<p>Después de configurar el nombre de dominio inverso, recuerde configurar la resolución directa del nombre de dominio ipv4 e ipv6 al servidor.</p>    5?-??ϸ?'?
W *k2zfF7?lX^?&?GJ???   
<p>De esta forma, hemos completado el establecimiento del servidor de correo SMTP y al mismo tiempo usamos Google Mail para enviar y recibir correos electrónicos.</p>    6%p4??g5?+f???m.?i\?Y?9x??TA K   
<p>Luego haga clic en &quot;Mostrar correo electrónico original&quot;</p>    63?g?:??X???C@?Q????Doe:?<:?H?{m   
<img 8>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/k44P7O3.webp" alt="" /></p>    9ڕ?O/;??9??cƷ??v>?G???cP?-?T   
<p>El estado de funcionamiento normal es como se muestra en la siguiente figura</p>    =E?f?o???I?????????F,??x?>???u   
<p>Establecer un nombre de dominio inverso puede evitar que los correos electrónicos se identifiquen como spam.</p>    ?O?-B???-???[,-????Q?a?iT#@o?m0   
<p><code>v=spf1 a:smtp.user.tax ~all</code></p>    A?????T?3|7c?b?ve?B?"_?
??r?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/an6aXK6.webp" alt="" /></p>    F?Ra9/]???I^??@i??????0G??j   
<p>Usamos <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> para generar certificados.</p>    G|Tۍ?։0?a??????g??$??;??jC?   <h1>Cree su propio servidor de envío de correo SMTP</h1>
<h2>preámbulo</h2>
<p>SMTP puede comprar directamente servicios de proveedores de la nube, como:</p>    M?XOqh?N_jw?W?y6o?'?E(!:??????   
<p>Después de que el comando se ejecute correctamente, se le pedirá que configure el registro DKIM (como se muestra a continuación).</p>    Q<qV???dB=6U????v?=??M?w\TMee   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/OBDl2gw.webp" alt="" /></p>    U?3i?O??捣~?z????z??x.????]e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/m7Mwjwr.webp" alt="" /></p>    V	?????+t???^?j??s???}?HY'??   
<p>Cuando se recibe el correo, el servidor receptor realizará un análisis de nombre de dominio inverso en la dirección IP del servidor de envío para confirmar si el servidor de envío tiene un nombre de dominio inverso válido.</p>    W0?!?'{?'??[p???7Xr%?l????????iH?   
<h2>Construir servidor SMTP con chasquid</h2>
<p><a href="https://github.com/albertito/chasquid">chasquid</a> es un servidor SMTP de código abierto escrito en lenguaje Go.</p>    W?SJ?۸Ͽ??mA?C}??\̮r?PNo?+v39   
<p>El significado de cada parámetro es el siguiente</p>    X[????
ҋa??e^??[=?e?A]d}~0??|   
<p>Al realizar un pedido, indique que <code>prefer AMD</code> , y el servidor con CPU AMD tendrá un mejor rendimiento.</p>    X???߶g=????{?????????d??5/p?   
<p>Después de que la configuración sea exitosa, puede usar <code>curl 6.ipw.cn</code> para ver la dirección ipv6 de su red externa.</p>    Yn??B_??W9?9?nJGYV? ?Y=@???Gb???   
<h2>Configuración DNS DMARC</h2>
<p>DMARC es la abreviatura de (Domain-based Message Authentication, Reporting &amp; Conformance).</p>    `Q8Y?7??,L???(X??Ʋ&D	??????   
<p>Como sustituto de los antiguos programas de servidor de correo como Postfix y Sendmail, chasquid es más simple y fácil de usar, y también es más fácil para el desarrollo secundario.</p>    `?G?4?Xj????}?8?a?????F??ay$?]?E   
<p>Aquí, recomiendo <a href="https://contabo.com">Contabo</a> .</p>    a?# Rr?ͥ?c???*??>?As1?>p?)}???5   
<p>La estructura del directorio es la siguiente:</p>    e}?????e˃?h??_???Y-?
>??َb^U??   
<h3>DKIM</h3>
<p>Como se muestra en la figura a continuación, la página de correo original de Gmail muestra DKIM, lo que significa que la configuración de DKIM se realizó correctamente.</p>    g?0?Q?-k-B?????j-???㻒???~On?#   
<p>Luego reinicie el servidor.</p>    j?Q????mK?????W???&?P?!?8?lh~   
<h2>Ver el estado del servicio y los registros</h2>
<p><code>systemctl status chasquid</code> Ver el estado del servicio.</p>    kr
5?????4[82O?%??,?J	wQe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/qQQsdxg.webp" alt="" /></p>    m??O?fFȟ?%?~,b?Sn?37}???1B?{?   
<h2>Selección de servidor</h2>
<p>El servidor SMTP autohospedado requiere una IP pública con los puertos 25, 456 y 587 abiertos.</p>    pE?????,?????@??*M#??h???)?   
<p>Ingrese a las operaciones del almacén de configuración, ejecute <code>./ssl.sh</code> y se creará una carpeta <code>conf</code> en el directorio superior.</p>    t?̏s?@7??B? V???v?ݯ?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ZSCT1t1.webp" alt="" /></p>    y?	??U,Ճ?&?;ks]?f????-BuW???   
<p>Luego ejecute <code>./ssl.sh 123.com</code> para generar certificados <code>123.com</code> y <code>*.123.com</code> para su nombre de dominio.</p>    y?o??y?|?uভ?!?O???b?Vʕ_'?z???   
<p>Después de agregar el usuario, <code>chasquid/domains/user.tax/users</code> se actualizará, recuerde enviarlo al almacén.</p>    zEz?k?.'ۆ?qo??CӚx? ??mL!vYe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/SrdbAwh.webp" alt="" /></p>    zI?c?H???lbSi̕͡9A?ԣ??????#e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/UoAQkwY.webp" alt="" /></p>    |?L?65x????????:80??=%??
P1 ?y   
<p>Por ejemplo, hago una copia de seguridad de la carpeta conf en mi propio proceso de github de la siguiente manera</p>    #???Z?!?{)?#*mm??Ӣ?!S?<?????   
<p>Se usa para capturar rebotes SPF (tal vez causados ​​por errores de configuración, o alguien más se hace pasar por usted para enviar spam).</p>    ?n??? H+?B68?;"???)?S??¼̝?z   
<p>Contabo es un proveedor de alojamiento con sede en Munich, Alemania, fundado en 2003 con precios muy competitivos.</p>    ??w??????B?EG????%>??h???MnM?W   
<p>Simplemente agregue un registro TXT a su DNS (como se muestra a continuación).</p>    ?ϱ@W?a?t#?/d????u?D?v??Y??e0/?   
<h3>Cifrado estándar TLS</h3>
<p>Como se muestra en la figura a continuación, existe este pequeño candado, lo que significa que el certificado SSL se ha habilitado correctamente.</p>    ?>?vH??o?? ?Ap
p???f?e"??ve   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/ae1iWyM.webp" alt="" /></p>    ?sO?s?o?NR??Ac?G8??>?6cǈ(w?z   
<p>Agregar registros SPF puede evitar que los correos electrónicos se identifiquen como spam tanto como sea posible.</p>    ? >v?Ii?J???[F)??F?f?B0O???c  
<ul>
<li>ninguno: no se realiza ninguna acción, solo se envía el resultado de la verificación al remitente a través del mecanismo de notificación por correo electrónico.</li>
<li>Cuarentena: coloque el correo que no haya pasado la verificación en la carpeta de correo no deseado, pero no rechazará el correo directamente.</li>
<li>rechazar: Rechazar directamente los correos electrónicos que fallan en la verificación.</li>
</ul>
<h3>fo (Opciones de falla)</h3>
<p>Especifica la cantidad de información devuelta por el mecanismo de informes. Se puede establecer en uno de los siguientes valores:</p>    ?^?k? A??]t??????W?Ty?Ubsw?i  
<ul>
<li><a href="https://docs.aws.amazon.com/ses/latest/dg/send-email-smtp.html">Amazon SES SMTP</a></li>
<li><a href="https://www.alibabacloud.com/help/directmail/latest/three-mail-sending-methods">Envío de correo electrónico en la nube de Ali</a></li>
</ul>
<p>También puede construir su propio servidor de correo: envío ilimitado, bajo costo total.</p>    ?)??~z?uE???R3Q???????e?X?2ϖ*?   
<h3>p (política)</h3>
<p>Indica cómo manejar los correos electrónicos que no superan la verificación SPF (Sender Policy Framework) o DKIM (DomainKeys Identified Mail). El parámetro p se puede establecer en uno de tres valores:</p>    ?i??
0?]??P????u???)R??甄A+??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/7__KrU8.webp" alt="" /></p>    ??|?T?#]1g?8D??N???????>?Z??Ǒ?   
<h2>Configuración inversa del nombre de dominio</h2>
<p>El nombre de dominio inverso es para permitir que la dirección IP se resuelva en el nombre de dominio correspondiente.</p>    ??,3??.o?".???@-?"?:?j?*??H{??   
<p>Visite <a href="https://my.contabo.com/rdns">https://my.contabo.com/rdns</a> y configure como se muestra a continuación</p>    ????8???AіKO?t.?!TN߂A?A??hv?   
<p>Para mayor comodidad, puse la instalación y configuración del sistema del software ubuntu en <a href="https://github.com/user-tax-dev/os/tree/main/ubuntu">github.com/user-tax-dev/os/tree/main/ubuntu</a> .</p>    ?ֲ?b?_[??X*:(?9???? Gઠ?0"??   
<p>Si el servidor de envío no tiene un nombre de dominio inverso o si el nombre de dominio inverso no coincide con la dirección IP del servidor de envío, el servidor de recepción puede reconocer el correo electrónico como spam o rechazarlo.</p>    ?+J??sun?ž${??o7?t'?=s	^B?IA   
<img 9>
<p>El significado de los parámetros es el siguiente</p>    ?ڨ`?e?-???9aQw?>??z??6?j??T!?  
<p>La primera ejecución instalará automáticamente <a href="https://github.com/acmesh-official/acme.sh">acme.sh</a> y agregará una tarea programada para la renovación automática. <code>crontab -l</code> puedo ver que hay una línea como la siguiente.</p>    ???'U?V,?5`s?D%?y??A?W]???|\??   
<h2>Clonar las operaciones del repositorio de configuración</h2>
<img 3>
<h2>Genere un certificado SSL gratuito para su nombre de dominio</h2>
<p>El envío de correo requiere un certificado SSL para el cifrado y la firma.</p>    ?y5M<r?[Yd?_ţ1B??P????ڥva?   
<p>Ejecute <code>./chasquid/init.sh 123.com</code> se instalará automáticamente con un clic (reemplace 123.com con su nombre de dominio de envío).</p>    ??Z\????Ƥu?bz??D?a????p'??F\   
<p>acme.sh es una herramienta de firma de certificados automatizada de código abierto,</p>    ?\Kmڔ&EY?7?(mx?u???b?L?5??   
<p>La renovación del certificado llamará al script <code>conf/reload/123.com.sh</code> , edite este script, puede agregar comandos como <code>nginx -s reload</code> para actualizar la memoria caché del certificado de las aplicaciones relacionadas.</p>    ?e???[e??@??uO?????%?2?	zR?   
<p>Finalmente, se puede configurar como la dirección del remitente predeterminada (junto con la opción de responder con la misma dirección).</p>    ?y????n?p?b?;?F\{????k7h? 0????   
<img 2>
<p>Continúe con <a href="https://contabo.com/blog/adding-ipv6-connectivity-to-your-server/">el tutorial de contabo: Agregar conectividad IPv6 a su servidor</a></p>    ?9Y'?8}ߢ????-?`?2n??
p?Fa$~?   
<p>Verifique Recibido en el encabezado del correo electrónico original y podrá ver que la dirección del remitente es IPV6, lo que significa que IPV6 también se configuró correctamente.</p>    ??<UY????+?F̽^@;??ku????6xe   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/_OgLsPT.webp" alt="" /></p>    ?????c??Y???!??P??w(l????5??2???   
<p>Si el servidor en ssh muestra <code>Welcome to TinyCore 13!</code> (como se muestra en la figura a continuación), significa que el sistema aún no se ha instalado. Desconecte ssh y espere unos minutos para volver a iniciar sesión.</p>    ??ȫ?[k'y^?X??_???J??ݵ?*#T?Dj   
<p><strong>Si tiene su propio buzón comercial pagado, no modifique el MX y omita este paso.</strong></p>    ??̟??q9JW?ڞG?>??C?
fsHa?j?l   
<p>Luego, ingrese el código de verificación recibido por el correo electrónico al que fue reenviado.</p>    ?Ό}T)?>E=?c?-??v?its????Pބ??   
<p>Recomiendo comprar desde un host que tenga estos puertos abiertos y admita la configuración de nombres de dominio inversos.</p>    ?U???!m)f0??uΣG?o7?HVtS?????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/LJWGsmI.webp" alt="" /></p>    ???m? e7]Lo???_b??C%??>???X??   
<h2>Copia de seguridad de conf en el repositorio de git</h2>
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Fier9uv.webp" alt="" /></p>    ???Y??'?Ȏ?)??̶A/;/???;??:`ŗ?   
<p>Se recomienda usar Gmail para recibir correos electrónicos de prueba para verificar si las configuraciones son exitosas.</p>    ?=???G?JzI>ʥ?'???`??P`F?Ӯ??2   
<p>Agregar registro TXT <code>_dmarc</code> ,</p>    ??Я?ߠuOgr??#Y(?\?3?9nֿ?z??   
<p>Cuando aparece <code>Welcome to Ubuntu 22.04.1 LTS</code> , la inicialización está completa y puede continuar con los siguientes pasos.</p>    ????*Ao"`?,????Y??U?]SkӶp???1?   
<h2>DNS agregar registro SPF</h2>
<p>SPF (Sender Policy Framework) es una tecnología de verificación de correo electrónico utilizada para prevenir el fraude por correo electrónico.</p>    ?;2??j?6???C??5=?&|?_x????;?b?+   
<p>SPF para <code>_spf.user.tax</code></p>    ?O?O??顾??l???s??l?7?6?{?z?~   
<p>entonces corre</p>    ?Q?,?ir????u???d?wt;0?ZU?,X?M?:   
<p>Ingrese al directorio conf y envíelo al almacén.</p>    ?,?7??"?Ku?????2&un?Ir??]_?   
<p>Ejecute <code>direnv allow</code> to install dependencies (direnv se instaló en el proceso anterior de inicialización de una tecla y se agregó un enlace al shell)</p>    ?jV?????ǔ????5??=L???c??t?VD   
<p>Por ejemplo, el SPF de <code>user.tax</code> es el siguiente</p>    ƃ??0zn1?? ??BA??`>?k-?,\Z?   
<p>Edite <code>/etc/netplan/01-netcfg.yaml</code> , agregue algunas líneas como se muestra en la figura a continuación (el archivo de configuración predeterminado de Contabo VPS ya tiene estas líneas, simplemente elimínelas).</p>    ?_;?<̉f=Fx?  i???T??.?F?_??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/XIUf6Dc.webp" alt="" /></p>    ?7?=???????d?bA??????????J+?e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/Qjq1C1i.webp" alt="" /></p>    ?tu????9? 4?????I0]о!???P?p   
<p>Si su servidor de nombres de dominio no admite el tipo SPF, simplemente agregue el registro de tipo TXT.</p>    ???Uk??vvJfQ???N??W?1?!?
dmP?   
<p>Una vez completada la configuración, puede usar otras direcciones de correo electrónico para enviar correos electrónicos a <code>i@user.tax</code> y <code>any123@user.tax</code> para ver si puede recibir correos electrónicos en Gmail.</p>    ???}??YLrT???ݥ?ܗr??9՜	}   
<p><code>grep chasquid /var/log/syslog</code> o <code>journalctl -xeu chasquid</code> pueden ver el registro de errores.</p>    ?@Ә??S?A??u?q&? ?v?,*sgH??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/IIPdBk_.webp" alt="" /></p>    ?j?v$?k?C-??Bݦ??R?4??a?????>?   
<p>Visite <a href="https://mail.google.com/mail/u/1/#settings/accounts">https://mail.google.com/mail/u/1/#settings/accounts</a> y haga clic en &quot;Agregar otra dirección de correo electrónico&quot;.</p>    ?]?F?%?Y"?????_P?0????[M??Ke   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/PAvyE3C.webp" alt="" /></p>    ڜ? ??~?dЬ?^p"?}?y?43?	????j   
<p>De lo contrario, verifique el registro de chasquid ( <code>grep chasquid /var/log/syslog</code> ).</p>    ?0?F?b?????[6D???????s?
??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/smpIu1F.webp" alt="" /></p>    ߮?B?D?J?%???]?^?P??????f??,   
<p>editar <code>/etc/sysctl.conf</code></p>    ??2???Ԟ3E,|??y???V??t??ߔ"9???D   
<p>Ejecute el siguiente comando para instalar con un solo clic.</p>    ?^????~?%?t?4	?@7?K?j w"??W?'   
<img 6>
<p>Puede agregar remitente</p>    ???^??PK??s??7<U????;w?Gf?=????e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/6Fw4SQi.webp" alt="" /></p>    ??N>??7]u????v_XI?[?s??k?oY   
<p>Luego ejecute <code>systemctl restart chasquid</code> para reiniciar el servicio.</p>    ?>???u$R???Bu>??T??JO/S(7???   
<p>Encuentre su proveedor de DNS desde <a href="https://github.com/acmesh-official/acme.sh/wiki/dnsapi">acme.sh dnsapi</a> , edite <code>conf/conf.sh</code> .</p>    ??,NN???DR????Dz?s??F??5ظqζc   
<p>A continuación, demostramos paso a paso cómo construir nuestro propio servidor de correo.</p>    ?ꁶn??w޶?ѭD????C?C)?@??B7??1   
<img 5>
<h2>Agregar remitente</h2>
<p>correr</p>    ??"???gb??㪼+?lJZ?ۃ?]O;??QO?   
<ul>
<li>usuario: nombre de usuario SMTP</li>
<li>contraseña: contraseña SMTP</li>
<li>a: destinatario</li>
</ul>
<p>Puede enviar un correo electrónico de prueba.</p>    ???]?D(#?????!v??8ꀂ?>Z?@L%?   
<p>Verifica la identidad del remitente de un correo verificando que la dirección IP del remitente coincida con los registros DNS del nombre de dominio que dice ser, evitando que los estafadores envíen correos electrónicos falsos.</p>    ??:???颕?m?ç???n???M蠘Ce   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/a95dO60.webp" alt="" /></p>    ??^?/f??`???M-}??zú???o($F?p??   
<h2>Edite el nombre de host de chasquid.conf</h2>
<p>Modifique <code>conf/chasquid/chasquid.conf</code> al valor del nombre de dominio inverso.</p>    ????k<?I?m3i??K?O?*Oy?;L??e   
<p><img src="https://pub-b8db533c86124200a9d799bf3ba88099.r2.dev/2023/03/W2occKn.webp" alt="" /></p>    ?[??r.p/܅ ???Q?	??G"2?/?W   
<h3>[Opcional] Inicializar el entorno de desarrollo</h3>
<p>Este paso es opcional.</p>