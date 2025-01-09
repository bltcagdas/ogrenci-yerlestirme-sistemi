CREATE TABLE [Öğrenciler] (
  [tc_kimlik_no] char(11) PRIMARY KEY,
  [ad] varchar(50),
  [soyad] varchar(50),
  [dogum_tarihi] date,
  [telefon] varchar(15),
  [email] varchar(100)
)
GO

CREATE TABLE [Üniversiteler] (
  [id] integer PRIMARY KEY,
  [cityCode] varchar(10),
  [name] varchar(100),
  [tip] varchar(50),
  [email] varchar(100),
  [websitesi] varchar(100),
  [telefon] varchar(15)
)
GO

CREATE TABLE [Fakülteler] (
  [id] integer PRIMARY KEY,
  [universite_id] integer,
  [name] varchar(100),
  [adres] varchar(255),
  [telefon] varchar(15),
  [email] varchar(100)
)
GO

CREATE TABLE [Bölümler] (
  [id] integer PRIMARY KEY,
  [fakulte_id] integer,
  [name] varchar(100),
  [adres] varchar(255),
  [telefon] varchar(15),
  [email] varchar(100),
  [sinav_id] integer,
  [kontenjan] integer,
  [alt_puan_limiti] integer
)
GO

CREATE TABLE [Sınavlar] (
  [id] integer PRIMARY KEY,
  [name] varchar(100),
  [maximum_puan] integer,
  [minimum_puan] integer
)
GO

CREATE TABLE [Tercihler] (
  [id] integer PRIMARY KEY,
  [ogrenciId] char(11),
  [bolumId] integer,
  [sira] integer
)
GO

CREATE TABLE [Yerleştirme] (
  [id] integer PRIMARY KEY,
  [ogrenciId] char(11),
  [bolumId] integer,
  [yerlesmeTarihi] date
)
GO

ALTER TABLE [Fakülteler] ADD FOREIGN KEY ([universite_id]) REFERENCES [Üniversiteler] ([id])
GO

ALTER TABLE [Bölümler] ADD FOREIGN KEY ([fakulte_id]) REFERENCES [Fakülteler] ([id])
GO

ALTER TABLE [Bölümler] ADD FOREIGN KEY ([sinav_id]) REFERENCES [Sınavlar] ([id])
GO

ALTER TABLE [Tercihler] ADD FOREIGN KEY ([ogrenciId]) REFERENCES [Öğrenciler] ([tc_kimlik_no])
GO

ALTER TABLE [Tercihler] ADD FOREIGN KEY ([bolumId]) REFERENCES [Bölümler] ([id])
GO

ALTER TABLE [Yerleştirme] ADD FOREIGN KEY ([ogrenciId]) REFERENCES [Öğrenciler] ([tc_kimlik_no])
GO

ALTER TABLE [Yerleştirme] ADD FOREIGN KEY ([bolumId]) REFERENCES [Bölümler] ([id])
GO
