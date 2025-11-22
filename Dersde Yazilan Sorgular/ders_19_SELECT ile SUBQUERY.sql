use SqlDersleri;
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



SELECT isim, soyisim, ders_adi
FROM ogretmenler;


-- ogretmen_id'si 11 olan ogretmenin ogrencilerinin genel not ortalamasini yazdirin
SELECT AVG(ortalama_not)
FROM dersler
WHERE ogretmen_id = 13;


-- dinamik olarak iki sorguyu birlestirelim


SELECT isim, soyisim, ders_adi, (	SELECT AVG(ortalama_not)
									FROM dersler
									WHERE ogretmenler.ogretmen_id = dersler.ogretmen_id)
FROM ogretmenler;




 /*  
========================  ORNEK  ========================
 Her bir ogretmenin, ismini, soyismini, bransini 
 ve dersini alan ogrenciler icinde en yuksek ortalama notu 
 listeleyen bir QUERY yazin.
=========================================================
 */
 
SELECT isim, soyisim, ders_adi
FROM ogretmenler;

-- ogretmen_id'si 11 olan ogretmenin ogrencileri icinde en yuksek not ortalamasini yazdirin

SELECT MAX(ortalama_not)
FROM dersler
WHERE ogretmen_id = 13;

-- dinamik olarak iki sorguyu birlestirelim


SELECT isim, soyisim, ders_adi , (	SELECT MAX(ortalama_not)
									FROM dersler
									WHERE ogretmenler.ogretmen_id = dersler.ogretmen_id)
FROM ogretmenler;



 /*  
========================  ORNEK  ========================
 Her bir ogretmenin, ismini, soyismini, bransini 
 ve dersini alan kac ogrenci oldugunu listeleyen bir QUERY yazin.
=========================================================
 */
 
 
SELECT isim, soyisim, ders_adi, (	SELECT COUNT(ortalama_not)
									FROM dersler
									WHERE ogretmenler.ogretmen_id = dersler.ogretmen_id)
                                    AS 'ogretmenin ogrenci sayisi'
FROM ogretmenler;






 

 /*  
========================  ORNEK  ========================
 Matematik anlatan ogretmenlerin, ismini, soyismini, bransini 
 ve dersini alan kac ogrenci oldugunu listeleyen bir QUERY yazin.
=========================================================
 */
 
SELECT isim, soyisim, ders_adi,(	SELECT COUNT(ortalama_not)
									FROM dersler
									WHERE ogretmenler.ogretmen_id = dersler.ogretmen_id)
                                    AS 'ogretmenin ogrenci sayisi'
FROM ogretmenler
WHERE ders_adi = 'Matematik';
 






 /*  
========================  ORNEK  ========================
 Her bir ogrencinin ismini, soyismini ve kac ders aldigini yazdirin.
=========================================================
 */
 

SELECT isim,soyisim, (	SELECT COUNT(ders_adi)
						FROM dersler
						WHERE ogrenci.ogrenci_no = dersler.ogrenci_no)
                        AS 'ogrencinin aldigi ders sayisi'
FROM ogrenci;





 /*  
========================  ORNEK  ========================
 Soyadi Kaya olan ogrencilerin ismini, soyismini 
 ve aldigi tum derslerin genel not ortalamasini yazdirin.
=========================================================
 */
 
 SELECT isim, soyisim, ( SELECT AVG(ortalama_not)
						 FROM dersler
						 WHERE ogrenci.ogrenci_no = dersler.ogrenci_no)
                         AS 'ogrencinin genel not ortalamasi'
 FROM ogrenci
 WHERE soyisim = 'Kaya' ;
 
 







 
 /*  
========================  ORNEK  ========================
 ismi c ile l arasinda olan ogrencilerin ismini, soyismini 
 ve aldigi dersler icinde en yuksek ortalamaya sahip olan dersin notunu yazdirin.
=========================================================
 */
 
 
 SELECT isim, soyisim , (	SELECT MAX(ortalama_not)
							FROM dersler
							WHERE ogrenci.ogrenci_no = dersler.ogrenci_no)
                            AS 'ogrencinin en yuksek notu'
 FROM ogrenci
 WHERE isim BETWEEN 'c' AND 'l' ;
 

 

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
 
CREATE TABLE mayis_satislar
(
urun_id int,
musteri_isim varchar(50),
urun_isim varchar(50)
);

INSERT INTO mayis_satislar VALUES (10, 'Mark', 'Honda');
INSERT INTO mayis_satislar VALUES (10, 'Mark', 'Honda');
INSERT INTO mayis_satislar VALUES (20, 'John', 'Toyota');
INSERT INTO mayis_satislar VALUES (30, 'Amy', 'Ford');
INSERT INTO mayis_satislar VALUES (20, 'Mark', 'Toyota');
INSERT INTO mayis_satislar VALUES (10, 'Adem', 'Honda');
INSERT INTO mayis_satislar VALUES (40, 'John', 'Hyundai');
INSERT INTO mayis_satislar VALUES (20, 'Eddie', 'Toyota');

CREATE TABLE nisan_satislar
(
urun_id int,
musteri_isim varchar(50),
urun_isim varchar(50)
);

INSERT INTO nisan_satislar VALUES (10, 'Hasan', 'Honda');
INSERT INTO nisan_satislar VALUES (10, 'Kemal', 'Honda');
INSERT INTO nisan_satislar VALUES (20, 'Ayse', 'Toyota');
INSERT INTO nisan_satislar VALUES (50, 'Yasar', 'Volvo');
INSERT INTO nisan_satislar VALUES (20, 'Mine', 'Toyota');

SELECT * 
FROM mayis_satislar;


SELECT * 
FROM nisan_satislar;




 /*  
========================  ORNEK  ========================
 Her iki ayda da ayni id ile satilan urunlerin 
 urun_id'lerini ve urunleri mayis ayinda alanlarin isimlerini 
 getiren bir query yaziniz.
=========================================================
 */
 
 SELECT musteri_isim, urun_id
 FROM mayis_satislar 
 WHERE urun_id IN (	SELECT urun_id
					FROM nisan_satislar
                    WHERE mayis_satislar.urun_id = nisan_satislar.urun_id);
 


 SELECT musteri_isim, urun_id
 FROM mayis_satislar 
 WHERE  EXISTS (	SELECT urun_id
					FROM nisan_satislar
					WHERE mayis_satislar.urun_id = nisan_satislar.urun_id);


 
 

 /*  
========================  ORNEK  ========================
 mayis ayinda olup, nisan ayinda olmayan id'leri 
 ve mayis ayinda o urunu alan müşteri isimlerini görüntüleyin.
=========================================================
 */
 
 SELECT musteri_isim, urun_id
 FROM mayis_satislar 
 WHERE urun_id NOT IN (SELECT urun_id
					FROM nisan_satislar
					WHERE mayis_satislar.urun_id = nisan_satislar.urun_id);




 SELECT musteri_isim, urun_id
 FROM mayis_satislar 
 WHERE NOT EXISTS (SELECT urun_id
					FROM nisan_satislar
					WHERE mayis_satislar.urun_id = nisan_satislar.urun_id);



