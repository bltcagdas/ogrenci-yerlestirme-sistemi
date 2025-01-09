INSERT INTO Bölümler (id, fakulte_id, name, adres, telefon, email, sinav_id, kontenjan, alt_puan_limiti)
VALUES 
(1, 1, 'Bilgisayar Mühendisliği', 'Elazığ', '04142345678', 'bilgisayar@firat.edu.tr', 1, 50, 350);

SELECT TOP (1000) [id]
      ,[fakulte_id]
      ,[name]
      ,[adres]
      ,[telefon]
      ,[email]
      ,[sinav_id]
      ,[kontenjan]
      ,[alt_puan_limiti]
  FROM [try1].[dbo].[Bölümler]
