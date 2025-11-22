/* 
======================== SELECT ile SUBQUERY ===========================

SELECT ile SUBQUERY kullanimi :
  
-- SELECT -- hangi sutunlari(field) getirsin
-- FROM -- hangi tablodan(table) getirsin
-- WHERE -- hangi satirlari(record) getirsin
  
 * Yazdığımız QUERY'lerde SELECT satırında field isimleri kullanıyoruz. 
   Eğer SELECT satırında bir SUBQUERY yazılırsa, sonuç olarak tek bir kayıt değil bir field döndürür.

 * SELECT satirinda SUBQUERY yazacaksak SUM, COUNT, MIN, MAX ve AVG gibi 
  fonksiyonlar kullanilir. Bu fonksiyonlara AGGREGATE FUNCTION denir.
  
 => Interview Question : Subquery'i Select satirinda kullanirsaniz ne ile 
kullanmaniz gerekir?

=========================================================================\
*/ 
 

 /*  
========================  ORNEK  ========================
 Her bir ogretmenin, ismini, soyismini, bransini 
 ve dersini alan ogrencilerin notlarinin ortalamasini listeleyen bir QUERY yazin.
=========================================================
 */
 
/*
Verilen görev incelendiğinde, ismini, soyismini, branş bilgilerinin ogretmenler tablosundan bulunabileceği görülecektir.
Not ortalamasi ise dersler tablosundaki kayitlardan Aggregate fonksiyonu kullanılarak elde edilebilir.
Iki tablo arasinda baglanti ogretmen_id ile kurulabilir.


SELECT isim,soyisim,ders_adi, (buraya ortlama notu hesaplayan bir sorgu gelmeli)
FROM ogretmenler;

ornegin sadece ogretmen_id 11 olan ogretmenin 
ogrencilerinin genel not ortalamasini goruntulemek icin
asagidaki query yazilabilirdi

SELECT AVG(ortalama_not)  
FROM dersler 
WHERE ogretmen_id = 11) AS '11 nolu ogretmenin ogrencilerinin genel not ortalamasi'

*/










 /*  
========================  ORNEK  ========================
 Her bir ogretmenin, ismini, soyismini, bransini 
 ve dersini alan ogrenciler icinde en yuksek ortalama notu 
 listeleyen bir QUERY yazin.
=========================================================
 */
 







 /*  
========================  ORNEK  ========================
 Her bir ogretmenin, ismini, soyismini, bransini 
 ve dersini alan kac ogrenci oldugunu listeleyen bir QUERY yazin.
=========================================================
 */
 
 





 

 /*  
========================  ORNEK  ========================
 Matematik anlatan ogretmenlerin, ismini, soyismini, bransini 
 ve dersini alan kac ogrenci oldugunu listeleyen bir QUERY yazin.
=========================================================
 */
 
 






 /*  
========================  ORNEK  ========================
 Her bir ogrencinin ismini, soyismini ve kac ders aldigini yazdirin.
=========================================================
 */
 







 /*  
========================  ORNEK  ========================
 Soyadi Kaya olan ogrencilerin ismini, soyismini 
 ve aldigi tum derslerin genel not ortalamasini yazdirin.
=========================================================
 */
 
 






 
 /*  
========================  ORNEK  ========================
 mi c ile l arasinda olan ogrencilerin
ismini, soyismini ve aldigi dersler icinde en yuksek ortalamaya sahip olan dersin notunu yazdirin.
=========================================================
 */
 
 




 

/* 
======================== EXISTS CONDITION ===========================
EXISTS Condition subquery'ler ile kullanilir. IN ifadesinin kullanimina
benzer olarak, EXISTS ve NOT EXISTS ifadeleri de alt sorgudan getirilen 
degerlerin icerisinde bir degerin olmasi veya olmamasi durumunda islem 
yapilmasini saglar.
======================================================================
*/
 
 
 
 



 /*  
========================  ORNEK  ========================
 Nisan_satislar ve mayis satislar iki tablo oluşturup null olmayan kayitlar ekleyin.
=========================================================
 */
 








 
 



 /*  
========================  ORNEK  ========================
 Her iki ayda da ayni id ile satilan urunlerin 
 urun_id'lerini ve urunleri mayis ayinda alanlarin isimlerini 
 getiren bir query yaziniz.
=========================================================
 */
 
 





 
 

 /*  
========================  ORNEK  ========================
 mayis ayinda olup, nisan ayinda olmayan id'leri 
 ve mayis ayinda o urunu alan müşteri isimlerini görüntüleyin.
=========================================================
 */
 









