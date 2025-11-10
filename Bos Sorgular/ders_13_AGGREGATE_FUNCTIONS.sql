use SqlVideoDersleri;

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







-- tablodaki urun adi sayisi










 /*  
========================  ORNEK  ========================
 Satis raporu tablosundaki toplam urun cesidi sayisi nedir.
 NOT : Urun cesidi sayisini bulabilmek için once tekrarsiz bir urun listesine ihtiyaç var.
=========================================================
 */
 
 -- tablodaki urun adlarinin tekrarsiz listesi




 
-- tablodaki tekrarsiz urun adi sayisi






 /*  
========================  ORNEK  ========================
 Satis raporu tablosuna gore kac farkli günde satis yapilmistir?
=========================================================
 */
 





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
 



 

 /*  
========================  ORNEK  ========================
 Tablodaki satilan farkli urunleri 
 basligi ‘Satilan Urunler’ olacak sekilde listeleyin
=========================================================
 */
 
 



 

 /*  
========================  ORNEK  ========================
 Tabloda kac farkli fiyatla urun satisi oldugunu 
 basligi ‘Farkli Fiyat Sayisi’ olacak sekilde görüntüleyin.
=========================================================
 */
 



 

 /*  
========================  ORNEK  ========================
 Satis raporu tablosuna gore fiyati 1000 den az olan urunlerin sayisi nedir?
=========================================================
 */





 
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
 




 

 /*  
========================  ORNEK  ========================
 Satis raporu tablosuna gore laptoplarin toplam satis geliri nedir?
=========================================================
 */
 





 

 /*  
========================  ORNEK  ========================
 Satis raporu tablosuna gore 2025 Ocak-Subat aylarinda yapilan 
 toplam satis geliri nedir?
=========================================================
 */
 






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
 




 

 /*  
========================  ORNEK  ========================
 Satis raporu tablosuna gore laptop ve tabletlerin ortalama birim fiyati nedir?
=========================================================
 */
 






 

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
 

 

 /*  
========================  ORNEK  ========================
 Satis raporu tablosuna gore en eski ve en yeni satis tarihleri nelerdir?
=========================================================
 */


 

 /*  
========================  ORNEK  ========================
 Satis raporu tablosuna gore tek seferde en fazla satilan urun miktari nedir? 
=========================================================
 */
 





 
