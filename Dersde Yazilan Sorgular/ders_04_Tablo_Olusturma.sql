

/*
	Database'de islem yapmak,
    Java ile islem yapmaktan farklidir.
    
    Java Run Time program oldugundan, 
    calisma bittiginde hersey sifirlanir ve en bastaki duruma doner
    ANNNNCAAAAKKK database'de yapilan her islem KALICI olacaktir.
    
    Kismen geriye almak mumkun olsa da,
    her islemi geriye almak MUMKUN DEGILDIR
    
    BU ACIDAN database ile yapacagimiz her islemde 2 kere dusunmekte fayda var
*/


/*
	Database ve Query sayfasi farkli seylerdir.
    Database'i Local olarak olusturduk,
    Ancak ister Local isterse Uzak database olsun, database'de yapilan islemler KALICIDIR
    
    Database'de islem yapabilmek icin olusturdugumuz Query dosyalari ise
    bizim not aldigimiz sayfalar gibidir,
    biz kaydetmedikce kalici olarak kaydedilmez.
*/

/*
	SQL ile sorgu yapmak da Java kodlarini calistirmaktan farklidir
    Java'da bir class veya method calistirildiginda
    o class veya method'daki tum kodlar calisir.
    
    ANCAAAKKK
    Database sorgularini calistirmak icin iki alternatif vardir
    1- Query sayfasindaki belirli satir(lar)i calistirmak icin
       o satir(lar)i secip yukardaki execute (simsek) butonuna basilir
       
       NOT : eger secim olmazsa tum sayfa calistirilir
             BUNU KESINLIKLE TAVSIYE ETMIYORUZ
             cunku ayni kayitlari tekrar tekrar database'e kaydedebilir
             
    2- uzerinde (I) olan execute(simsek) tusuna basarsdaniz
       en yukardan Cursor'un bulundugu satira kadar 
       tum sorgulari calistirir
*/

-- Bir Query sayfasinin hangi Schema ile calisacagini belirlemek icin use komutu kullanir
-- Query sayfasi her acildiginda bu kodun 1 kere calistirilmasi gerekir.



/*
	NOT : Kendi kullandigimiz database’de sadece tek schema olsa da 
	buyuk database’lerde farkli schema’lar olacagindan, 
	bizim hangi schema’yi kullanacagimizi belirtmemiz onemlidir.
*/
USE SqlDersleri;

/*
===============================================
		TABLO OLUSTURMA (CRUD - Create)
===============================================
/*

/*
"CREATE TABLE" bir veritabanında yeni bir tablo oluşturmak için kullanılan 
bir SQL (Structured Query Language) ifadesidir. 

Bu komut, tablonun yapısını tanımlar.
yani tabloda bulunacak sütunların isimlerini, veri tiplerini ve diğer özelliklerini 
(örneğin, Primary Key, Unique, Not Null  vb.) belirtir. 

"CREATE TABLE" komutunu kullanırken, her bir sütun için uygun veri tipini ve 
boyutunu belirlemek ve gerektiğinde sütunlara kısıtlamalar eklemek önemlidir. 

Bu işlem, veri bütünlüğünü korumak ve veritabanı işlemlerinin doğru şekilde 
çalışmasını sağlamak için kritik öneme sahiptir.
*/


/*
*************** SYNTAX ***************
CREATE TABLE tablo_adi 
(
    sütun1_Adi veri_tipi1 ,
    sütun2_Adi veri_tipi2 ,
    ...
    sütunN_Adi veri_tipiN ,
);
*/

/*  
   ========================  ORNEK  ========================
	Icerisinde kitap id, kitap adi, yazar adi, yayin yili ve kategori column’lari
	olan bir kitaplar tablosu oluşturun
   =========================================================
 */
 
 CREATE TABLE kitaplar (
	kitap_id INT, 
    kitap_adi VARCHAR(50), 
    yazar_adi VARCHAR(50), 
    yayin_yili INT, 
    kategori VARCHAR(50)
 );



/*
   ========================  NOTLAR  ========================
	1- SQL’de yapilan islem sonucunda console’da yapilan islem ve varsa hatalar yazar, 
        oluşturulan tablo veya eklenen kayitlar direkt gosterilmez
	2- Olusturulan tabloyu görmek icin schemas bolumunden tablo seçilip, goruntulenmesi saglayabilir.
	3- MySql de genel isimlendirme kurali snake_case'dir. 
	4- SQL komutlari buyuk harf ile yazilir. Degiskenler kucuk harfler ile yazilir.
*/


/*  
   ========================  ORNEK  ========================
	“tedarikciler” isminde bir tablo oluşturun. Icinde tedarikci_id, tedarikci_ismi, tedarikci_adres 
    ve ulasim_tarihi sutunlari olsun.
   =========================================================
 */

CREATE TABLE tedarikciler(

	tedarikci_id CHAR(4), 
    tedarikci_ismi VARCHAR(50), 
    tedarikci_adres VARCHAR(50), 
    ulasim_tarihi DATE

);



/*  
   ========================  ORNEK  ========================
	“tedarikciler” tablosundan “tedarikciler_id_name” isminde yeni bir tablo  olusturun. 
    Icinde tedarikci_id, tedarikci_ismi field’lari olsun.
   =========================================================
   
   SYNTAX
   
   CREATE TABLE isim
   AS SELECT istenen_sutunlar
   FROM kaynak table
 */

CREATE TABLE tedarikciler_id_name
AS SELECT tedarikci_id, tedarikci_ismi
FROM tedarikciler;

 /*
 ===============================================
		TABLO GORUNTULEME - SELECT
 =============================================== 
 
 SELECT DQL grubu SQL komutudur. 
 SQL'de veritabanından veri sorgulamak ve almak için kullanılan temel bir komuttur. 

 Bu komut, belirtilen kriterlere uygun verileri seçmek ve görüntülemek için kullanılır.

 Sorgu sonucunda tablodan istenen ozelliklere uygun tum datalari getirir. 
 Istenen ozelliklere uyan hic veri yoksa 
 sorgu sonucu hic data dönmeyebilir, 
 ayni sekilde istenen sarti sagliyorsa tablodaki tum datayi da getirebilir.

*************** SYNTAX ***************
 SELECT * FROM tablo_adi;

 SQL syntax yapisi gundelik konusma diline yaklastirilmaya calisiliyor (INGILIZCE)
 Syntax yapisini tersten okudugunuzda mantikli bir cumle ile karsilasirsiniz.

*/


/*  
   ========================  ORNEK  ========================
	Icerisinde personel id, adi, soyadi, dogum tarihi, pozisyon ve maas sutunlari olan 
    bir personel tablosu olusturun. 
   =========================================================
 */
 

CREATE TABLE personel(
	personel_id INT, 
    adi VARCHAR(50), 
    soyadi VARCHAR(50), 
    dogum_tarihi DATE,
    pozisyon VARCHAR(50),
    maas INT
);

 -- Personel tablosunu görüntüleyin.
 SELECT * FROM personel;



 -- Personel tablosundaki soyadi ve personel_id sutunlarini görüntüleyin.
 SELECT soyadi, personel_id FROM personel;
 


