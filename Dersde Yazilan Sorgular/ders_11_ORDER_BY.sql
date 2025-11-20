use SqlDersleri;

/* 
===============================================
		            ORDER BY
===============================================
 SQL sorgularında sonuçları belirli bir veya birden fazla sütuna göre 
 sıralamak için kullanılır. 

 Sıralama işlemini yükselen (ascending) veya azalan (descending) düzeninde yapılabilir. 

 ASC anahtar kelimesi yükselen sıralamayı (dogal),
 DESC ise azalan sıralamayı (ters) belirtir.

 Sorguda ASC veya DESC belirtilmediyse sorgu dogal siralamaya uygun olarak ( ASC ) yapilir.

 ORDER BY, LIMIT ve OFFSET gibi filtreleme ifadeleri 
 database uzerinde degil bize donen sonuc uzerinde filtreleme yapar. 
 Database de bir degisiklik yapmaz.


*************** SYNTAX ***************
SELECT sütun_adları
FROM tablo_adı
ORDER BY sıralanacak_sütun ASC|DESC;

*/



 /*  
========================  ORNEK  ========================
 Icerisinde id, kitap_adi, yazar ve yayin_yili sutunlari bulunan 
 kitaplik tablosu olusturun
=========================================================
 */

CREATE TABLE kitaplik (
    id INT,
    kitap_adi VARCHAR(100),
    yazar VARCHAR(50),
    yayin_yili INT
);

INSERT INTO kitaplik () VALUES
					(1, 'Sefiller', 'Victor Hugo', 1862),
					(2, '1984', 'George Orwell', 1949),
					(3, 'Suç ve Ceza', 'Fyodor Dostoyevski', 1866),
					(4, 'Kürk Mantolu Madonna', 'Sabahattin Ali', 1943),
					(5, 'Yabancı', 'Albert Camus', 1942),
					(6, 'Ulysses', 'James Joyce', 1922),
					(7, 'Yüzüklerin Efendisi', 'J.R.R. Tolkien', 1954),
					(8, 'Harry Potter ve Felsefe Taşı', 'J.K. Rowling', 1998),
					(9, 'Da Vinci Şifresi', 'Dan Brown', 2003),
					(10, 'Zamanın Kısa Tarihi', 'Stephen Hawking', 1998),
					(11, 'Karamazov Kardeşler', 'Fyodor Dostoyevski', 1880),
					(12, 'Budala', 'Fyodor Dostoyevski', 1869),
					(13, 'Savaş ve Barış', 'Lev Tolstoy', 1866),
					(14, 'Anna Karenina', 'Lev Tolstoy', 1877),
					(15, 'Hobbit', 'J.R.R. Tolkien', 1942);

SELECT * 
FROM kitaplik;













 /*  
========================  ORNEK  ========================
 Kitaplik tablosundaki kitapları yayın yılına göre 
 eski olanlardan yeni olanlara doğru sıralayin.
=========================================================
 */

SELECT kitap_adi,yayin_yili
FROM kitaplik
ORDER BY yayin_yili ASC;


SELECT kitap_adi,yayin_yili
FROM kitaplik
ORDER BY yayin_yili;


 /*  
========================  ORNEK  ========================
 Kitaplik tablosundaki kitapları yayın yılına göre 
 yeni olanlardan eski olanlara doğru sıralayin.
=========================================================
 */

SELECT kitap_adi,yayin_yili
FROM kitaplik
ORDER BY yayin_yili DESC;






 /*  
========================  ORNEK  ========================
 Kitaplik tablosundaki "Fyodor Dostoyevski"nin kitaplarını 
 yayın yılına göre eskiden gunumuze sıralayin.
=========================================================
 */

SELECT *
FROM kitaplik
WHERE yazar = 'Fyodor Dostoyevski'
ORDER BY yayin_yili;







 /*  
========================  ORNEK  ========================
 Kitaplik tablosundaki yazarlarin isimlerini unique ve ters sirali listeleyin.
=========================================================
 */

SELECT DISTINCT yazar
FROM kitaplik
ORDER BY yazar DESC;







 /*  
========================  ORNEK  ========================
 Kitaplik tablosundaki ismi K harfi ile T harfi arasinda olan 
 yazarlarin isimlerini ters siralayin.
=========================================================
 */

SELECT yazar
FROM kitaplik
WHERE yazar BETWEEN 'K' AND 'T'
ORDER BY yazar DESC;








 /*  
========================  ORNEK  ========================
 Kitaplik tablosundaki "Lev Tolstoy" un kitaplarını 
 isimlerine göre dogal sırayin.
=========================================================
 */

SELECT kitap_adi
FROM kitaplik
WHERE yazar =  'Lev Tolstoy'
ORDER BY kitap_adi ASC;







/*
=========================================================
					NOT
=========================================================
 ORDER BY komut satirinda siralama için birden fazla sutun yazilabilir.  
   - Siralamaya ilk yazilan sutundan baslanir, 
   - Ilk sutun değeri esit olanlar ikinci sutuna gore siralanir, 
   - Eger ikinci sutunlar da eşitse ucuncu sutuna geçilir …

*/

 /*  
========================  ORNEK  ========================
 Kitaplik tablosundaki yazar isimlerini ve kitaplarini 
 iki sutunu dikkate alarak dogal sıralayin.
=========================================================
 */



SELECT yazar, kitap_adi
FROM kitaplik
ORDER BY yazar, kitap_adi ASC;







 /*  
========================  ORNEK  ========================
 Kitaplik tablosundaki kitaplari yayin yilina gore gunumuzden eskiye 
 ve yazar isimlerini dogal sıralayin.
=========================================================
 */
 
SELECT kitap_adi, yazar, yayin_yili
FROM kitaplik
ORDER BY yayin_yili DESC, yazar ASC;
 




