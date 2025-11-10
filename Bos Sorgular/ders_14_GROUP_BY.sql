use SqlVideoDersleri;

/* 
===============================================
		           GROUP BY
===============================================

 Veri tabanı sorgu sonuçlarını 
 belirli bir veya birden fazla sütuna göre 
 satırları gruplandırmak için kullanılır.
 
 
 GROUP BY, genellikle aggregate (gruplama) fonksiyonlar 
 (COUNT( ), SUM( ), AVG( ), MIN( ), MAX( ) vb.) ile birlikte kullanılır.


 GROUP BY, ifadesi, 
 belirtilen sütunlardaki değerlere göre benzersiz gruplar oluşturur 
 ve her grup için aggregate fonksiyonların sonuçlarını döndürür. 
 Bir tabloda veriler üzerinde özetlemeler ve analizler yapılabilmesini sağlar.


Not:
 GROUP BY kullanılırken, 
 SELECT ifadesinde belirtilen sütunların 
 ya gruplandırma ifadesinde (GROUP BY kısmında) belirtilmiş olması 
 ya da bir agregate fonksiyonunun parçası olması gerekir.

 Birden fazla sütun üzerinde gruplandırma yapılabilir. 
 Bu durumda, sütunlar virgül ile ayrılarak GROUP BY ifadesine eklenir.


*************** SYNTAX ***************
SELECT sutun_adi, SUM(adet) AS toplam_adet
FROM tablo_adi
GROUP BY sutun_adi(gruplanacak verilerin oldugu);

*/


 /*  
========================  ORNEK  ========================
 Icerisinde id, urun_adi, miktar_kg, satis_fiyati, satis_tarihi ve kategori 
 sutunlari bulunan market isimli bir tablo oluşturun 
 ve içine null icermeyen kayitlar ekleyin.
=========================================================
 */









                    
   



 /*  
========================  ORNEK  ========================
 market tablosundaki urunleri listeleyin
=========================================================
 */










 /*  
========================  ORNEK  ========================
 market tablosundaki urunleri tekrarsiz olarak listeleyin
=========================================================
 */








 /*  
========================  ORNEK  ========================
 market tablosundaki urunleri 
 ve her bir urunun toplam satis miktarini(kg) listeleyin
=========================================================
 */








 /*  
========================  ORNEK  ========================
 market tablosundaki her bir kategori icin toplam gelir nedir? 
=========================================================
 */








 /*  
========================  ORNEK  ========================
 market tablosundaki en cok satilan urun nedir?
=========================================================
 */









 /*  
========================  ORNEK  ========================
 market tablosundaki her bir gun icin ortalama birim fiyati nedir?
=========================================================
 */








 /*  
========================  ORNEK  ========================
 market tablosundaki satilan en pahali urunun bilgileri nelerdir? 
=========================================================
 */







 /*  
========================  ORNEK  ========================
 market tablosunda bulunan meyve kategorisindeki urunlerin 
 toplam satis miktari nedir? 
=========================================================
 */








 /*  
========================  ORNEK  ========================
 market tablosundaki her bir urun icin ortalama satis fiyati nedir? 
=========================================================
 */








 /*  
========================  ORNEK  ========================
 market tablosundaki her bir kategorideki en yüksek birim fiyat nedir? 
=========================================================
 */








