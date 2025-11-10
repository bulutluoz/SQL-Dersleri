use SqlVideoDersleri;

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
WHERE sütun_adı 
LIKE 'patern';
*/

 /*  
========================  ORNEK  ========================
 İçerisinde id, isim ve maas sütunları bulunan 
 çalışanlar tablosu oluşturun ve içine null barındırmayan kayıtlar ekleyin.
=========================================================
 */
 















 
 
  /*  
========================  ORNEK  ========================
 calisanlar tablosundan dort harfli personeli listeleyin
=========================================================
 */
 








 
 
  /*  
========================  ORNEK  ========================
 calisanlar tablosundan isminde a bulunan personeli listeleyin.
=========================================================
 */
 







  
 
  /*  
========================  ORNEK  ========================
 calisanlar tablosundan ismi 'a' ile biten personeli listeleyin.
=========================================================
 */







 
 
  /*  
========================  ORNEK  ========================
 calisanlar tablosundan isminin 2. harfi 'e' olan personeli listeleyin.
=========================================================
 */








 
 
  /*  
========================  ORNEK  ========================
 calisanlar tablosundan Isminin 2. harfi 'e' olup 
 diger harflerinde 'y' olan personeli listeleyin
=========================================================
 */
 









 
 
  /*  
========================  ORNEK  ========================
 calisanlar tablosundan maasi 5 haneli olan personel isimlerini listeleyin
=========================================================
 */
 








 
  /*  
========================  ORNEK  ========================
 calisanlar tablosundan isminin 1. harfi 'a' ve 7. harfi 'a' olan 
 personeli listeleyin
=========================================================
 */
 
 
 
  /*  
========================  ORNEK  ========================
 ---
=========================================================
 */
 









 
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
 



    















 
 
 
  /*  
========================  ORNEK  ========================
 Kelimeler tablosundan icerisinde 'ot' veya 'at' bulunan kelimeleri listeleyin
=========================================================
 */
 






 
 
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










-- case sensitive olmasi isteniyorsa











 
  /*  
========================  ORNEK  ========================
 Kelimeler tablosunda icinde 'ho' veya 'hi' gecen kelimeleri 
 case-sensitive  olmadan listeleyin.
=========================================================
 */
 





 
 
  /*  
========================  ORNEK  ========================
 Kelimeler tablosundan sonu 't' veya 'm' ile bitenleri 
 case-sensitive olmadan listeleyin.
=========================================================
 */
 




 
 
  /*  
========================  ORNEK  ========================
    Kelimeler tablosundan h ile baslayip t ile biten 3 harfli kelimeleri 
    (h ile t kucuk harfli olanlari) listeleyiniz.
=========================================================
 */ 



  /*  
========================  ORNEK  ========================
  Kelimeler tablosundan 'h' ile baslayip 't' ile biten 2. karakteri rakam 
  olan 3 harfli kelimeleri (h ile t kucuk harfli olanlari) listeleyiniz
=========================================================
 */
 

  /*  
========================  ORNEK  ========================
 Kelimeler tablosundan 'h' ile baslayip 't' ile biten 2. karakteri buyuk 
 harf olan 3 harfli kelimeleri (h ile t kucuk harfli olanlari) listeleyiniz
=========================================================
 */
 
 
 
  /*  
========================  ORNEK  ========================
    Kelimeler tablosundan 2. harfi 'O' (buyuk O harfli) olan 3 karakterli 
    kelimeleri ve id'lerini listeleyiniz
=========================================================
 */
 
 
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