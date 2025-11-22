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

SELECT ogrenci_no
FROM dersler
WHERE ders_adi = 'Matematik' ;

-- 101,103,109,118,129,141,151

-- Sonra bu numaralara sahip ogrencilerin isim ve soyisimleri ogrenci tablosundan sorgulanir
SELECT isim,soyisim
FROM ogrenci
WHERE ogrenci_no IN (101,103,109,118,129,141,151);





-- Ama bu yol dinamik değildir yani tablo degisse calismaz, 
-- yeniden manuel kontrol edilip düzeltilmesi gerekir.

-- Kodlarin dinamik olmasi icin 
-- ogrencilerin numaralarini getiren ilk sorgu
-- ikinci sorgudaki IN parantezinin icine yazilabilir.

SELECT isim,soyisim
FROM ogrenci
WHERE ogrenci_no IN (	SELECT ogrenci_no
						FROM dersler
						WHERE ders_adi = 'Matematik' );










 /*  
========================  ORNEK  ========================
 Ornek :  okul veri tabaninda herhangi bir derste notu 85'den fazla olan ogrencilerin 
 isim ve soyisimlerini yazdirin.
 Bir ogrenci birden fazla dersten yuksek not almissa tekrar yazilmasin
=========================================================
 */
 
 -- once dersler tablosundan yüksek not alan ogrenci numaralari tekrarsiz olarak bulunur

SELECT DISTINCT ogrenci_no
FROM dersler
WHERE ortalama_not > 85;

-- 101,103,112,123,129,131,157,160,145,137

-- Sonra bu numaralara sahip ogrencilerin isim ve soyisimleri ogrenci tablosundan sorgulanir

SELECT isim, soyisim
FROM ogrenci
WHERE ogrenci_no IN (101,103,112,123,129,131,157,160,145,137);


-- ogrencilerin numaralarini getiren ilk sorguyu
-- ikinci sorgudaki IN parantezinin icine yazilabilir.


SELECT isim, soyisim
FROM ogrenci
WHERE ogrenci_no IN (	SELECT DISTINCT ogrenci_no
						FROM dersler
						WHERE ortalama_not > 85	);





 /*  
========================  ORNEK  ========================
 okul veri tabaninda matematik dersinden en yüksek not ortalamasina sahip ogrencinin 
 isim ve soyismini yazdirin.
=========================================================
 */
 
 -- once dersler tablosundan en yüksek matematik notunu bulalim
 SELECT MAX(ortalama_not)
 FROM dersler
 WHERE ders_adi = 'Matematik' ;
 -- 92
 
 -- sonra matematik dersinden o en yuksek nota sahip ogrencinin numarasini bulalim

SELECT ogrenci_no
FROM dersler
WHERE ders_adi = 'Matematik' AND ortalama_not = 92;

-- ogrenci no 129


-- Son olarak bu numaraya sahip ogrencinin isim ve soyisimi ogrenci tablosundan sorgulanir
SELECT isim, soyisim
FROM ogrenci
WHERE ogrenci_no IN (129);





-- Kodlarin dinamik olmasi icin son sorgudan başlayarak sorgular İc ice yazilabilir.

SELECT isim, soyisim
FROM ogrenci
WHERE ogrenci_no IN (SELECT ogrenci_no
					FROM dersler
					WHERE ders_adi = 'Matematik' AND ortalama_not =  (SELECT MAX(ortalama_not)
																	  FROM dersler
																	  WHERE ders_adi = 'Matematik' ));


 /*  
========================  ORNEK  ========================
 okul veri tabaninda Zeynep Demir hocadan ders alan ogrencilerin sayisini yazdirin.
=========================================================
 */
 
-- once ogretmenler tablosundan Zeynep Demir hocanin ogretmen_id’sini bulalim
SELECT ogretmen_id
FROM ogretmenler
WHERE isim = 'Zeynep' AND soyisim = 'Demir' ;

-- 12


-- Sonra dersler tablosundan ogretmen_id’si 12 olan ogrenci sayisi sorgulanir

SELECT COUNT(ogrenci_no)
FROM dersler
WHERE ogretmen_id IN (12);


-- Kodlarin dinamik olmasi icin son sorgudan başlayarak sorgular İc ice yazilabilir.

SELECT COUNT(ogrenci_no)
FROM dersler
WHERE ogretmen_id IN (	SELECT ogretmen_id
						FROM ogretmenler
						WHERE isim = 'Zeynep' AND soyisim = 'Demir');






 /*  
========================  ORNEK  ========================
 okul veri tabaninda 129 numarali ogrencinin ingilizce hocasinin 
 ismini ve soyismini yazdirin.
=========================================================
 */
 
SELECT ogretmen_id
FROM dersler
WHERE ogrenci_no = 129 AND ders_adi = 'ingilizce' ;

-- 17

SELECT isim, soyisim
FROM ogretmenler
WHERE ogretmen_id IN (17) ;



-- Kodlarin dinamik olmasi icin son sorgudan başlayarak sorgular İc ice yazilabilir.

SELECT isim, soyisim
FROM ogretmenler
WHERE ogretmen_id IN (	SELECT ogretmen_id
						FROM dersler
						WHERE ogrenci_no = 129 AND ders_adi = 'ingilizce' ) ;




 
 
 /*  
========================  ORNEK  ========================
 okul veri tabaninda bir dersten bir ogrencinin aldigi en yuksek notu bulun
bu notu veren hocanin ismini ve soyismini yazdirin.
=========================================================
 */
 
-- once dersler tablosundan bir dersten bir ogrencinin aldigi en yüksek ortalama bulunur

SELECT MAX(ortalama_not)
FROM dersler;
-- 95.00


-- Sonra dersler tablosundan bu ortalama notu veren hocanin ogretmen_id’si sorgulanir

SELECT ogretmen_id
FROM dersler
WHERE ortalama_not = 95;

-- 14


-- Son olarak ogretmenler tablosundan ogretmen_id’si 14 olan ogretmenin isim ve soyismi sorgulanir
-- ayni notu veren birden fazla hoca olabilecegi icin IN kullanilabilir

SELECT isim, soyisim
FROM ogretmenler
WHERE ogretmen_id IN (14) ;



-- Kodlarin dinamik olmasi icin son sorgudan başlayarak sorgular İc ice yazilabilir.

SELECT isim, soyisim
FROM ogretmenler
WHERE ogretmen_id IN (	SELECT ogretmen_id
						FROM dersler
						WHERE ortalama_not =   (SELECT MAX(ortalama_not)
												FROM dersler) );








