use SqlVideoDersleri;

/*
====================== UNION ======================

 birden fazla SELECT sorgusunun sonuçlarını tek bir liste halinde birleştirmek için kullanılır. 

   Syntax:
    ----------
    SELECT sutun_adi,sutun_adi2, .. FROM tablo_adi1
    UNION 
    SELECT sutun_adi1, sutun_adi2, .. FROM tablo_adi2;
    
    NOT: UNION operatoru SADECE benzersiz degerleri alir. 
    Benzer verileri almak icin UNION ALL kullanilir.
    
=========================================================
 */

  
  
/*  
========================  ORNEK  ========================
 Nisan ve mayis aylarinda Toyota alan müşteri isimlerini listeleyin.
=========================================================
 */
 





 
 

/*  
========================  ORNEK  ========================
 Nisan ayindaki müşterileri ve mayis ayinda satilan urun isimlerini listeleyin.
=========================================================
 */
 






 
 /*  
=========================  NOT  =========================
 UNION, ile birleştirilecek sorgular mantıklı seçilmezse, 
 anlamsız tablolar oluşabilir. 
=========================================================
 */ 
   
  
/*  
========================  ORNEK  ========================
 Nisan ve mayis aylarinda satilan urun isimlerini listeleyin.
=========================================================
 */
 






 
 /*  
=========================  NOT  =========================
 UNION, ile birleştirilen sorgulardaki tekrar eden değerleri getirmez, 
 tüm değerler unique olarak gelir. 
 Eğer tekrar eden tüm kayıtlar istenirse  UNION ALL kullanılmalıdır.
=========================================================
 */    
  
/*  
========================  ORNEK  ========================
 Nisan ve mayis aylarinda satilan urun isimlerini tekrarlari ile birlikte listeleyin.
=========================================================
 */
 





 
   
  
/*  
========================  ORNEK  ========================
 Nisan ayindaki müşterileri ve aldiklari urun_isim'lerini 
 ve mayis ayinda satilan urunlerin urun_id'lerini listeleyin.
=========================================================
 */
 






 
 /*  
=========================  NOT  =========================
UNION, ile birleştirilen sorgulardan gelen sutun sayilari esit olmalidir.
=========================================================
 */     
   
  
/*  
========================  ORNEK  ========================
 Nisan ve mayis ayinda Honda alan müşteri isimlerini sirali olarak listeleyin.
=========================================================
 */
 







 
 /*  
=========================  NOT  =========================
 UNION, ile birleştirilen sorgular sirali olarak görmek istenirse 
 en sonda ORDER BY kullanılabilir.
=========================================================
 */   
   
  
/*  
========================  ORNEK  ========================
 Ogrenci, ogretmen ve people tablolarinda var olan isimleri 
 tekrarsiz ve sirali olarak listeleyin.
=========================================================
 */
 










 

/*
============================== JOIN ISLEMLERI ===============================
 JOIN, iki veya daha fazla tabloyu ortak sütunlar üzerinden birleştirerek, 
 ilişkili verileri tek bir tablo olarak gösterir.

 UNION, birden fazla SELECT sorgusunun sonuçlarını alt alta ekleyerek birleştirir; 
 ancak satır bazında çalışır, ilişkili olmayan tablolarda da çalışır.

 JOIN ise birden fazla ilişkili tablolardaki sütunları birleştirir, 
 böylece sorgu sonucunda bir tabloda birden fazla tablodaki bilgiler bir arada gösterilebilir.

 Diğer bir ifade ile 
 Join ilişkili farklı tablolardaki seçilen sütunlar ile 
 yeni bir tablo olusturmak için kullanılabilir.
   
=============================================================================
*/


   
  
/*  
========================  ORNEK  ========================
 İçerisinde sirket_adi, ulke, ve calisan_sayisi olan 
 sirket_personel_sayisi tabloyu oluşturun ve kayitlar ekleyin.
=========================================================
 */
 










   
  
/*  
========================  ORNEK  ========================
 İçerisinde sirket_adi, ulke ve kazanc sutunlari olan 
 sirket_kazanc tablosunu oluşturun ve kayitlar ekleyin.
=========================================================
 */
 


      










/*
============================== JOIN ISLEMLERI ===============================

 Olusturdugumuz 2 tabloda da 
 şirket isimleri var ama şirketlerin çalışan sayısı bir tabloda, 
 kazançları ise diğer tabloda. 
 Şirket isimleri, çalışan sayısı ve kazançları tek bir tabloda gösterilmek istenirse, 
 bu tablolar JOIN ile birleştirilebilir.
 
 ANCAK birleştirme yapılmadan önce bir karar verilmelidir.

 Cunku, iki tablodaki şirket isimlerinde ortak olanlar olduğu gibi 
 farklı olanlar da var.

 Birleştirme işlemi için aşağıdaki seçeneklerden biri seçilebilir.

 - İki tabloda ortak olan şirketleri ve bilgilerini getir

 - Personel sayısı tablosundaki şirketleri ve bilgilerini getir, 
   bu şirketlerin varsa kazanç bilgilerini de getir
   
 - Kazanç tablosundaki şirketleri ve bilgilerini getir, 
   bu şirketlerin varsa çalışan sayısı bilgilerini de getir
   
 - İki tablodan herhangi birinde olan tüm şirketleri 
   ve var olan bilgilerini getir.

=============================================================================
*/ 
   
   
/*
=============================== INNER JOIN  ==================================
 İki tabloda ortak olarak bulunan (kesişim kümesi) dataları 
 baz alarak yeni bir tablo olusturmak için kullanılır.

 SELECT satirinda tabloda görünmesi istenen sütunlar yazılırken 
 table_name.field_name seklinde yazılmalıdır.

 FROM satirinda table_name yazilirken iki tabloyu da belirtmek icin
   1.table_name  INNER JOIN  2.table_name 
 yazilmalidir.

 İki tablodaki veriler hangi sutundaki data uzerinden eslestirilecek ise 
 ON satirinda yazılmalıdır.

 
    Syntax
    -----------
    SELECT sutun1,sutun2....sutunN
    FROM tablo1 INNER JOIN tablo2
    ON tablo1.sutun = tablo2.sutun;
    
================================================================================
*/
   
  
/*  
========================  ORNEK  ========================
 İki tabloda ortak olan şirketlerin 
 isim, çalışan sayısı ve kazanç bilgilerini tek bir tabloda gösterin.
=========================================================
 */
 








 
 /*  
=========================  NOT  =========================
 eğer tablo isimleri sorguda kısaltılmak istenirse
 1.table_name ve kısaltması  INNER JOIN  2.table_name ve kısaltması
 seklinde yazılabilir.
=========================================================
 */  
  








/*
================================= LEFT JOIN  ===================================
 LEFT JOIN, 1. tablodan (sol tablo) SELECT ile seçilen sütunlardaki 
 tüm kayıtları getirir. 

 Ancak, diğer tablodan (sağ tablo) sadece ON ile belirtilen koşula uyan kayıtları getirir. 

 Yani sola yazılan tablodaki tüm kayıtlar 
 ve sağdaki tabloda varsa bu kayıtlara ek datalar ortak bir tabloda gösterilir, 
 sağ tabloda o kayda ait ek data yoksa o kısımlar bos kalır.

 İlk yazılan tablodaki kayıtların tamamını aldığı için 
 hangi tablodaki kayıtlar baz alınmak isteniyorsa 
 o tablo sola yazılmalı ve mümkün olduğunca sütunlar o tablodan alınmalıdır.
 
     Syntax
    -----------
    SELECT sutun1,sutun2....sutunN
    FROM tablo1 LEFT JOIN tablo2
    ON tablo1.sutun = tablo2.sutun;
   
================================================================================
*/

  
/*  
========================  ORNEK  ========================
 Personel sayısı tablosundaki şirketlerin isim ve çalışan sayısı bilgilerini getirin, 
 bu şirketlerin varsa kazanç bilgilerini de ayni tabloda gösterin.
=========================================================
 */
 








 

/*
=============================== RIGHT JOIN  ==================================
 RIGHT JOIN 2. tablodan (sağ tablo) SELECT ile seçilen sütunlardaki tüm kayıtları getirir. 

 İlk tablodan ise (sol tablo) sadece ON ile belirtilen koşula uyan kayıtları getirir. 

 Yani sağa yazılan tablodaki tüm kayıtlar 
 ve soldaki tabloda varsa bu kayıtlara ek datalar ortak bir tabloda gösterilir, 
 sol tabloda o kayda ait ek data yoksa o kısımlar bos kalır.
   
 LEFT JOIN ve RIGHT JOIN ikisi de ayni isi yapar, 
 farkları FROM satırındaki yazılış sıralamasıdır.  

 Biri ile yapılan işlem FROM satırındaki tablo yazılış sırası değiştirilerek 
 diğeri ile de yapılabilir.
   
        
    Syntax
    -----------
    SELECT sutun1,sutun2....sutunN
    FROM tablo1 RIGHT JOIN tablo2
    ON tablo1.sutun = tablo2.sutun;
    
==============================================================================
*/  
   
  
/*  
========================  ORNEK  ========================
 Kazanç tablosundaki şirketlerin isim ve kazanç bilgilerini getirin, 
 bu şirketlerin varsa çalışan sayısı bilgilerini de ayni tabloda gösterin.
=========================================================
 */
 







 


/*
=============================== FULL JOIN  ==================================
    
 MySQL’de direkt olarak FULL JOIN işlevi yoktur. 
 LEFT JOIN ve RIGHT JOIN’in UNION kullanarak birleştirilmesi ile elde edilir.

 İlk tablodan var olan kayıtları getirir. 

 Her iki tabloda bulunan sirket_adi gibi sütunlar 
 sorguda mutlaka tablo_adi.sutun_adi olarak belirtilmelidir. 
 Tek tabloda olan sütunlar için bu mecburiyet yoktur.

 İki tabloda herhangi bir yerde olan datalar yeni ortak tabloya islenir, 
 data olmayan hücreler NULL değeri alır.

    
        
    Syntax
    -----------
    SELECT sutun1,sutun2....sutunN
    FROM tablo1 
    LEFT JOIN tablo2
    ON tablo1.sutun = tablo2.sutun;
    UNION
    SELECT sutun1,sutun2....sutunN
    FROM tablo1 
    RIGHT JOIN tablo2
    ON tablo1.sutun = tablo2.sutun;    

==============================================================================
*/   
  
/*  
========================  ORNEK  ========================
 Kazanç tablosundaki şirketlerin isim ve kazanç bilgilerini getirin, 
 bu şirketlerin varsa çalışan sayısı bilgilerini de ayni tabloda gösterin.
=========================================================
 */
 










 
 
   
  
/*  
========================  ORNEK  ========================
 Icerisinde bolum_id, bolum_isim ve konum field'lari olan 
 bolümler tablosu oluşturun. 
 Bolum_id field’i Primary Key olsun ve içine null olmayan değerler ekleyin.
=========================================================
 */
 









 
   
  
/*  
========================  ORNEK  ========================
 Icerisinde personel_id, personel_isim, meslek, mudur_id, maas ve bolum_id field'lari olan 
 bolümler tablosu oluşturun.  
 Bolum_id field’i Foreign Key olsun 
 ve tabloya kayitlar ekleyin.
=========================================================
 */
 

    

  






 
   
  
/*  
========================  ORNEK  ========================
 SATIS ve MUHASEBE bölümlerinde çalışanların 
 isimlerini ve bölümlerini, önce bolum sonra isim sıralı olarak listeleyin. 
=========================================================
 */
 






 
 
   
  
/*  
========================  ORNEK  ========================
 SATIS, ISLETME ve DEPO bölümlerinde çalışanların isimlerini ve bölümlerini 
 isim sıralı olarak listeleyiniz
  	
 NOT: Çalışanı olmasa bile bolum ismi listelenmelidir.
=========================================================
 */
 







 
   
  
/*  
========================  ORNEK  ========================
 Çalışan tüm personelin isimlerini bolum isimlerini ve maaşlarını 
 bolum ters sıralı ve maaş sıralı listeleyin.
 NOT: Bolum ismi olmasa bile çalışanın ismi listelenmelidir.
=========================================================
 */
 







 
 
   
  
/*  
========================  ORNEK  ========================
 SATIS ve MUDURLUK bölümlerinde çalışan personelden 
 maaşları 2000 den büyük olanların isimlerini, bolum isimlerini ve maaşlarını 
 bolüme ve isme göre sıralayarak listeleyin. 
=========================================================
 */
 





 
