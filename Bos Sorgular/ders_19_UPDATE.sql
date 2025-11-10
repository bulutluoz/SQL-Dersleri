use SqlVideoDersleri;

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








 /*  
========================  ORNEK  ========================
 Kitaplar tablosundaki Araba Sevdası kitabinin yayın yılını 1896, 
 kategorisini roman olarak güncelleyin.
=========================================================
 */









 /*  
========================  ORNEK  ========================
 Manav tablosunda 101 numaralı müşteriye satılan portakalın 
 fiyatını 20 olarak güncelleyin.
=========================================================
 */










 /*  
========================  ORNEK  ========================
 Manav tablosunda tüm elma fiyatlarını 
 tablodaki en ucuz elma fiyatına getirecek şekilde güncelleyin.
=========================================================
 */








-- Error Code: 1093. You can't specify target table 'manav' for update in FROM clause	


-- once istenen degeri bir variable'a atayalim 



-- 2. Değeri değişkenden alarak güncelle








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
 Dersler tablosunda id’si 20 olan kaydın notunu 88 yapın.
=========================================================
 */






 /*  
========================  ORNEK  ========================
 Dersler tablosunda id’si 20 olan kaydın ogrenci_no’sunu 222 yapın.
=========================================================
 */






-- Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails 
-- (`sqlvideodersleri`.`dersler`, CONSTRAINT `dersler_ibfk_1` FOREIGN KEY (`ogrenci_no`) REFERENCES `ogrenci` (`ogrenci_no`))



 /*  
========================  ORNEK  ========================
 Burcu Kaya'nin tarih dersindeki ortalama notunu 80 olarak guncelleyin.
=========================================================
 */










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



