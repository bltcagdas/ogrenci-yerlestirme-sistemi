USE [try1]
GO
CREATE TRIGGER after_exam_insert8
ON S�navlar
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Otomatik yerle�tirme kontrol� (id elle ekleniyor)
    INSERT INTO Yerle�tirme (id, ogrenciId, bolumId, yerlesmeTarihi)
    SELECT 
        ISNULL((SELECT MAX(id) FROM Yerle�tirme) + 1, 1), -- E�er bo�sa 1'den ba�lat
        t.ogrenciId, 
        b.id, 
        GETDATE()
    FROM Tercihler t
    JOIN B�l�mler b ON t.bolumId = b.id
    JOIN inserted i ON i.id = b.sinav_id
    WHERE i.maximum_puan >= b.alt_puan_limiti
    AND NOT EXISTS (
        SELECT 1 FROM Yerle�tirme y 
        WHERE y.ogrenciId = t.ogrenciId AND y.bolumId = b.id
    );
INSERT INTO S�navlar (id, name, maximum_puan, minimum_puan)
VALUES (5, 'TYT', 400, 150);
END;
GO

