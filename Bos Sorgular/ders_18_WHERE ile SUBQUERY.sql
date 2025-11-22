use SqlDersleri;

/*
================================= SUBQUERY =================================
    Subquery (alt sorgu), bir sorgunun içinde yer alan 
    ve genellikle SELECT, FROM veya WHERE ifadelerinde kullanılan başka bir sorgudur. 
    
    Alt sorgu, dış sorguya veri sağlamak için çalışır. 
    Genellikle filtreleme, karşılaştırma veya hesaplama işlemleri için kullanılır.

    Örneğin, onceki derste olusturulan okul relational schema'sinda 
    matematik dersini alan öğrenci isimleri sorulsa

    Bir query ile dersler tablosunda matematik dersi alan öğrencilerin numaraları bulanabilir 
    ama öğrencilerin isimlerini bulmak için öğrenci numaraları ile öğrenci tablosunda alt sorgu yapılmalıdır.
============================================================================
*/





 /*  
========================  ORNEK  ========================
 Okul veri tabanında matematik dersi alan öğrenci isim ve soy isimlerini yazdırın.
=========================================================
 */
 
-- burada insan olarak dusunulse 
-- once dersler tablosundan matematik dersi alan ogrenci numaralari bulunur








-- Sonra bu numaralara sahip ogrencilerin isim ve soyisimleri ogrenci tablosundan sorgulanir







-- Ama bu yol dinamik değildir yani tablo degisse calismaz, 
-- yeniden manuel kontrol edilip düzeltilmesi gerekir.

-- Kodlarin dinamik olmasi icin 
-- ogrencilerin numaralarini getiren ilk sorgu
-- ikinci sorgudaki IN parantezinin icine yazilabilir.












 /*  
========================  ORNEK  ========================
 Ornek :  okul veri tabaninda herhangi bir derste notu 85'den fazla olan ogrencilerin 
 isim ve soyisimlerini yazdirin.
 Bir ogrenci birden fazla dersten yuksek not almissa tekrar yazilmasin
=========================================================
 */
 
 -- once dersler tablosundan yüksek not alan ogrenci numaralari tekrarsiz olarak bulunur








-- Sonra bu numaralara sahip ogrencilerin isim ve soyisimleri ogrenci tablosundan sorgulanir









-- ogrencilerin numaralarini getiren ilk sorguyu
-- ikinci sorgudaki IN parantezinin icine yazilabilir.











 /*  
========================  ORNEK  ========================
 okul veri tabaninda matematik dersinden en yüksek not ortalamasina sahip ogrencinin 
 isim ve soyismini yazdirin.
=========================================================
 */
 
 -- once dersler tablosundan en yüksek matematik notuna sahip ogrencinin numarasini bulalim





-- Sonra matematikten bu notu alan ogrencinin numarasi dersler tablosundan sorgulanir








-- Son olarak bu numaraya sahip ogrencinin isim ve soyisimi ogrenci tablosundan sorgulanir






-- Kodlarin dinamik olmasi icin son sorgudan başlayarak sorgular İc ice yazilabilir.












 /*  
========================  ORNEK  ========================
 okul veri tabaninda Zeynep Demir hocadan ders alan ogrencilerin sayisini yazdirin.
=========================================================
 */
 
-- once ogretmenler tablosundan Zeynep Demir hocanin ogretmen_id’sini bulalim







-- Sonra dersler tablosundan ogretmen_id’si 12 olan ogrenci sayisi sorgulanir








-- Kodlarin dinamik olmasi icin son sorgudan başlayarak sorgular İc ice yazilabilir.








 /*  
========================  ORNEK  ========================
 okul veri tabaninda 129 numarali ogrencinin ingilizce hocasinin 
 ismini ve soyismini yazdirin.
=========================================================
 */
 







-- Kodlarin dinamik olmasi icin son sorgudan başlayarak sorgular İc ice yazilabilir.






 
 
 /*  
========================  ORNEK  ========================
 okul veri tabaninda bir dersten bir ogrencinin aldigi en yuksek notu bulun
bu notu veren hocanin ismini ve soyismini yazdirin.
=========================================================
 */
 
-- once dersler tablosundan bir dersten bir ogrencinin aldigi en yüksek ortalama bulunur







-- Sonra dersler tablosundan bu ortalama notu veren hocanin ogretmen_id’si sorgulanir








-- Son olarak ogretmenler tablosundan ogretmen_id’si 14 olan ogretmenin isim ve soyismi sorgulanir
-- ayni notu veren birden fazla hoca olabilecegi icin IN kullanilabilir







-- Kodlarin dinamik olmasi icin son sorgudan başlayarak sorgular İc ice yazilabilir.




