use SqlDersleri;

/* 
====================================== UPDATE ========================================
Bir tablodaki mevcut verileri değiştirmek için kullanılır.

Güncelleme yapılırken mutlaka WHERE koşulu kullanılmalıdır, 
aksi halde tüm kayıtlar güncellenebilir. 

Güncelleme yapılırken güncellenecek sütunların veri türüne 
ve kurallara uygun değerler almasına dikkat edilmelidir.

Relational bir database'de update yaparken daha dikkatli olunmasi gerekir.
 
PRIMARY KEY sutununda olmayan hic bir datanin 
FOREIGN KEY sutununda kullanilamayacagi unutulmamalidir.



-----Syntax-----
UPDATE table_name
SET field1=''
WHERE condition;

NOT : UPDATE işlemlerinin yapılabilmesi için 
Ayarlar -> SQL Editor -> "Safe Updates" 
check box'indaki tik işareti kaldırılıp kaydedilmeli, 
sonrasında MySQL kapatılıp tekrar açılmalıdır.
========================================================================================
*/




 /*  
========================  ORNEK  ========================
 Kitaplar tablosundaki Araba Sevdası kitabinin yazar adını 
 Recaizade Mahmut Ekrem olarak güncelleyin.
=========================================================
 */

UPDATE kitaplar
SET yazar_adi = 'Recaizade Mahmut Ekrem'
WHERE kitap_adi = 'Araba sevdasi';

SELECT * 
FROM kitaplar;




 /*  
========================  ORNEK  ========================
 Kitaplar tablosundaki Araba Sevdası kitabinin yayın yılını 1896, 
 kategorisini roman olarak güncelleyin.
=========================================================
 */

UPDATE kitaplar
SET yayin_yili = 1896, kategori = 'roman'
WHERE kitap_adi = 'Araba sevdasi';







 /*  
========================  ORNEK  ========================
 Manav tablosunda 101 numaralı müşteriye satılan portakalın 
 fiyatını 20 olarak güncelleyin.
=========================================================
 */


SELECT *
FROM manav;

UPDATE manav
SET urun_kg_fiyati = 20
WHERE id = 101 AND urun_ismi = 'portakal' ;





 /*  
========================  ORNEK  ========================
 Manav tablosunda tüm elma fiyatlarını 
 tablodaki en ucuz elma fiyatına getirecek şekilde güncelleyin.
=========================================================
 */

-- en ucuz elma fiyatini bulun
SELECT MIN(urun_kg_fiyati)
FROM manav
WHERE urun_ismi = 'Elma' ;
-- 20

UPDATE manav
SET urun_kg_fiyati = 20
WHERE urun_ismi = 'Elma' ;


-- kodu dinamik yapalim


UPDATE manav
SET urun_kg_fiyati = (	SELECT MIN(urun_kg_fiyati)
						FROM manav
						WHERE urun_ismi = 'Elma')
WHERE urun_ismi = 'Elma' ;

-- Error Code: 1093. You can't specify target table 'manav' for update in FROM clause	



-- subquery her durumda calismayabilir
-- veya subquery yerine daha basit bir akis olusturmak istenebilir
-- once istenen degeri bir variable'a atayalim 

SET @enUcuzElmaFiyati = (SELECT MIN(urun_kg_fiyati)
						 FROM manav
						 WHERE urun_ismi = 'Elma') ;


-- 2. Değeri değişkenden alarak güncelle


UPDATE manav
SET urun_kg_fiyati = @enUcuzElmaFiyati
WHERE urun_ismi = 'Elma' ;


-- Variable oluşturup deger atama işlemi sorgu içinde de yapilabilir.







 /*  
=========================  NOT  =========================
 MySQL'de değişkenler (variables), geçici veri saklamak için kullanılır. 
 Özellikle sorgular arasında değer taşımak 
 veya karmaşık işlemleri adım adım yapmak için oldukça faydalıdır.
=========================================================
 */



 /*  
========================  ORNEK  ========================
 Ogretmen_id'si 11 olan hocadan ders alan ve soyadı kaya olan öğrencinin 
 soyadını Aslan yapın.
=========================================================
 */


-- Ogretmen_id'si 11 olan hocadan ders alan ogrencilerin ogrenci no'larini bulalim

SELECT ogrenci_no
FROM DERSLER
WHERE ogretmen_id = 11;
-- 101,129,118

-- buldugumuz ogrenci no'larina ait soyisimleri kontrol edip
-- soyadi Kaya olan varsa 'Aslan' yapalim

UPDATE ogrenci
SET soyisim ='Aslan'
WHERE ogrenci_no IN (101,129,118) AND soyisim = 'Kaya' ;


-- dinamik yapabilmek icin subquery olusturalim

UPDATE ogrenci
SET soyisim ='Aslan'
WHERE  soyisim = 'Kaya' AND ogrenci_no IN (	SELECT ogrenci_no
											FROM DERSLER
											WHERE ogretmen_id = 11) ;

SELECT *
FROM ogrenci;





 /*  
========================  NOT  ========================
 Related Tablolarda Kayit Guncelleme yaparken
 dikkat edilecek ana kural:
    PRIMARY KEY sutununda olmayan HIC BIR DATA
    FOREIGN KEY sutununda kullanilamaz
=========================================================
 */
 

 /*  
========================  ORNEK  ========================
 Dersler tablosunda id’si 80 olan kaydın notunu 88 yapın.
=========================================================
 */

UPDATE dersler
SET ortalama_not = 88
WHERE id = 80;


SELECT *
FROM dersler;


 /*  
========================  ORNEK  ========================
 Dersler tablosunda id’si 80 olan kaydın ogrenci_no’sunu 222 yapın.
=========================================================
 */

UPDATE dersler
SET ogrenci_no = 222
WHERE id = 80;

-- Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails 
-- (`sqlvideodersleri`.`dersler`, CONSTRAINT `dersler_ibfk_1` FOREIGN KEY (`ogrenci_no`) REFERENCES `ogrenci` (`ogrenci_no`))
-- ogrenci no foreign key oldugundan, 
-- parent tablodaki primary key sutununda olmayan bir degeri (222) 
-- foreign key'e atama yapamazsiniz


 /*  
========================  ORNEK  ========================
 Burcu Kaya'nin tarih dersindeki ortalama notunu 80 olarak guncelleyin.
=========================================================
 */

-- burcu kaya'nin numarasini bulalim
SELECT ogrenci_no
FROM ogrenci
WHERE isim = 'Burcu' AND soyisim = 'Kaya';
-- 137


UPDATE dersler
SET ortalama_not = 80
WHERE ders_adi = 'Tarih' AND ogrenci_no = 137 ;
 

-- dinamik yapmak icin ya subquery olusturabiliriz
UPDATE dersler
SET ortalama_not = 80
WHERE ders_adi = 'Tarih' AND ogrenci_no = (SELECT ogrenci_no
											FROM ogrenci
											WHERE isim = 'Burcu' AND soyisim = 'Kaya');


-- veya variable kullanabiliriz
SELECT ogrenci_no INTO @burcukayaninNumarasi
FROM ogrenci
WHERE isim = 'Burcu' AND soyisim = 'Kaya';

UPDATE dersler
SET ortalama_not = 80
WHERE ders_adi = 'Tarih' AND ogrenci_no = @burcukayaninNumarasi ;

SELECT *
FROM dersler;




 /*  
========================  ORNEK  ========================
 Okul veri tabaninda 
 101 numaralı öğrencinin Matematik dersindeki hocasını Zeynep Demir yapın.
=========================================================
 */








 /*  
========================  ORNEK  ========================
103 numaralı öğrencinin Tarih dersindeki ogretmen_id'sini 21 yapin
=========================================================
 */



-- Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`sqlvideodersleri`.`dersler`, CONSTRAINT `dersler_ibfk_2` FOREIGN KEY (`ogretmen_id`) REFERENCES `ogretmenler` (`ogretmen_id`))	0.0027 sec



 /*  
========================  ORNEK  ========================
 Zeynep Demir hocadan ders alan tüm öğrencilerin genel ortalama notunu hesaplayıp,
 Zeynep Demir hocadan ders alan tüm öğrencilerin notunu, 
 bu ortalama not olacak şekilde güncelleyin.
=========================================================
 */

-- asama asama gidelim

-- 1. Zeynep Demir hocanin ogretmen_id'sini bulup kaydedelim





-- zeynep hocanin id'sini kullanarak dersler tablosunda
-- zeynep hocadan ders alanlarin genel ortalamasini bulup kaydedelim



-- zeynep hocadan ders alan tum ogrencilerin notunu
-- @zeynepHocaOgrencileriGenelOrtalamaNot olacak sekilde guncelleyelim



