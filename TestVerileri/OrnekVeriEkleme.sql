USE [try1]
GO

INSERT INTO Öðrenciler (tc_kimlik_no, ad, soyad, dogum_tarihi, telefon, email)
VALUES
('12345678901', 'Ahmet', 'Yýlmaz', '2000-05-15', '05551234567', 'ahmet@example.com'),
('12345678902', 'Zeynep', 'Kaya', '2001-03-20', '05559876543', 'zeynep@example.com'),
('12345678903', 'Mehmet', 'Demir', '2000-08-10', '05553456789', 'mehmet@example.com');

INSERT INTO Bölümler (id, fakulte_id, name, adres, telefon, email, sinav_id, kontenjan, alt_puan_limiti)
VALUES
(1, 1, 'Bilgisayar Mühendisliði', 'Fýrat Üniversitesi', '04142345678', 'bilgisayar@firat.edu.tr', 1, 50, 350),
(2, 1, 'Elektrik Elektronik Müh.', 'Fýrat Üniversitesi', '04142345679', 'elektrik@firat.edu.tr', 1, 60, 300);

INSERT INTO Tercihler (id, ogrenciId, bolumId, sira)
VALUES
(1, '12345678901', 1, 1),
(2, '12345678902', 2, 1),
(3, '12345678903', 1, 1);

--sýnav sonuçlarý (aslýnda puanlarý)
INSERT INTO Sýnavlar (id, name, maximum_puan, minimum_puan)
VALUES
(1, 'TYT', 400, 150),
(2, 'TYT', 310, 150),
(3, 'TYT', 590, 150);
GO


