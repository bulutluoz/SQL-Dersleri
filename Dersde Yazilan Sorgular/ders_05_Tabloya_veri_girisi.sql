use SqlDersleri;

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

SELECT * FROM kitaplar;

/*  
========================  ORNEK  ========================
 Kitaplar tablosuna 1, 'Savaş ve Barış’, 'Lev Tolstoy’, 1869, 'Tarihi’  degerleri ile bir kayit ekleyin
=========================================================
 */
 
INSERT INTO kitaplar
VALUES (1, 'Savaş ve Barış', 'Lev Tolstoy', 1869,'Tarihi');

 


/*  
========================  ORNEK  ========================
 Kitaplar tablosuna 11, ‘Araba Sevdasi’  degerleri ile bir kayit ekleyin
=========================================================
 */

INSERT INTO kitaplar (kitap_id,kitap_adi)
VALUES (11, 'Araba Sevdasi');


/*  
========================  ORNEK  ========================
 İçerisinde id, isim, not_ortalamasi, adres ve last_modification (tarih) sütunları olan 
 bir öğrenciler tablosu oluşturun. 
=========================================================
 */

CREATE TABLE ogrenciler (
	id INT, 
    isim VARCHAR(50), 
    not_ortalamasi INT, 
    adres VARCHAR(100),
    last_modification DATE
);



/*  
========================  ORNEK  ========================
Ogrenciler tablosundaki tum sutunlara 
123456789, 'Ali Can', 11, 'Istanbul,bakirkoy', '2020-10-14'  
değerlerini girerek bir ogrenci ekleyin. 
=========================================================
 */

INSERT INTO ogrenciler 
VALUES(123456789, 'Ali Can', 11, 'Istanbul,bakirkoy', '2020-10-14');

SELECT * FROM ogrenciler;
/*  
========================  ORNEK  ========================
Ogrenciler tablosuna sadece id ve isim değeri olarak
234565678, ‘Veli Cem' 
bilgilerine sahip bir ogrenci ekleyin. 
=========================================================
 */

INSERT INTO ogrenciler(id, isim)
VALUES(234565678, 'Veli Cem');


/*  
========================  ORNEK  ========================
 Kitaplar tablosuna null deger olmadan coklu veri girisi saglayiniz.
 NOT : Kitaplar tablosu daha önce oluşturulduğu için, yeni kayıt eklemeden önce, 
       tablonun ve sütunların son durumunu kontrol etmek gerekir.
=========================================================
 */

INSERT INTO kitaplar
VALUES  (2,	'Suç ve Ceza',	'Fyodor Dostoyevski',	1866, 	'Psikolojik'),
		(3,	'Anna Karenina',	'Lev Tolstoy',	1877,	'Aşk'),
		(4,	'1984',	'George Orwell',	1949,	'Politik'),
		(5,	'Büyük Umutlar',	'Charles Dickens',	1861,	'Dram'),
		(6,	'Don Kişot',	'Miguel de Cervantes',	1605,	'Macera'),
		(7,	'Gurur ve Önyargı',	'Jane Austen',	1813,	'Dram'),
		(8,	'Monte Kristo Kontu',	'Alexandre Dumas',	1844,	'Macera'),
		(9,	'Faust',	'Johann Wolfgang von Goethe',	1808,	'Felsefi'),
		(10,'Ulysses',	'James Joyce',	1922,	'Modernist');


/*  
========================  ORNEK  ========================
 Personel tablosuna null deger olmadan coklu veri girisi saglayiniz.
=========================================================
 */
INSERT INTO personel
VALUES(1, 'Ahmet', 'CELİK', '1988-10-06', 'Muhasebeci', 45000),
	  (2, 'Ayse', 'DEMİR', '1988-12-06', 'Mudur', 55000);

SELECT * 
FROM personel;

TRUNCATE TABLE personel;
      
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
CREATE TABLE musteriler(
	urun_id INT,
    musteri_isim VARCHAR(40),
    urun_isim VARCHAR(40)
);


-- musteriler tablosundaki tum datalari goruntuleyin

SELECT * FROM musteriler;


-- Müşteriler tablosuna null değer olmadan çoklu veri girişi yapin.
INSERT INTO musteriler VALUES (10, 'Mark', 'Orange');
INSERT INTO musteriler VALUES (10, 'Mark', 'Orange');
INSERT INTO musteriler VALUES (20, 'John', 'Apple');
INSERT INTO musteriler VALUES (30, 'Amy', 'Palm');
INSERT INTO musteriler VALUES (20, 'Mark', 'Apple');
INSERT INTO musteriler VALUES (10, 'Adem', 'Orange');
INSERT INTO musteriler VALUES (40, 'John', 'Apricot');
INSERT INTO musteriler VALUES (20, 'Eddie', 'Apple');


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

 CREATE TABLE ulkeler(
	ulke_adi VARCHAR(50), 
    ulke_adi_uzun_yazilis VARCHAR(50), 
    ISO_Kodu CHAR(3), 
    ulke_kodu CHAR(2), 
    baskent_turkce VARCHAR(50),
    baskent_ingilizce VARCHAR(50)
 );
 
insert into ulkeler values('Afganistan', 'Afganistan İslam Cumhuriyeti', 'AFG', 'AF', 'Kâbil', 'Kabul');
insert into ulkeler values('Almanya', 'Almanya Federal Cumhuriyeti', 'DEU', 'DE', 'Berlin', 'Berlin');
insert into ulkeler values('Andora', 'Andora Prensliği', 'AND', 'AD', 'Andora La Vella', 'Andorra la Vella');
insert into ulkeler values('Arjantin', 'Arjantin Cumhuriyeti', 'ARC', 'AR', 'Buenos Aires', 'Buenos Aires');
insert into ulkeler values('Arnavutluk', 'Arnavutluk Cumhuriyeti', 'ALB', 'AL', 'Tiran', 'Tiran');
insert into ulkeler values('Azerbaycan', 'Azerbaycan Cumhuriyeti', 'AZE', 'AZ', 'Bakü', 'Baku');
insert into ulkeler values('Bahama Adaları', 'Bahama Milletler Topluluğu', 'BHS', 'BS', 'Nassau', 'Nassau');
insert into ulkeler values('Bahreyn', 'Bahreyn Krallığı', 'BHR', 'BH', 'Manama', 'Manama');
insert into ulkeler values('Bangladeş', 'Bangladeş Halk Cumhuriyeti', 'BGD', 'BD', 'Dakka', 'Dhaka');
insert into ulkeler values('Belçika', 'Belçika Krallığı', 'BEL', 'BE', 'Brüksel', 'Brussels');

-- ulke adi ve ulke kodu sutunlarini listeleyin
SELECT ulke_adi,ulke_kodu
FROM ulkeler;


-- ulke baskent isimlerini turkce ve ingilizce olarak listeleyin
SELECT baskent_turkce,baskent_ingilizce
FROM ulkeler;



/*  
========================  ORNEK  ========================
 Icerisinde ulke_adi, baskent_turkce ve baskent_nufusu sütunları olan bir başkentler tablosu oluşturun.
=========================================================
 */

CREATE TABLE baskentler(
	ulke_adi VARCHAR(50), 
    baskent_turkce VARCHAR(50),
    baskent_nufusu INT
);
 -- tum tabloyu goruntuleyin

 SELECT * FROM baskentler;
 
 /*  
========================  ORNEK  ========================
 baskentler tablosuna null deger olmadan coklu veri girisi saglayiniz.
=========================================================
 */

insert into baskentler values('Afganistan', 'Kâbil', '3140853');
insert into baskentler values('Almanya', 'Berlin', '3520000');
insert into baskentler values('Andora', 'Andora La Vella', '22884');
insert into baskentler values('Arjantin', 'Buenos Aires', '2891082');
insert into baskentler values('Arnavutluk', 'Tiran', '763634');
insert into baskentler values('Azerbaycan', 'Bakü', '2204200');
insert into baskentler values('Bahama Adaları', 'Nassau', '248948');
insert into baskentler values('Bahreyn', 'Manama', '140616');
insert into baskentler values('Bangladeş', 'Dakka', '8906000');
insert into baskentler values('Belçika', 'Brüksel', '1080790');










