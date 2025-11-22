use SqlDersleri;

/*
======================== Primary Key ======================= 
Primary Key : (Birincil anahtar), 
bir tabloda her satırı benzersiz şekilde tanımlayan 
ve boş (NULL) değer içeremeyen sütun ya da sütunlar bütünüdür.

Primary Key olarak kullanılacak sutundaki veriler tekrarsiz (UNIQUE) olmalidir. 
Eğer birden fazla satır aynı primary key değerine sahip olursa, 
veri tabanı o satırları birbirinden ayırt edemez. 

Çoğunlukla tek bir alan ( id, user_id, e_mail, username, tc_no vb.) olarak kullanılsa da, 
tek bir sutunun unique değerler saglamadigi durumlarda 
birden fazla sutunun birleşimiyle de oluşturulabilir

İlişkili veri tabanlarında ( relational database ) mutlaka Primary Key olmalıdır.

Bir tabloda yalnızca bir tane Primary Key OLABILIR.
Her tabloda Primary Key olması zorunlu değildir.

Primary Key benzersiz ( Unique ) olmalıdır 
ama her Unique data  Primary Key değildir.

Primary Key her türlü datayı içerebilir. Sayı, String, ...

Primary Key, dış dünyadaki gerçek verileri temsil ediyorsa, 
örneğin; TC  kimlik numarası, bir kitabın ISBN numarası, bir ürünün ismi, email hesabı  gibi 
buna Natural Key,
veriyle doğrudan ilgisi olmayan yapay (üretilmiş) sira no, ogrenci no gibi bir değer ise 
Surrogate Key denir.

Syntax 1 :
	Data Type'dan sonra "PRIMARY KEY" yazarak

	CREATE TABLE students_table
	(
		id INT PRIMARY KEY,
		name VARCHAR(50) UNIQUE,
		grade INT NOT NULL,
		adres VARCHAR(100),
		last_update DATE
	); 

Syntax 2 :
	CONSTRAINT Keyword'u kullanilarak PRIMARY KEY tanimlanabilir.
	"CONSTRAINT constraintName PRIMARY KEY(column1, column2, ... column_n);"

	CREATE TABLE students_table
	(
		id INT ,
		name VARCHAR(50),
		grade INT,
		adres VARCHAR(100),
		last_update DATE
		CONSTARINT id_pk PRIMARY KEY (id)
        
        
===============================================================
*/

 /*  
========================  ORNEK  ========================
"sehirler" isimli bir tablo olusturun.
Tabloda "alan_kodu", "isim", "nufus" fieldlari olsun.
"isim" field'i bos birakilamasin.
1. yolu kullanarak "alan_kodu" field'ini primary key yapin
=========================================================
 */
 
 CREATE TABLE sehirler
(
	alan_kodu CHAR(4) PRIMARY KEY,
    isim VARCHAR(20) NOT NULL,
	nufus BIGINT
);







 /*  
====================  Composite Key  ====================
Bir tabloda Primary Key yapilacak bir sutun bulunamadiginda, 
birden fazla sütunun birleştirilerek benzersiz (unique) kayıtları tanımladığı 
birincil anahtardır.
=========================================================
 */


 /*  
========================  ORNEK  ========================
"ogretmenler" isimli bir table olusturun.
Tabloda "id", "isim", "brans", "cinsiyet" fieldlari olsun.
"id" field'i tekrarli veri kabul etmesin ve otomatik olarak artan degerler alsin
2. yolu kullanarak "id" ve "isim" field'larini primary key yapin
=========================================================
 */

CREATE TABLE ogretmenler
(
	id INT AUTO_INCREMENT ,
    isim VARCHAR(20),
    brans VARCHAR(20),
    cinsiyet CHAR(5),
    CONSTRAINT ogretmenler_tanim PRIMARY KEY (id,isim)
);

DROP TABLE ogretmenler;







 /*  
========================  ORNEK  ========================
"universite_ogrenci_bilgi_sistemi" isimli bir table olusturun.
Tabloda "giris_yili", "giris_siralamasi", "isim", "bolum" field'lari olsun.
"isim" field'i NULL deger kabul etmesin.
2. yolu kullanarak "giris_yili", "bolum", ve "giris_siralamasi" field'larini primary 	key yapin
=========================================================
 */


CREATE TABLE universite_ogrenci_bilgi_sistemi (
    giris_yili YEAR,
    giris_siralamasi INT,
    isim VARCHAR(100) NOT NULL,
    bolum VARCHAR(100),
    CONSTRAINT uni_pk PRIMARY KEY (giris_yili, bolum, giris_siralamasi)
);

SELECT *
FROM universite_ogrenci_bilgi_sistemi;







/*
============================ Foreign Key ============================
 Foreign Key iki tablo arasında relation oluşturmak için kullanılır.

 Foreign Key başka bir tablodaki Primary Key ile ilişkilendirilmiş  olmalıdır.

 Foreign Key, değerleri farklı bir tablodaki Primary Key ile eşleşen bir sütun veya sütunların birleşimidir. 

 Bir Tabloda birden fazla Foreign Key olabilir

 Foreign Key olarak tanimlanan field’da tekrarlar olabilir

 Forein Key NULL degeri Kabul eder
 
 Syntax : 
	CONSTRAINT constraintName FOREIGN KEY(child_table_field_name)
	REFERENCES parent_table (parent_table_field_name)

	CREATE TABLE table_name
	(
		id CHAR(10),
		name CHAR(10),
		CONSTRAINT constraint_name
		FOREIGN KEY(id)
		REFERENCES parent_table (parent_table_field_name)
	);


=====================================================================
*/

 /*  
========================  ORNEK  ========================
 "tedarikci" isimli bir tablo olusturun.
 Tabloda "tedarikci_id", "tedarikci_ismi", "iletisim_isim" fieldlari olsun.
 "tedarikci_id" field'ini PRIMARY KEY olsun.
	
 "urunler" isminde baska bir tablo olusturun. 
 Tabloda "tedarikci_id" ve "urun_id" field'lari olsun.
 "tedarikci_id" FOREIGN KEY olsun.
=========================================================
 */
 
 CREATE TABLE tedarikci(
	tedarikci_id CHAR(6) PRIMARY KEY,
    tedarikci_ismi VARCHAR(40), 
    iletisim_isim VARCHAR(40)
);


CREATE TABLE urunler (
	tedarikci_id CHAR(6), 
    urun_id CHAR(10),
    CONSTRAINT urunler_tedarikci_fk FOREIGN KEY (tedarikci_id) REFERENCES tedarikci (tedarikci_id)
);














 /*  
========================  NOTLAR  =======================
 Bir field’i Foreign Key yapmak icin 
 mutlaka başka bir tablodaki Primary Key ile ilişiklendirilmelidir.
 
 Referenced table (bağlanılan tablo, Primary Key’in olduğu tablo) 
 Parent Table olarak da adlandırılır. 
 Foreign Key’in olduğu tablo ise Child Table olarak da adlandırılır.

 Bir tabloda FOREIGN KEY oluşturmanın bazı doğal sonuçları vardır.
 
 1- Foreign Key Pimary Key'de var olmayan bir degeri kendi icerisinde bulunduramaz.
 
 2- Parent table oluşturulmadan Child Tablo olusturmak istenirse hata alınır.

 3- Parent table oluşturulmadan Child Tablo olusturmak istenirse hata alınır.
 
 4- Parent Table’da olmayan bir veriyi(PK'daki herhangi bir deger) Child Table’a giremezsiniz.
 
 5- Child Table’ı silmeden Parent Table’ı silemezsiniz. 
    Önce Child  Table silinir, sonra Parent Table silinir.
=========================================================
 */






 /*  
========================  ORNEK  ========================
 yukardaki tedarikci ve urunler tablolarinda
 once parent table olan tedarikci tablosunu silmeye calisin
=========================================================
 */


DROP TABLE tedarikci;
-- 10:27:34	DROP TABLE tedarikci	Error Code: 3730. Cannot drop table 'tedarikci' referenced by a foreign key constraint 'urunler_tedarikci_fk' on table 'urunler'.	0.0014 sec





 /*  
========================  ORNEK  ========================
 yukardaki tedarikci ve urunler tablolarinda
 once child table olan urunler tablosunu, 
 sonra parent table olan tedarikci tablosunu silmeye calisin
=========================================================
 */


DROP TABLE urunler;
DROP TABLE tedarikci;




 /*  
========================  ORNEK  ========================
 tedarikci ve urunler tablolarini yeniden olusturup
 tedarikci tablosuna kayit eklemeden once 
 urunler tablosuna kayit eklemeyi deneyin
=========================================================
 */
 
 INSERT urunler VALUES ('123456','123456789');

-- 10:30:26	INSERT urunler VALUES ('123456','123456789')	Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`sqldersleri`.`urunler`, CONSTRAINT `urunler_tedarikci_fk` FOREIGN KEY (`tedarikci_id`) REFERENCES `tedarikci` (`tedarikci_id`))	0.0050 sec







 /*  
========================  ORNEK  ========================
  once tedarikci tablosuna kayit ekleyip, 
  sonra da urunler tablosuna kayit eklemeyi deneyin
=========================================================
 */

INSERT tedarikci VALUES ('123456','Murat Otomotive','Murat Yilmaz');
INSERT urunler VALUES ('123456','123456789');








 /*  
============= Constraints ( Kısıtlamalar)  ==============

 tablo sütunlarına veri bütünlüğünü sağlamak için 
 uygulanan kurallar ve kısıtlamalardır.
 
 1- Primary Key : Bir tabloyu eşsiz olarak tanımlayan sütun ya da sütunlar.

 2- Foreign Key : Bir sütunun başka bir tablodaki değere bağlı olduğunu belirtir ve ilişki kurulmasını sağlar.

 3- UNIQUE : Sütundaki tüm değerlerin benzersiz olmasını sağlar.

 4- NOT NULL : Sütunun boş (NULL) olmasını engeller.

 5- CHECK : Bir sütunun alabileceği değerleri sınırlar.

 6- DEFAULT : Bir sütun için varsayılan değer belirler 
	(veri girilmediğinde otomatik atanır).

 7- AUTO_INCREMENT : Bir sütunun otomatik olarak artmasını sağlar 
    (genellikle id alanında kullanılır).

=========================================================
 */





 /*  
========================  ORNEK  ========================
 SCHEMA OLUSTURMA
 
 1- Öğrenci tablosu oluşturun. 
    Tabloda ogrenci_no, isim ve soyisim field'lari olsun
    ve ogrenci_no Primary Key olsun
=========================================================
 */


CREATE TABLE ogrenci
(
	ogrenci_no INT PRIMARY KEY,
    isim VARCHAR(50),
    soyisim VARCHAR(50)
);






 /*  
========================  ORNEK  ========================
 2- Adresler tablosu olusturun. 
    Tabloda ogrenci_no, sehir, ilce, sokak ve ev_no field'lari olsun
    ve ogrenci_no ogrenci tablosu ile iliski kurmak icin Foreign Key olsun
=========================================================
 */

CREATE TABLE adresler
(
	ogrenci_no INT,
    sehir VARCHAR(50),
    ilce VARCHAR(50),
    sokak VARCHAR(50),
    ev_no VARCHAR(50),
    CONSTRAINT adres_ogrenci_fk FOREIGN KEY (ogrenci_no) REFERENCES ogrenci (ogrenci_no)
);







 /*  
========================  ORNEK  ========================
 3- Ogretmen tablosu olusturun. 
    Tabloda ogretmen_id, isim, soyisim  ve ders_adi field'lari olsun
    ve ogretmen_id Primary Key olsun
=========================================================
 */

CREATE TABLE ogretmenler
(
	ogretmen_id INT PRIMARY KEY,
    isim VARCHAR(50),
    soyisim VARCHAR(50),
    ders_adi VARCHAR(50)
);




-- onceki ogretmenler tablosunu silin
DROP TABLE ogretmenler;


 /*  
========================  ORNEK  ========================
 4- Dersler tablosu olusturun. 
   Tabloda id, ogrenci_no ve ders_adi, ortalama_not ve ogretmen_id  field'lari olsun
   id Primary Key olsun ve otomatik olarak artan degerler alsin
   ogrenci_no ogrenci tablosu ile iliski kurmak icin Foreign Key olsun
   ogretmen_id ogretmen tablosu ile iliski kurmak icin Foreign Key olsun

=========================================================
 */
 
 CREATE TABLE dersler (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ogrenci_no INT,
    ders_adi VARCHAR(50),
    ortalama_not DECIMAL(4,2),
    ogretmen_id INT,
    CONSTRAINT 
    dersler_ogrenci_fk FOREIGN KEY (ogrenci_no) REFERENCES ogrenci (ogrenci_no),
    CONSTRAINT 
    dersler_ogretmenler_fk FOREIGN KEY (ogretmen_id) REFERENCES ogretmenler (ogretmen_id)
);

DROP TABLE dersler;






 /*  
========================  ORNEK  ========================
 schema'daki tablolara kayit ekleyin
=========================================================
 */

-- ogrenci tablosuna NULL icermeyen kayitlar ekleyin
-- ogrenci tablosuna NULL icermeyen kayitlar ekleyin

INSERT INTO ogrenci VALUES
			(101, 'Ali', 'Yılmaz'),
			(103, 'Ece', 'Kaya'),
			(107, 'Mehmet', 'Yılmaz'),
			(109, 'Mert', 'Demir'),
			(112, 'Ahmet', 'Kurt'),
			(118, 'Buse', 'Kaya'),
			(123, 'Emre', 'Yıldız'),
			(129, 'Elif', 'Yılmaz'),
			(131, 'Can', 'Demir'),
			(137, 'Burcu', 'Kaya'),
			(141, 'Mert', 'Yıldız'),
			(145, 'Buse', 'Kurt'),
			(151, 'Deniz', 'Yılmaz'),
			(157, 'Ece', 'Kaya'),
			(160, 'Buse', 'Demir');

SELECT * 
FROM ogrenci;


INSERT INTO adresler VALUES
			(101, 'Ankara', 'Çankaya', 'Gül Sokak', '12'),
			(103, 'Ankara', 'Yenimahalle', 'Meşe Sokak', '5'),
			(107, 'Ankara', 'Sincan', 'Lale Sokak', '8'),
			(109, 'Ankara', 'Çankaya', 'Menekşe Sokak', '22'),
			(112, 'Ankara', 'Yenimahalle', 'Çamlık Sokak', '18'),
			(118, 'Ankara', 'Sincan', 'Papatya Sokak', '3'),
			(123, 'Ankara', 'Çankaya', 'Karanfil Sokak', '19'),
			(129, 'Ankara', 'Yenimahalle', 'Zambak Sokak', '11'),
			(131, 'Ankara', 'Sincan', 'Begonya Sokak', '16'),
			(137, 'Ankara', 'Çankaya', 'Orkide Sokak', '7'),
			(141, 'Ankara', 'Yenimahalle', 'Nergis Sokak', '4'),
			(145, 'Ankara', 'Sincan', 'Sümbül Sokak', '10'),
			(151, 'Ankara', 'Çankaya', 'Gül Sokak', '2'),
			(157, 'Ankara', 'Yenimahalle', 'Meşe Sokak', '21'),
			(160, 'Ankara', 'Sincan', 'Lale Sokak', '9');

SELECT * 
FROM adresler;

INSERT INTO ogretmenler VALUES
		(11, 'Ahmet', 'Yıldız', 'Matematik'),
		(12, 'Zeynep', 'Demir', 'Matematik'),
		(13, 'Kerem', 'Balcı', 'Matematik'),
		(14, 'Mehmet', 'Koç', 'Fizik'),
		(15, 'Ayşe', 'Çetin', 'Fizik'),
		(16, 'Ali', 'Kurt', 'Kimya'),
		(17, 'Merve', 'Aslan', 'İngilizce'),
		(18, 'Burak', 'Şahin', 'İngilizce'),
		(19, 'Elif', 'Sarı', 'Tarih'),
		(20, 'Can', 'Yılmaz', 'Coğrafya');

SELECT * 
FROM ogretmenler;


INSERT INTO dersler (ogrenci_no, ders_adi, ortalama_not, ogretmen_id) VALUES
			(101, 'Matematik', 85.5, 11),
			(101, 'Fizik', 78.0, 14),
			(103, 'Matematik', 72.5, 12),
			(103, 'Tarih', 91.0, 19),
			(107, 'İngilizce', 75.0, 17),
			(107, 'Kimya', 82.0, 16),
			(109, 'Matematik', 69.5, 13),
			(109, 'Fizik', 74.0, 15),
			(112, 'İngilizce', 80.0, 18),
			(112, 'Coğrafya', 88.5, 20),
			(118, 'Matematik', 77.0, 12),
			(123, 'Tarih', 84.0, 19),
			(123, 'Kimya', 90.0, 16),
			(129, 'İngilizce', 86.0, 17),
			(129, 'Matematik', 92.0, 11),
			(131, 'Fizik', 95.0, 14),
			(131, 'Coğrafya', 89.0, 20),
			(137, 'İngilizce', 78.5, 18),
			(141, 'Matematik', 85.0, 13),
			(145, 'Tarih', 79.0, 19),
			(151, 'Kimya', 81.0, 16),
			(157, 'Fizik', 90.0, 15),
			(160, 'İngilizce', 83.0, 17),
			(160, 'Fizik', 87.0, 15),
			(101, 'Coğrafya', 76.5, 20),
			(118, 'Matematik', 84.0, 11),
			(145, 'İngilizce', 88.0, 18),
			(151, 'Matematik', 74.0, 12),
			(129, 'Fizik', 91.0, 14),
			(137, 'Tarih', 89.0, 19);

SELECT * 
FROM dersler;



























