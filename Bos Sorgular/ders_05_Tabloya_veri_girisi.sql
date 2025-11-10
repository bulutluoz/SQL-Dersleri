use SqlVideoDersleri;

/*
===============================================
		  TABLOYA VERI GIRISI - INSERT
===============================================
 INSERT INTO DML grubu SQL komutlarındandır.  
 INSERT INTO ifadesi, SQL'de veritabanı tablolarına yeni satırlar (kayıtlar) eklemek için kullanılır. 
 
 CREATE TABLE komutu ile bir tablo oluşturabiliriz
 ancak bu tablo içinde deger olmayan bos bir tablo olacaktır.

 INSERT INTO , belirtilen tabloya yeni veri girişi yapmanıza olanak tanır. 
 Bilgi eklerken girilen verilerin hangi sütuna ait değerler oldugunu belirtmeniz gerekir.

 INSERT INTO ile tabloya data eklemeden once mutlaka tabloyu iyi incelemeli, 
 ekleyecek datalarin tabloya UYGUN OLDUGUNDAN emin olunmalidir.

 Bunun için MySQL workbench’de tablo ve sutun ozelliklerini gösteren 
 Object Info bolumune goz atmak onemlidir.
*/

/*
===============================================
		           NOTLAR
===============================================
 1- Tabloyu oluştururken hangi data type belirlenmiş ise o türden bir veri girişi yapmalımalidir.
 2- Metin ifadeleri 'tek tırnak' içinde yazılır.
 3- DATE data türü 'tek tırnak' içinde yazılır.
 4- MySQL'in default tarih formatı YYYY-MM-DD seklindedir.
 5- Eğer kayıt oluştururken, tablodaki tüm sütunlara değer girilecekse 
    sütun isimlerini tek tek yazmaya gerek olmadan değerler girilebilir.
	Ancak sadece belirli sütunlara giriş yapılacaksa hangi sütunlara giriş yapılacağı belirtmelidir.
 6- SQL'de bir komutu çalıştırmak için yeniden yazmak SART DEGILDIR 
    daha önce yazılan bir komut seçilip çalıştırılabilir.
 7- Query sayfasındaki komutlar, veri tabanından bağımsızdır. 
    Bir query HER CALISTIGINDA kendisine verilen görevi yeniden yapar, 
    daha önce çalışıp çalışmadığına bakmaz
*/

/*
*************** SYNTAX ***************
INSERT INTO table_name 
	VALUES (
	std_id CHAR(4),           
	std_name VARCHAR(25),     
	std_age INT				  
	);

*/

-- Kitaplar tablosunu goruntuleyin



/*  
========================  ORNEK  ========================
 Kitaplar tablosuna 1, 'Savaş ve Barış’, 'Lev Tolstoy’, 1869, 'Tarihi’  degerleri ile bir kayit ekleyin
=========================================================
 */
 


 


/*  
========================  ORNEK  ========================
 Kitaplar tablosuna 11, ‘Araba Sevdasi’  degerleri ile bir kayit ekleyin
=========================================================
 */


/*  
========================  ORNEK  ========================
 İçerisinde id, isim, not_ortalamasi, adres ve last_modification (tarih) sütunları olan 
 bir öğrenciler tablosu oluşturun. 
=========================================================
 */




/*  
========================  ORNEK  ========================
Ogrenciler tablosundaki tum sutunlara 
123456789, 'Ali Can', 11, 'Istanbul,bakirkoy', '2020-10-14'  
değerlerini girerek bir ogrenci ekleyin. 
=========================================================
 */




/*  
========================  ORNEK  ========================
Ogrenciler tablosuna sadece id ve isim değeri olarak
234565678, ‘Veli Cem' 
bilgilerine sahip bir ogrenci ekleyin. 
=========================================================
 */




/*  
========================  ORNEK  ========================
 Kitaplar tablosuna null deger olmadan coklu veri girisi saglayiniz.
 NOT : Kitaplar tablosu daha önce oluşturulduğu için, yeni kayıt eklemeden önce, 
       tablonun ve sütunların son durumunu kontrol etmek gerekir.
=========================================================
 */




/*  
========================  ORNEK  ========================
 Personel tablosuna null deger olmadan coklu veri girisi saglayiniz.
=========================================================
 */


      
/*  
NOT : Giris yaparken ayni id ile yeni kayit eklemek istenirse, 
      SQL herhangi bir constraint (sinirlama) var mi diye sutun ozelliklerini kontrol eder 
      ve bir sinirlama yoksa istenen işlemi yapar
 */ 





/*  
========================  ORNEK  ========================
 İçerisinde urun id, müşteri isim ve urun isim sütunları olan bir müşteriler tablosu oluşturun. 
=========================================================
 */



-- musteriler tablosundaki tum datalari goruntuleyin




-- Müşteriler tablosuna null değer olmadan çoklu veri girişi yapin.



/*
 NOT : Giris yaparken INSERT INTO ile 
       aralarinda virgül birakarak tum kayitlar girilebileceği gibi 
       bu ornekte olduğu gibi her bir kayit için ayri bir INSERT INTO de kullanilabilir
*/


/*  
========================  ORNEK  ========================
 İçerisinde ulke_adi, ulke_adi_uzun_yazilis, ISO_Kodu, ulke_kodu, baskent_turkce 
 ve baskent_ingilizce sutunlari olan bir ulkeler tablosu oluşturun. 
=========================================================
 */


 


-- ulke adi ve ulke kodu sutunlarini listeleyin


-- ulke baskent isimlerini turkce ve ingilizce olarak listeleyin




/*  
========================  ORNEK  ========================
 Icerisinde ulke_adi, baskent_turkce ve baskent_nufusu sütunları olan bir başkentler tablosu oluşturun.
=========================================================
 */


 -- tum tabloyu goruntuleyin

 
 /*  
========================  ORNEK  ========================
 baskentler tablosuna null deger olmadan coklu veri girisi saglayiniz.
=========================================================
 */












