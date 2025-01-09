USE [try1]
GO
CREATE TRIGGER after_exam_insert8
ON Sýnavlar
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Otomatik yerleþtirme kontrolü (id elle ekleniyor)
    INSERT INTO Yerleþtirme (id, ogrenciId, bolumId, yerlesmeTarihi)
    SELECT 
        ISNULL((SELECT MAX(id) FROM Yerleþtirme) + 1, 1), -- Eðer boþsa 1'den baþlat
        t.ogrenciId, 
        b.id, 
        GETDATE()
    FROM Tercihler t
    JOIN Bölümler b ON t.bolumId = b.id
    JOIN inserted i ON i.id = b.sinav_id
    WHERE i.maximum_puan >= b.alt_puan_limiti
    AND NOT EXISTS (
        SELECT 1 FROM Yerleþtirme y 
        WHERE y.ogrenciId = t.ogrenciId AND y.bolumId = b.id
    );
INSERT INTO Sýnavlar (id, name, maximum_puan, minimum_puan)
VALUES (5, 'TYT', 400, 150);
END;
GO

