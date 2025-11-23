use SqlDersleri;

/*
================================== DELETE ============================================
DELETE FROM Bir tablodan belirli koşulları sağlayan satırları 
kalıcı olarak silmek için kullanılan SQL komutudur.

WHERE ile kayıtlar filtrelenmezse DELETE FROM komutu tablodaki tüm kayıtları siler.
Tüm kayıtlar silindikten sonra tabloyu görüntülenmek istenirse 
sadece bos bir tablo görülecektir. 

DELETE komutu sadece datalari siler, tabloyu silmez.

Bir tabloda DELETE, UPDATE gibi 
tabloyu veya kayıtları değiştirecek bir işlem yaparken, 
değişiklikleri geri alma mümkün olabilir. 
Bunun için işlemler yapılmadan önce geri dönülmesi istenecek durum 
kayıt altına alınmalıdır.

SAVEPOINT : Bir işlem (transaction) içinde geri dönülebilecek bir kontrol noktası oluşturur.

ROLLBACK : İşlemleri iptal etmek için kullanılır 
           ve çalıştırıldığında tabloyu önceden belirlenen 
           bir SAVEPOINT noktasına geri dondurur.

NOT : Bilgileri geri getirirken sorun yasamamak için 
      ayarlar menüsünden sql execution auto commit tiki kaldırılmalı 
      ve mySQL workbench'i kapatıp açılmalıdır.

SYNTAX : 
	DELETE FROM tablo_adi
    WHERE field = veri;
=======================================================================================
*/



 /*  
========================  ORNEK  ========================
 İçerisinde id, isim, veli_isim ve yazili_notu field’lari bulunan 
 kursiyer tablosu oluşturun ve tabloya null olmayan değerler ekleyin.
=========================================================
 */

CREATE TABLE kursiyer
(
id char(3),
isim varchar(50),
veli_isim varchar(50),
yazili_notu int,
CONSTRAINT kursiyer_pk
PRIMARY KEY (id)
);

INSERT INTO kursiyer VALUES(123, 'Ali Can', 'Hasan',75); 
INSERT INTO kursiyer VALUES(124, 'Merve Gul', 'Ayse',85); 
INSERT INTO kursiyer VALUES(125, 'Kemal Yasa', 'Ali',85);

SELECT * 
FROM kursiyer;


 /*  
========================  ORNEK  ========================
 Tablonun ilk hali için bir SAVEPOINT oluşturun.
=========================================================
 */

SAVEPOINT ilk_durum;

 /*  
========================  ORNEK  ========================
 isminde a harfi olan öğrencilerin yazılı notunu 5 artırın.
=========================================================
 */

UPDATE kursiyer
SET yazili_notu = yazili_notu + 5
WHERE isim LIKE '%a%';




 /*  
========================  ORNEK  ========================
 veli isminin uzunluğu 3 harften fazla olanlardan 3 puan silin
=========================================================
 */


UPDATE kursiyer
SET yazili_notu = yazili_notu - 3
WHERE veli_isim LIKE '___%';




 /*  
========================  ORNEK  ========================
 veli ismi Hasan olan öğrenciyi silin
=========================================================
 */

DELETE FROM kursiyer
WHERE veli_isim = 'Hasan' ;



 /*  
========================  ORNEK  ========================
 Tabloyu ilkDurum’a döndürün.
=========================================================
 */


SELECT * FROM kursiyer;

ROLLBACK TO ilk_durum;







 /*  
=======================  NOTLAR  ========================
 ROLLBACK komutunda tablo ismi olmadigi unutulmamalidir. 
 Yani ROLLBACK belirli bir tablo için değil tum database için calisir.
 
 ROLLBACK komutu çalıştığında SAVEPOINT işleminin yapıldığı duruma geri dönecek ve 
 iki komut arasında tüm işlemler silinecektir. 
 Geri dönmek istenecek birden fazla durum varsa 
 her biri için ayrı bir SAVEPOINT olusturmak gereklidir.
=========================================================
 */




 /*  
=======================  TRUNCATE  ======================
 Bir tablodaki tüm verileri hızlıca ve kalıcı olarak siler, 
 ancak tablo yapısını korur. 
 TRUNCATE tüm kayıtları siler, WHERE ile kullanılamaz.
=========================================================
 */

 /*  
========================  ORNEK  ========================
 Tablonun son hali için yeni bir SAVEPOINT oluşturun.
=========================================================
 */

SAVEPOINT son_durum;



 /*  
========================  ORNEK  ========================
 Kursiyer tablosundaki kayıtları geri getirilemeyecek şekilde  silin
=========================================================
 */

TRUNCATE  kursiyer;


ROLLBACK TO son_durum;

-- Error Code: 1305. SAVEPOINT son_durum does not exist	


 /*  
=========================  NOT  =========================
 Related tablolarda silme işlemi yaparken 
 Parent – Child ilişkisine dikkat edilmelidir. 
 
 PRIMARY KEY sutununda olmayan hic bir datanin 
 FOREIGN KEY sutununda kullanilamayacagi unutulmamalidir. 
=========================================================
 */




 /*  
========================  ORNEK  ========================
 yeni bir dereceler tablosu oluşturun. 
 Kursiyer ve dereceler tablolarina kayit ekleyin
=========================================================
 */

INSERT INTO kursiyer VALUES
		(123,'Ali Can', 'Hasan', 75),
		(124,'Merve Gul', 'Ayse', 85),
		(125,'Kemal Yasa', 'Hasan', 85),
		(126,'Nesıbe Yılmaz', 'Ayse', 95),
		(127,'Mustafa Bak', 'Can', 99);


CREATE TABLE dereceler(
			kursiyer_id CHAR(3),
			ders_adi VARCHAR(30),
			yazili_notu INT,
			CONSTRAINT kursiyer_id_fk FOREIGN KEY (kursiyer_id)
			REFERENCES kursiyer(id) 
		);

INSERT INTO dereceler VALUES
		(123, 'Kimya', 75),
		(124, 'Fizik', 65),
		(125, 'Tarih', 90),
		(126, 'Matematik', 90),
		(127, 'Matematik', 23);

SELECT *
FROM kursiyer;

SELECT *
FROM dereceler;

 /*  
========================  ORNEK  ========================
 kursiyer tablosundan id'si 125 ten büyük olan dataları silin.
=========================================================
 */

DELETE FROM kursiyer
WHERE id > 125;

-- Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails 
-- (`sqlvideodersleri`.`dereceler`, CONSTRAINT `kursiyer_id_fk` FOREIGN KEY (`kursiyer_id`) REFERENCES `kursiyer` (`id`))


-- kursiyer tablosu parent tablo olduğundan, kursiyer tablosundan kayıt silmeden önce 
-- dereceler tablosundan ilintili kayıtlar silinmelidir.





 /*  
==================  ON DELETE CASCADE  ==================
 ON DELETE CASCADE, bir ana (parent) tablodan silinmek istenen kayda bağlı olan 
 alt (child) tablodaki tüm kayıtların da otomatik olarak silinmesini sağlar.

 ON DELETE CASCADE ozelliginin kullanilabilmesi için 
 bu komut child tablo oluşturulurken Foreign Key satirinda kullanilmalidir. 

=========================================================
 */




 /*  
========================  ORNEK  ========================
 dereceler tablosunu tamamen silin
 kursiyer tablosundaki kayitlari geri gelmeyecek sekilde silin
=========================================================
 */

DROP TABLE dereceler;

TRUNCATE kursiyer;


 /*  
========================  ORNEK  ========================
 dereceler tablosunu ON DELETE CASCADE ozelligi ile
 yeniden olusturun
=========================================================
 */

CREATE TABLE dereceler (
			kursiyer_id CHAR(3),
			ders_adi VARCHAR(30),
			yazili_notu INT,
			CONSTRAINT kursiyer_id_fk FOREIGN KEY (kursiyer_id)
			REFERENCES kursiyer(id)  ON DELETE CASCADE
		);

-- kursiyer ve dereceler tablolarina yeniden kayit girin
-- yukardaki kodlardan ekledik


 /*  
========================  ORNEK  ========================
 kursiyer tablosundan id'si 125 ten büyük olan dataları silin.
=========================================================
 */

DELETE FROM kursiyer
WHERE id > 125;



