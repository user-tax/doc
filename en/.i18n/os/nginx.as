       ��~7iV�Q�A@C�E�����Hw�b���Y�n  
<p>একে সময়তে, আমি openresty ৰ lua-nginx-module মডিউল (আৰু luajit2 আৰু ngx_devel_kit) কম্পাইল কৰিম যাতে nginx ক lua স্ক্ৰিপ্ট সম্প্ৰসাৰণসমূহ সমৰ্থন কৰিবলে সামৰ্থবান কৰিব পাৰি।</p>    ��lj��$,��N׌�f8����*˧�j>�ڮ�   <h1>nginx কম্পাইলিং সংস্থাপন আৰু বিন্যাস</h1>
<p>ই ২০২৩, আৰু nginx এ এতিয়াও HTTP3 সমৰ্থন নকৰে।</p>    / ��5�$��o1���R�[.��0�,<5g  
<img 0>
<p>যদি মূল চীনৰ ব্যৱহাৰকাৰীসকলে github অভিগম কৰিব নোৱাৰে, তেওঁলোকে প্ৰথমে github গোলকীয় প্ৰক্সি বিন্যাস কৰিবলে নিম্নলিখিত আদেশ চলাব পাৰে।</p>    < pZٰK�맊��ypwղ��h��:�������Xy   
<p>সংশোধিত একত্ৰীকৰণৰ অনুৰোধ দাখিল কৰা হৈছে।</p>    U���@Vo�Z-4M��۳���1�o����,�+.	   
<img 2>
    ���S�kKXJSb���� �k%��ڨ*�N�����2  
<p>websocket দীঘল সংযোগসমূহক http অনুৰোধসমূহলে ৰূপান্তৰ কৰাৰ বাবে সমৰ্থন সামৰ্থবান কৰিবলে <a href="https://github.com/slact/nchan">nchan</a> কম্পাইল কৰক।</p>    ��-q��bY_���J$���Tj�!0ѿ4u"��\�   
<p>সকলো স্ক্ৰিপ্ট <a href="https://github.com/user-tax-dev/os">ক'ড ভিত্তিত</a> পেকেইজ কৰা হৈছে, মাত্ৰ নিম্নলিখিত আদেশ চলাওক ।</p>    �oT}ُ�]�y�zq 8_븺���u�����   
<p>কিন্তু, nginx ৰ আনুষ্ঠানিকভাৱে <a href="https://quic.nginx.org">nginx-quic</a> ৰ এটা শাখা আছে।</p>    ��_�:�1�ڞ��b�d�=xlO.)�G��c�⚠   
<p>তলত দিয়া ক’ডটোৰ সহায়ত ইয়াক সাময়িকভাৱে ঠিক কৰিব পাৰি।</p>    ����@z��3��^V#��ABH���ג��j���   
<img 1>
<h2>TODO কন্টেন্ট মচি পেলাওক</h2>
<p>lua-nginx-module কম্পাইল কৰাৰ সময়ত এটা ভুল ৰিপৰ্ট কৰা হব।</p>    ߟpm�>�P��y�#ݲ���N��W�D`�  
<p>https://github.com/openresty/lua-nginx-module/pull/2168/files#diff-ebaa829579f91b18746b0bb13948131e7dcaa19dbae1d843c6fbbebc682951a2<br>বিভিন্ন চিহ্নিতকৰণৰ পূৰ্ণসংখ্যা অভিব্যক্তিৰ তুলনা</p>    ��������?�Y����G-�z�e��[ܥ�3�   
<p>ব্ৰাউজাৰ br সংকোচনৰ বাবে সমৰ্থন সামৰ্থবান কৰিবলে ngx_brotli কমপাইল কৰক।</p>    �0� �Zj�D�2���5â�N�M���t{�>�ޱ   
<p>আপুনি এই শাখা কমপাইল আৰু সংস্থাপন কৰিব পাৰে nginx সমৰ্থন HTTP3 কৰিবলে ।</p>