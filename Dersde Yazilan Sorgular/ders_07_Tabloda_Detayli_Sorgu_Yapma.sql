use SqlDersleri;

/*
===============================================
        TABLODAN SORGULAMA YAPMAK / SELECT
===============================================

SELECT ile bir tablodaki tum datalar veya istenen sutunlardaki datalar goruntulenebilir.


Tablonun tamamini gormek icin
*************** SYNTAX ***************
SELECT * FROM table_name;


Bir tablodaki tum sutunlari degil, 
belirlenen bazi sutunlarin goruntulenmesi icin ise

*************** SYNTAX ***************
SELECT sütun1, sütun2 FROM tablo_adı;
*/

 /*  
========================  ORNEK  ========================
 personel tablosunun tamamını görüntüleyin.
=========================================================
 */
 
SELECT * FROM personel;
 
 
  /*  
========================  ORNEK  ========================
 kitaplar tablosundan adi ve yazar ismi sutunlarini görüntüleyin.
=========================================================
 */

SELECT kitap_adi, yazar_adi
FROM kitaplar;





/*
===============================================
					NOT
===============================================
Yukardaki sorgular sutunlar arasindan secim yapilmasina imkan tanisa da 
kayitlar arasinda (satir) secim yapilmasina izin vermez.

Örneğin; personel arasında ismi Ahmet olanlar yukardaki sorgularla LISTELENEMEZ.
*/



/*
 ===============================================
           WHERE ile Filtreleme
 ===============================================

 WHERE koşulu, SQL sorgularında belirli kriterlere göre verileri filtrelemek için kullanılır. 

 Daha spesifik ve dinamik sorgular oluşturmak için 
 WHERE ile birlikte karşılaştırma ve mantıksal operatörler, kullanılabilir.
 
*************** SYNTAX ***************
SELECT * FROM tablo_adı WHERE sütun = “istenen değer”;
*/



 /*  
========================  ORNEK  ========================
kitaplar tablosunda Lev Tolstoy'a ait kitapların ismini, yayın tarihini ve kategorisini listeleyin
=========================================================
 */

SELECT kitap_adi, yayin_yili,kategori
FROM kitaplar
WHERE yazar_Adi = 'Lev Tolstoy';







 /*  
========================  ORNEK  ========================
kitaplar tablosunda turu macera olan kitapların kitap ve yazar adlarını listeleyin
=========================================================
 */
 

SELECT kitap_adi, yazar_adi
FROM kitaplar
WHERE kategori = 'macera';



 
/*  
========================  ORNEK  ========================
İçinde id, isim, soy isim, yas, şehir sütunları bulunan people isimli bir tablo oluşturun 
ve içine null değer barındırmayan kayıtlar ekleyin.
=========================================================
 */


CREATE TABLE people (
	id INT, 
    isim VARCHAR(50), 
    soyisim VARCHAR(50), 
    yas INT, 
    şehir VARCHAR(30)
);

INSERT INTO people () VALUES (1,'Ahmet', 'Yılmaz', 30, 'Ankara');
INSERT INTO people () VALUES (2,'Mehmet', 'Kara', 25, 'İstanbul');
INSERT INTO people () VALUES (3,'Ayşe', 'Kaya', 22, 'İzmir');
INSERT INTO people () VALUES (4,'Fatma', 'Güneş', 28, 'Bursa');
INSERT INTO people () VALUES (5,'Ali', 'Çelik', 35, 'Antalya');
INSERT INTO people () VALUES (6,'Elif', 'Demir', 29, 'Ankara');
INSERT INTO people () VALUES (7,'Can', 'Özdemir', 33, 'İstanbul');
INSERT INTO people () VALUES (8,'Deniz', 'Arslan', 24, 'İzmir');
INSERT INTO people () VALUES (9,'Selin', 'Yıldız', 27, 'Bursa');
INSERT INTO people () VALUES (10,'Emre', 'Koç', 31, 'Antalya');
INSERT INTO people () VALUES (11,'Zeynep', 'Çınar', 26, 'Konya');
INSERT INTO people () VALUES (12,'Oğuz', 'Kaplan', 40, 'Samsun');
INSERT INTO people () VALUES (13,'Burcu', 'Ertuğrul', 22, 'Trabzon');
INSERT INTO people () VALUES (14,'Kaya', 'Durmaz', 35, 'Diyarbakır');
INSERT INTO people () VALUES (15,'Seda', 'Aydın', 28, 'Eskişehir');

SELECT * FROM people;

 
 
 
/*  
========================  ORNEK  ========================
People tablosundan isim ve soy isim bilgilerini listeleyin.
=========================================================
 */
 
 SELECT isim,soyisim
 FROM people;



 
  /*  
========================  ORNEK  ========================
People tablosundan sehir degeri Antalya olan kisileri listeleyin.
=========================================================
 */

SELECT *
FROM people
WHERE şehir = 'Antalya';


 
 
 
  /*  
========================  ORNEK  ========================
People tablosundan yas degeri 22 olan kisileri listeleyin.
=========================================================
 */
 

SELECT *
FROM people
WHERE yas = 22;




 
  /*  
========================  ORNEK  ========================
People tablosundan sehir degeri Ankara olan kişilerin 
yas, isim ve soyisim bilgilerini listeleyin.
=========================================================
 */
 

SELECT yas, isim, şehir
FROM people
WHERE şehir = 'Ankara';










 