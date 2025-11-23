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
 










 
