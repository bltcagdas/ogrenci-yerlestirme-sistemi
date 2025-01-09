--�niversite ekleme
INSERT INTO �niversiteler (id, cityCode, name, tip, email, websitesi, telefon)
VALUES (2, '23', 'F�rat �niversitesi2', 'Devlet', 'info@firat.edu.tr', 'www.firat.edu.tr', '04142345678');

--fak�lte ekleme
INSERT INTO Fak�lteler (id, universite_id, name, adres, telefon, email)
VALUES (2, 1, 'M�hendislik Fak�ltesi2', 'Elaz��', '04142345678', 'fakulte@firat.edu.tr');

--b�l�m ekleme
INSERT INTO B�l�mler (id, fakulte_id, name, adres, telefon, email, sinav_id, kontenjan, alt_puan_limiti)
VALUES (2, 1, 'Bilgisayar M�hendisli�i2', 'Elaz��', '04142345678', 'bilgisayar@firat.edu.tr', 1, 50, 350);

--��renci ekleme
INSERT INTO ��renciler (tc_kimlik_no, ad, soyad, dogum_tarihi, telefon, email)
VALUES ('123456789012', 'Ahmet2', 'Y�lmaz', '2000-05-15', '05551234567', 'ahmet@example.com');

--tercih ekleme
INSERT INTO Tercihler (id, ogrenciId, bolumId, sira)
VALUES (2, '123456789012', 1, 1);
