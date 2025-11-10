use SqlVideoDersleri;

/* 
===============================================
		            ORDER BY
===============================================
 SQL sorgularında sonuçları belirli bir veya birden fazla sütuna göre 
 sıralamak için kullanılır. 

 Sıralama işlemini yükselen (ascending) veya azalan (descending) düzeninde yapılabilir. 

 ASC anahtar kelimesi yükselen sıralamayı (dogal),
 DESC ise azalan sıralamayı (ters) belirtir.

 Sorguda ASC veya DESC belirtilmediyse sorgu dogal siralamaya uygun olarak ( ASC ) yapilir.

 ORDER BY, LIMIT ve OFFSET gibi filtreleme ifadeleri 
 database uzerinde degil bize donen sonuc uzerinde filtreleme yapar. 
 Database de bir degisiklik yapmaz.


*************** SYNTAX ***************
SELECT sütun_adları
FROM tablo_adı
ORDER BY sıralanacak_sütun ASC|DESC;

*/



 /*  
========================  ORNEK  ========================
 Icerisinde id, kitap_adi, yazar ve yayin_yili sutunlari bulunan 
 kitaplik tablosu olusturun
=========================================================
 */















 /*  
========================  ORNEK  ========================
 Kitaplik tablosundaki kitapları yayın yılına göre 
 eski olanlardan yeni olanlara doğru sıralayin.
=========================================================
 */







 /*  
========================  ORNEK  ========================
 Kitaplik tablosundaki kitapları yayın yılına göre 
 yeni olanlardan eski olanlara doğru sıralayin.
=========================================================
 */








 /*  
========================  ORNEK  ========================
 Kitaplik tablosundaki "Fyodor Dostoyevski"nin kitaplarını 
 yayın yılına göre eskiden gunumuze sıralayin.
=========================================================
 */









 /*  
========================  ORNEK  ========================
 Kitaplik tablosundaki yazarlarin isimlerini ters siralayin.
=========================================================
 */









 /*  
========================  ORNEK  ========================
 Kitaplik tablosundaki ismi K harfi ile T harfi arasinda olan 
 yazarlarin isimlerini ters siralayin.
=========================================================
 */









 /*  
========================  ORNEK  ========================
 Kitaplik tablosundaki "Lev Tolstoy" un kitaplarını 
 isimlerine göre dogal sırayin.
=========================================================
 */








/*
=========================================================
					NOT
=========================================================
 ORDER BY komut satirinda siralama için birden fazla sutun yazilabilir.  
   - Siralamaya ilk yazilan sutundan baslanir, 
   - Ilk sutun değeri esit olanlar ikinci sutuna gore siralanir, 
   - Eger ikinci sutunlar da eşitse ucuncu sutuna geçilir …

*/

 /*  
========================  ORNEK  ========================
 Kitaplik tablosundaki yazar isimlerini ve kitaplarini 
 iki sutunu dikkate alarak dogal sıralayin.
=========================================================
 */











 /*  
========================  ORNEK  ========================
 Kitaplik tablosundaki kitaplari yayin yilina gore gunumuzden eskiye 
 ve yazar isimlerini dogal sıralayin.
=========================================================
 */
 

 




