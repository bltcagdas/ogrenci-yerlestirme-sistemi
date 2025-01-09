INSERT INTO Fakülteler (id, universite_id, name, adres, telefon, email)
VALUES 
(1, 1, 'Mühendislik Fakültesi', 'Elazığ', '04142345678', 'fakulte@firat.edu.tr');

SELECT TOP (1000) [id]
      ,[universite_id]
      ,[name]
      ,[adres]
      ,[telefon]
      ,[email]
  FROM [try1].[dbo].[Fakülteler]
