use SqlVideoDersleri;

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









 /*  
========================  ORNEK  ========================
 Tablonun ilk hali için bir SAVEPOINT oluşturun.
=========================================================
 */








 /*  
========================  ORNEK  ========================
 isminde a harfi olan öğrencilerin yazılı notunu 5 artırın.
=========================================================
 */








 /*  
========================  ORNEK  ========================
 veli isminin uzunluğu 3 harften fazla olanlardan 3 puan silin
=========================================================
 */








 /*  
========================  ORNEK  ========================
 veli ismi Hasan olan öğrenciyi silin
=========================================================
 */









 /*  
========================  ORNEK  ========================
 Tabloyu ilkDurum’a döndürün.
=========================================================
 */










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








 /*  
========================  ORNEK  ========================
 Kursiyer tablosundaki kayıtları geri getirilemeyecek şekilde  silin
=========================================================
 */






-- Error Code: 1305. SAVEPOINT yeniBaslangic does not exist	


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














 /*  
========================  ORNEK  ========================
 kursiyer tablosundan id'si 125 ten büyük olan dataları silin.
=========================================================
 */





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








 /*  
========================  ORNEK  ========================
 dereceler tablosunu ON DELETE CASCADE ozelligi ile
 yeniden olusturun
=========================================================
 */









 /*  
========================  ORNEK  ========================
 kursiyer tablosundan id'si 125 ten büyük olan dataları silin.
=========================================================
 */




