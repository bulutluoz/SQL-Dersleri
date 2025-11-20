use SqlDersleri;

/* 
===============================================
		       AGGREGATE FUNCTIONS
===============================================



 Aggregate fonksiyonlar, SQL'de bir grup satır üzerinde belirli
 bir işlemi gerçekleştiren ve tek bir değer döndüren fonksiyonlardır.

 Bu tür fonksiyonlar, veri analizi yaparken veya raporlar hazırlarken
 veri setleri üzerinden özet bilgiler elde etmek için sıklıkla kullanılır.

 Aggregate fonksiyonlar, birden fazla satırın bilgilerini toplayarak, 
 bunların ortalamasını almak, en büyük veya en küçük değerlerini bulmak
 gibi işlemleri kolaylikla yapabilir.

				 Yaygın Kullanılan Aggregate Fonksiyonlar
COUNT(): Belirli bir kriteri karşılayan satırların sayısını döndürür.
Örneğin, bir tabloda kaç tane farklı kayıt olduğunu bulmak için kullanılır.

SUM(): Sayısal bir sütundaki tüm değerlerin toplamını hesaplar. 
Örneğin, bir satış tablosundaki tüm satışların toplam gelirini hesaplamak için 
kullanılabilir.

AVG(): Sayısal bir sütundaki değerlerin ortalamasını hesaplar. 
Örneğin, öğrencilerin sınav puanlarının ortalamasını bulmak için kullanılır.

MIN() ve MAX(): Bir sütundaki en küçük ve en büyük değerleri bulur. 
Örneğin, bir ürünün satış fiyatları arasından en düşük ve en yüksek fiyatı 
bulmak için kullanılabilir.
*/


 /*  
========================  ORNEK  ========================
 Icerisinde id, urun_adi, satis_miktari, birim_fiyati ve satis_tarihi 
 sutunlari bulunan satis_raporu isimli bir tablo oluşturun 
 ve içine null icermeyen kayitlar ekleyin.
=========================================================
 */

CREATE TABLE satis_raporu (
    id INT ,
    urun_adi VARCHAR(100),
    satis_miktari INT,
    birim_fiyati DECIMAL(10, 2),
    satis_tarihi DATE
);

INSERT INTO satis_raporu VALUES
(1, 'Laptop', 100, 1500.00, '2025-01-15'),
(2, 'Tablet', 200, 800.50, '2025-02-18'),
(3, 'Kulaklık', 150, 120.99, '2025-03-20'),
(4, 'Kamera', 50, 350.00, '2025-04-22'),
(5, 'Mouse', 180, 25.50, '2025-05-10'),
(6, 'Klavye', 70, 45.30, '2025-06-11'),
(7, 'Monitor', 120, 850.00, '2025-07-02'),
(8, 'Yazıcı', 160, 200.00, '2025-08-15'),
(9, 'Laptop', 130, 1500.00, '2025-09-03'),
(10, 'Tablet', 160, 800.50, '2025-10-05'),
(11, 'Kulaklık', 100, 120.99, '2025-11-19'),
(12, 'Kamera', 90, 350.00, '2025-12-23'),
(13, 'Mouse', 110, 25.50, '2025-01-25'),
(14, 'Klavye', 50, 45.30, '2025-02-28'),
(15, 'Monitor', 80, 850.00, '2025-03-15'),
(16, 'Yazıcı', 130, 200.00, '2025-04-17'),
(17, 'Laptop', 140, 1500.00, '2025-05-23'),
(18, 'Tablet', 190, 800.50, '2025-06-30'),
(19, 'Kulaklık', 110, 120.99, '2025-07-25'),
(20, 'Kamera', 120, 350.00, '2025-08-18');

SELECT * 
FROM satis_raporu;













/* 
===============================================
		       AGGREGATE FUNCTIONS / COUNT()
===============================================

Belirli bir kriteri karşılayan satırların sayısını döndürür.

*************** SYNTAX ***************
SELECT COUNT(sütun_adı) 
FROM tablo_adı;
*/


 /*  
========================  ORNEK  ========================
Satis raporu tablosundaki toplam urun sayisi nedir.
=========================================================
 */
 
 -- tablodaki urun adlari listesi

SELECT urun_adi
FROM satis_raporu;


-- tablodaki urun adi sayisi


SELECT COUNT(urun_adi)
FROM satis_raporu;







 /*  
========================  ORNEK  ========================
 Satis raporu tablosundaki toplam urun cesidi sayisi nedir.
 NOT : Urun cesidi sayisini bulabilmek için once tekrarsiz bir urun listesine ihtiyaç var.
=========================================================
 */
 
 -- tablodaki urun adlarinin tekrarsiz listesi

SELECT DISTINCT urun_adi
FROM satis_raporu;


 
-- tablodaki tekrarsiz urun adi sayisi


SELECT COUNT(DISTINCT urun_adi)
FROM satis_raporu;



 /*  
========================  ORNEK  ========================
 Satis raporu tablosuna gore kac farkli günde satis yapilmistir?
=========================================================
 */
 
SELECT COUNT(DISTINCT satis_tarihi)
FROM satis_raporu;




/* 
======================== ALIASES ===========================
 ALIASES ( takma adlar ) :  
 sütunları veya tabloları daha kısa, 
 anlamlı veya okunması daha kolay hale getirmek için kullanılan geçici isimlerdir.

 Aliases, bir tablo görüntülenirken tablodaki sutun basliklarinin yerine 
 belirlenen ozel bir ismin kullanılabilmesine imkan verir.

 Aliases tablo yazdirilirken, 
 field isimlerini sadece o yazdirma işlemi icin değiştirir, 
 tabloda kalici bir değişiklik olmaz.
===============================================================
*/
 

 /*  
========================  ORNEK  ========================
 Satis raporu tablosuna gore kac farkli günde satis yapilmistir?
 sutun basligi "urun satilan gun sayisi" olmalidir
=========================================================
 */
 
SELECT COUNT(DISTINCT satis_tarihi) AS 'urun satilan gun sayisi'
FROM satis_raporu;


 

 /*  
========================  ORNEK  ========================
 Tablodaki satilan farkli urunleri 
 basligi ‘Satilan Urunler’ olacak sekilde listeleyin
=========================================================
 */
 
 
SELECT DISTINCT urun_adi AS 'Satilan Urunler'
FROM satis_raporu;


 

 /*  
========================  ORNEK  ========================
 Tabloda kac farkli fiyatla urun satisi oldugunu 
 basligi ‘Farkli Fiyat Sayisi’ olacak sekilde görüntüleyin.
=========================================================
 */
 

SELECT COUNT(DISTINCT birim_fiyati) AS 'Farkli Fiyat Sayisi'
FROM satis_raporu;

 

 /*  
========================  ORNEK  ========================
 Satis raporu tablosuna gore fiyati 1000 den az olan urunlerin sayisi nedir?
=========================================================
 */

SELECT COUNT(urun_adi) AS '1000 liradan ucuz olan urun sayisi'
FROM satis_raporu
WHERE birim_fiyati<1000;


 
/* 
===============================================
		       AGGREGATE FUNCTIONS / SUM()
===============================================

 Sayısal bir sütundaki tüm değerlerin toplamını hesaplar.
 
*************** SYNTAX ***************
SELECT SUM(sütun_adı) 
FROM tablo_adı;
*/ 

 /*  
========================  ORNEK  ========================
 Satis raporu tablosunda, satis yapilam toplam urun miktari kactir?
=========================================================
 */
 
SELECT SUM(satis_miktari) AS 'satilan toplam urun adedi'
FROM satis_raporu;



 

 /*  
========================  ORNEK  ========================
 Satis raporu tablosuna gore laptoplarin toplam satis geliri nedir?
=========================================================
 */
 

SELECT SUM(satis_miktari * birim_fiyati) AS 'Toplam laptop geliri '
FROM satis_raporu
WHERE urun_adi = 'Laptop';



 

 /*  
========================  ORNEK  ========================
 Satis raporu tablosuna gore 2025 Ocak-Subat aylarinda yapilan 
 toplam satis geliri nedir?
=========================================================
 */
 

SELECT SUM(satis_miktari * birim_fiyati) AS 'Toplam subat ayi geliri '
FROM satis_raporu
WHERE MONTH(satis_tarihi) = '2';




/* 
===============================================
		       AGGREGATE FUNCTIONS / AVG()
===============================================

 Sayısal bir sütundaki değerlerin ortalamasını hesaplar

*************** SYNTAX ***************
SELECT AVG(sütun_adı) 
FROM tablo_adı;
*/
 

 /*  
========================  ORNEK  ========================
 Satis raporu tablosunda, urunlerin ortalama birim fiyati nedir?
=========================================================
 */
 
 SELECT AVG(birim_fiyati) AS 'ortalama urun fiyati'
 FROM satis_raporu;




 

 /*  
========================  ORNEK  ========================
 Satis raporu tablosuna gore laptop ve tabletlerin ortalama birim fiyati nedir?
=========================================================
 */
 
 SELECT AVG(birim_fiyati) AS 'ortalama urun fiyati'
 FROM satis_raporu
 WHERE urun_adi IN ('laptop','Tablet');





 

/* 
===============================================
	    AGGREGATE FUNCTIONS / MAX() & MIN()
===============================================

 MAX( ) : Sayısal bir sütundaki en büyük değeri hesaplar.
 MIN( ) : Sayısal bir sütundaki en küçük değeri hesaplar.

*************** SYNTAX ***************
SELECT MAX(sütun_adı) / MIN(sütun_adı)
FROM tablo_adı;
*/ 



 /*  
========================  ORNEK  ========================
 Satis raporu tablosunda, en dusuk birim fiyat nedir ? 
=========================================================
 */
 
SELECT MIN(birim_fiyati) AS 'En dusuk birim fiyat'
FROM satis_raporu;
 

 /*  
========================  ORNEK  ========================
 Satis raporu tablosuna gore en eski ve en yeni satis tarihleri nelerdir?
=========================================================
 */

SELECT MIN(satis_tarihi) AS 'en eski satis tarihi' , MAX(satis_tarihi) AS 'en yeni satis tarihi'
FROM satis_raporu;
 

 /*  
========================  ORNEK  ========================
 Satis raporu tablosuna gore tek seferde en fazla satilan urun miktari nedir? 
=========================================================
 */
 
SELECT MAX(satis_miktari) AS 'Tek seferde satilan en cok urun miktari'
FROM satis_raporu;




 
