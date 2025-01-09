--ðniversite ekleme
INSERT INTO Üniversiteler (id, cityCode, name, tip, email, websitesi, telefon)
VALUES (2, '23', 'Fýrat Üniversitesi2', 'Devlet', 'info@firat.edu.tr', 'www.firat.edu.tr', '04142345678');

--fakülte ekleme
INSERT INTO Fakülteler (id, universite_id, name, adres, telefon, email)
VALUES (2, 1, 'Mühendislik Fakültesi2', 'Elazýð', '04142345678', 'fakulte@firat.edu.tr');

--bölüm ekleme
INSERT INTO Bölümler (id, fakulte_id, name, adres, telefon, email, sinav_id, kontenjan, alt_puan_limiti)
VALUES (2, 1, 'Bilgisayar Mühendisliði2', 'Elazýð', '04142345678', 'bilgisayar@firat.edu.tr', 1, 50, 350);

--öðrenci ekleme
INSERT INTO Öðrenciler (tc_kimlik_no, ad, soyad, dogum_tarihi, telefon, email)
VALUES ('123456789012', 'Ahmet2', 'Yýlmaz', '2000-05-15', '05551234567', 'ahmet@example.com');

--tercih ekleme
INSERT INTO Tercihler (id, ogrenciId, bolumId, sira)
VALUES (2, '123456789012', 1, 1);
