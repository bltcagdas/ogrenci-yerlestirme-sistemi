INSERT INTO Üniversiteler (id, cityCode, name, tip, email, websitesi, telefon)
VALUES 
(1, '23', 'Fırat Üniversitesi', 'Devlet', 'info@firat.edu.tr', 'www.firat.edu.tr', '04142345678');

SELECT TOP (1000) [id]
      ,[cityCode]
      ,[name]
      ,[tip]
      ,[email]
      ,[websitesi]
      ,[telefon]
  FROM [try1].[dbo].[Üniversiteler]