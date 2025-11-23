use SqlDersleri;

/*
====================== UNION ======================

 birden fazla SELECT sorgusunun sonuçlarını tek bir liste halinde birleştirmek için kullanılır. 
 
 NOT : 	UNION, birleştirilmek istenen dataların ilintili olup olmadığına bakmaz, 
        sadece sütun sayısı ve data türlerinin uyumlu olmasını kontrol eder.
 	    Birleştirilecek sorgular mantıklı seçilmezse, anlamsız tablolar oluşabilir. 


   Syntax:
    ----------
    SELECT sutun_adi,sutun_adi2, .. FROM tablo_adi1
    UNION 
    SELECT sutun_adi1, sutun_adi2, .. FROM tablo_adi2;
    
=========================================================
 */

  
  
/*  
========================  ORNEK  ========================
 Nisan ve mayis aylarinda Toyota alan müşteri isimlerini listeleyin.
=========================================================
 */
 
 SELECT musteri_isim
 FROM nisan_satislar
 WHERE urun_isim = 'Toyota'
 
 UNION

 SELECT musteri_isim
 FROM mayis_satislar
 WHERE urun_isim = 'Toyota' ;



 
 

/*  
========================  ORNEK  ========================
 Nisan ayindaki müşterileri ve mayis ayinda satilan urun isimlerini 
 alt alta listeleyin.
=========================================================
 */
 

 SELECT musteri_isim AS 'Nisan ayindaki müşteriler ve mayis ayinda satilan urun isimleri'
 FROM nisan_satislar
 
 UNION

 SELECT urun_isim
 FROM mayis_satislar;




 
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
 
 SELECT urun_isim AS 'Nisan ve mayis aylarinda satilan urun isimleri'
 FROM nisan_satislar
 
 UNION

 SELECT urun_isim
 FROM mayis_satislar;

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
 

 SELECT urun_isim AS 'Nisan ve mayis aylarinda satilan urun isimleri'
 FROM nisan_satislar
 
 UNION ALL

 SELECT urun_isim
 FROM mayis_satislar;

   
  
/*  
========================  ORNEK  ========================
 Nisan ayindaki müşterileri ve aldiklari urun_isim'lerini 
 ve mayis ayinda satilan urunlerin urun_id'lerini listeleyin.
=========================================================
 */
 
 SELECT musteri_isim, urun_isim
 FROM nisan_satislar
 
 UNION

 SELECT urun_id
 FROM mayis_satislar;

 /*  
=========================  NOT  =========================
UNION, ile birleştirilen sorgulardan gelen sutun sayilari esit 
ve data turleri uyumlu olmalidir.
=========================================================
 */     
   
  
  

/*  
========================  ORNEK  ========================
 Nisan ve mayis ayinda Honda alan müşteri isimlerini sirali olarak listeleyin.
=========================================================
 */
 
SELECT musteri_isim AS Honda_alan_müşteri_isimleri
FROM nisan_satislar
WHERE urun_isim = 'Honda'
 
 UNION ALL

SELECT musteri_isim
FROM mayis_satislar
WHERE urun_isim = 'Honda'
ORDER BY Honda_alan_müşteri_isimleri;





 
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
 

SELECT isim AS '3 tablodaki isimler'
FROM ogrenci

UNION

SELECT isim
FROM ogretmenler

UNION

SELECT isim
FROM people;








 
