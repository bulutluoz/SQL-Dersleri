use SqlDersleri;

/*
===============================================
		LIKE OPERATORU 
===============================================

 metin ifadelerinde belirli bir desenle eşleşen verileri sorgulamak için 
 kullanılan bir karşılaştırma operatörüdür.

 Genellikle % (yüzde) ve _ (alt çizgi) olmak üzere iki joker karakterle kullanılır.

 % karakteri, sıfır veya daha fazla karakterin yerini tutar.

 _ karakteri ise tek bir karakterin yerini tutar.


 Örneğin, "LIKE '%son'" ifadesi "son" ile biten tüm metin değerlerini bulur 
 (Jason, Wilson, vb...).

*************** SYNTAX ***************
SELECT sütun_adları
FROM tablo_adı
WHERE sütun_adı LIKE 'patern';
*/

 /*  
========================  ORNEK  ========================
 İçerisinde id, isim ve maas sütunları bulunan 
 çalışanlar tablosu oluşturun ve içine null barındırmayan kayıtlar ekleyin.
=========================================================
 */
 

CREATE TABLE calisanlar(
id CHAR(5),
isim VARCHAR(50),
maas INT
);

INSERT INTO calisanlar VALUES('10001','Ahmet Aslan',7000);
INSERT INTO calisanlar VALUES('10002','Mehmet Yilmaz',12000);
INSERT INTO calisanlar VALUES('10003','Meryem',7215);
INSERT INTO calisanlar VALUES('10004','Veli Han',5000);
INSERT INTO calisanlar VALUES('10005','Mustafa Ali',5500);
INSERT INTO calisanlar VALUES('10006','Ayse Can',5600);
INSERT INTO calisanlar VALUES('10010','Ayse',4700);
INSERT INTO calisanlar VALUES('10009','Ayse Cemile',4000);
INSERT INTO calisanlar VALUES('10008','Ayse Fatma',4300);
INSERT INTO calisanlar VALUES('10007','Beyza Ayse',7700);
INSERT INTO calisanlar VALUES('10011','Yeliz Alina',12700);


SELECT *
FROM calisanlar;







 
 
  /*  
========================  ORNEK  ========================
 calisanlar tablosundan dort harfli personeli listeleyin
=========================================================
 */
 
SELECT *
FROM calisanlar
WHERE isim LIKE '____';







 
 
  /*  
========================  ORNEK  ========================
 calisanlar tablosundan isminde a bulunan personeli listeleyin.
=========================================================
 */
 
SELECT *
FROM calisanlar
WHERE isim LIKE '%a%';






  
 
  /*  
========================  ORNEK  ========================
 calisanlar tablosundan ismi 'a' ile biten personeli listeleyin.
=========================================================
 */

SELECT *
FROM calisanlar
WHERE isim LIKE '%a';





 
 
  /*  
========================  ORNEK  ========================
 calisanlar tablosundan isminin 2. harfi 'e' olan personeli listeleyin.
=========================================================
 */

SELECT *
FROM calisanlar
WHERE isim LIKE '_e%';






 
 
  /*  
========================  ORNEK  ========================
 calisanlar tablosundan Isminin 2. harfi 'e' olup 
 diger harflerinde 'y' olan personeli listeleyin
=========================================================
 */
 
SELECT *
FROM calisanlar
WHERE isim LIKE 'ye%' OR isim LIKE '_e%y%';


SELECT *
FROM calisanlar
WHERE isim LIKE '_e%' AND isim LIKE '%y%';









 
 
  /*  
========================  ORNEK  ========================
 calisanlar tablosundan maasi 5 haneli olan personel isimlerini listeleyin
=========================================================
 */
 

SELECT *
FROM calisanlar
WHERE maas > 9999;


SELECT *
FROM calisanlar
WHERE maas LIKE '_____';



 
  /*  
========================  ORNEK  ========================
 calisanlar tablosundan isminin 1. harfi 'a' ve 7. harfi 'a' olan 
 personeli listeleyin
=========================================================
 */
 
 SELECT *
FROM calisanlar
WHERE isim LIKE 'a_____a%';
 


 
  /* 
===============================================
		   REGEXP_LIKE OPERATORU 
===============================================

 bir sütundaki verinin belirli bir düzenli ifadeye (regex) uyup uymadığını 
 kontrol etmek için kullanılır.

 REGEXP_LIKE ( RLIKE olarak da bilinir), 
 daha karmaşık ve güçlü bir arama yapmak için 
 belirlenmiş düzenli ifadeleri (regular expressions) kullanır.

 Düzenli ifadeler (regular expressions) , 
 metin içindeki PATERN'leri tanımlamak için kullanılan sözdizimidir.

[!-~]   	=> Butun karakterleri karsilayan tek bir karakter
[a-zA-Z0-9] => Harf ve rakamlari temsil eden bir karakter
^      		=> baslangici belirtir
$      		=> bitisi belirtir.  
|      		=> veya anlaminda kullanilir.
.       	=> herhangi bir tek karakter anlamina gelir

 
Örneğin, "REGEXP '^J.son$'" ifadesi 
		 "J" ile başlayıp "son" ile biten tüm metin değerlerini bulur
         
         LIKE => 'j%son'
         
*************** SYNTAX ***************
 SELECT sutun1,sutun2,...
 FROM tablo_adi
 WHERE REGEXP_LIKE(sutun_adi, 'pattern[]');
 
 
*/


  /*  
========================  ORNEK  ========================
 İçerisinde id, kelime ve harf_sayisi sütunları bulunan 
 kelimeler tablosu oluşturun ve içine null barındırmayan kayıtlar ekleyin.
=========================================================
 */
 

CREATE TABLE kelimeler
    (
        id int UNIQUE,
        kelime VARCHAR(50),
        harf_sayisi int
    );

INSERT INTO kelimeler VALUES 
    (1001, 'hot', 3),
	(1002, 'hat', 3),
	(1003, 'hit', 3),
	(1004, 'hbt', 3),
	(1005, 'hct', 3),
    (1006, 'adem', 4),
    (1007, 'selim', 5),
    (1008, 'yusuf', 5),
    (1009, 'hip', 3),
    (1010, 'HOT', 3),
    (1011, 'hOt', 3),
    (1012, 'h9t', 3),
    (1013, 'hoot', 4),
    (1014, 'haaat', 5),
    (1015, 'hooooot', 7),
	(1016, 'h-t', 3),
    (1017, 'h?t', 3),
    (1018, 'hOOOt', 5),
    (1019, 'O', 1);


    
SELECT *
FROM kelimeler;


 
 
  /*  
========================  ORNEK  ========================
 Kelimeler tablosundan icerisinde 'ot' veya 'at' bulunan kelimeleri listeleyin
=========================================================
 */
 
SELECT kelime
FROM kelimeler
WHERE kelime LIKE '%ot%' OR kelime LIKE '%at%' ;



SELECT kelime
FROM kelimeler
WHERE REGEXP_LIKE (kelime, 'ot|at');

 
 /* 
 ===============================================
		   CASE SENSITIVE / CASE INSENSITIVE
 ===============================================

 Mysql sorgu yaparken tercih belirtilmezse 
 sorguları büyük/küçük harf duyarlılığı OLMADAN yapar.

 ornegin yukardaki gibi ot veya at barindiran kelimeler listelendiginde 
 hot, hat, HOT, hOt, hoot, haaat, hoooot ve hOOOt gelmektedir.
    
 Sorgu yaparken büyük/küçük harf duyarlılığı tercihi yapilabilir.
 Case Sensitive (Büyük/Küçük Harfe Duyarlı) olmak isteniyorsa sorgu sonuna 'c' seklinde patern eklenir.

Case Sensitive (Büyük/Küçük Harfe Duyarlı) olmak istenmiyorsa sorgu sonuna 'i' seklinde patern eklenir.

 */ 
 
  /*  
========================  ORNEK  ========================
 Kelimeler tablosundan icerisinde 'ot' veya 'at' bulunan kelimeleri 
 case sensitive olarak listeleyin.
=========================================================
 */
 
-- hic bir sey söylenmezse veya incasesensitive olarak ozellikle belirtilirse, 
-- MySQL case sensitive olmadan arama yapar
-- LIKE ile case sensitive arama yapamiyoruz
SELECT kelime
FROM kelimeler
WHERE kelime LIKE '%ot%' OR kelime LIKE '%at%';


SELECT kelime
FROM kelimeler
WHERE REGEXP_LIKE (kelime, 'ot|at','c');


SELECT kelime
FROM kelimeler
WHERE REGEXP_LIKE (kelime, 'OT|AT','c');


SELECT kelime
FROM kelimeler
WHERE REGEXP_LIKE (kelime, 'Ot|At','c');

-- case sensitive olmasi istenmiyorsa

SELECT kelime
FROM kelimeler
WHERE REGEXP_LIKE (kelime, 'ot|at','i');


SELECT kelime
FROM kelimeler
WHERE REGEXP_LIKE (kelime, 'ot|at');






 
  /*  
========================  ORNEK  ========================
 Kelimeler tablosunda icinde 'ho' veya 'hi' gecen kelimeleri 
 case-sensitive  olmadan listeleyin.
=========================================================
 */
 

SELECT kelime
FROM kelimeler
WHERE REGEXP_LIKE (kelime, 'ho|hi','i');



 
 
  /*  
========================  ORNEK  ========================
 Kelimeler tablosundan sonu 't' veya 'm' ile bitenleri 
 case-sensitive olmadan listeleyin.
=========================================================
 */
 
-- bu sorgu icinde t veya m bulunduran kelimeleri getirir 
SELECT kelime
FROM kelimeler
WHERE REGEXP_LIKE (kelime, 't|m');

-- gorevde t veya m ile biten dediginden, bunu belirtmemiz lazim

SELECT kelime
FROM kelimeler
WHERE REGEXP_LIKE (kelime, 't$|m$');
 
 
  /*  
========================  ORNEK  ========================
    Kelimeler tablosundan h ile baslayip t ile biten 3 harfli kelimeleri 
    (h ile t kucuk harfli olanlari) listeleyiniz.
=========================================================
 */ 

SELECT kelime
FROM kelimeler
WHERE REGEXP_LIKE (kelime, '^h.t$','c');

SELECT kelime
FROM kelimeler
WHERE REGEXP_LIKE (kelime, '^H.T$','c');

  /*  
========================  ORNEK  ========================
  Kelimeler tablosundan 'h' ile baslayip 't' ile biten 2. karakteri rakam 
  olan 3 harfli kelimeleri (h ile t kucuk harfli olanlari) listeleyiniz
=========================================================
 */
 
 SELECT kelime
FROM kelimeler
WHERE REGEXP_LIKE (kelime, '^h[0-9]t$','c');
 

  /*  
========================  ORNEK  ========================
 Kelimeler tablosundan 'h' ile baslayip 't' ile biten 2. karakteri buyuk 
 harf olan 3 harfli kelimeleri (h ile t kucuk harfli olanlari) listeleyiniz
=========================================================
 */
 
SELECT kelime
FROM kelimeler
WHERE REGEXP_LIKE (kelime, '^h[A-Z]t$','c');
 
  /*  
========================  ORNEK  ========================
    Kelimeler tablosundan 2. harfi 'O' (buyuk O harfli) olan 3 karakterli 
    kelimeleri ve id'lerini listeleyiniz
=========================================================
 */
 
SELECT kelime, id
FROM kelimeler
WHERE REGEXP_LIKE (kelime, '.O.','c');
 
 
 /*
-----------------------------KARSILASTIRMA ------------------------------

LIKE  & REGEXP_LIKE

Esneklik: 
 REGEXP daha esnek ve güçlüdür, karmaşık desenleri tanımlayabilir. 
 LIKE ise daha basit ve sınırlı desenlerle çalışır.

Performans: 
 LIKE operatörü genellikle REGEXP operatörüne göre daha hızlıdır,
 çünkü daha basit desenleri işler.

Kullanım Kolaylığı: 
 LIKE daha basit ve anlaşılması daha kolaydır.
 REGEXP ise düzenli ifadelerin nasıl çalıştığını bilmeyi gerektirir, 
 bu da öğrenme eğrisini artırır.
*/