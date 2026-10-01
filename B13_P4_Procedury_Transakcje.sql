--PROCEDURY WYSZUKUJ¥CE

--[1]
--Znajdz pracownika po jego ID
CREATE OR ALTER PROCEDURE dbo.Pracownik_ZnajdzID
@Par_IDPracownik int
AS
BEGIN
SELECT IDPracownik, Imie, Nazwisko, Stanowisko, Uwagi
FROM dbo.Pracownik
WHERE IDPracownik = @Par_IDPracownik;
END;
GO

EXECUTE dbo.Pracownik_ZnajdzID
@Par_IDPracownik = 3;
GO

--[2]
--Znajdz Pracownika po nazwisku zaczynajcym sie na litere
CREATE OR ALTER PROCEDURE dbo.Pracownik_ZnajdzNazwisko
@Par_NazwiskoPracownik char(1)
AS
BEGIN
SELECT IDPracownik, Imie, Nazwisko, Stanowisko, Uwagi
FROM dbo.Pracownik
WHERE Nazwisko LIKE @Par_NazwiskoPracownik +'%'
ORDER BY Nazwisko ASC, Imie ASC;
END;
GO

EXECUTE dbo.Pracownik_ZnajdzNazwisko
@Par_NazwiskoPracownik = 'K';
GO

--[3]
--ZNAJDZ cene pokoju w przedziale cenowym
CREATE OR ALTER PROCEDURE dbo.Pokoj_ZnajdzCene
@Par_CenaOd money,
@Par_CenaDo money
AS
BEGIN
SELECT IDPokoj, Lozko1Os, Lozko2Os, LiczbaMiejsc, Stan, Wstawka, CenaPokoj, KompletRecznik, KompletWH, UpominekPowitalny, ButelkaWody, PokojPalacz, Szklanka 
FROM Pokoj
WHERE CenaPokoj BETWEEN @Par_CenaOd AND @Par_CenaDo;
END;
GO

EXECUTE dbo.Pokoj_ZnajdzCene
@Par_CenaOd = 150,
@Par_CenaDo = 300;
GO

--[4]
--ZNAJDZ Przydzielonych pracowników miedzy danymi dniami
CREATE OR ALTER PROCEDURE dbo.PrzydzieleniePracownikaData
@Par_DataOd date,
@Par_DataDo date
AS
BEGIN
SELECT IDPrzydzieleniePracownika, IDPracownik, IDPokoj, DataPrzydzielenia, DataRozpoczecia, DataZakonczenia, Zadanie
FROM dbo.PrzydzieleniePracownika
WHERE DataPrzydzielenia BETWEEN @Par_DataOd AND @Par_DataDo;
END;
GO

EXECUTE dbo.PrzydzieleniePracownikaData
@Par_DataOd = '2025-06-14',
@Par_DataDo = '2025-06-24';
GO

--[5]
--ZNAJDZ Zadanie które trwa okreœlony czas dni
CREATE OR ALTER PROCEDURE dbo.PrzydzieleniePracownikaDni
@Par_Dni int
AS
BEGIN
SELECT IDPrzydzieleniePracownika, IDPracownik, IDPokoj, DataPrzydzielenia, DataRozpoczecia, DataZakonczenia, Zadanie
FROM dbo.PrzydzieleniePracownika
WHERE DATEDIFF(d,DataRozpoczecia,DataZakonczenia) = @Par_Dni;
END;
GO

EXECUTE dbo.PrzydzieleniePracownikaDni
@Par_Dni = 3;
GO


--[6]
--ZLICZA ZADANIA Pracowników którzy maja przynajmniej 3 lub wiecej zadan
CREATE OR ALTER PROCEDURE PrzydzieleniePracownika_Count
@Par_ProgZlecen int
AS
BEGIN
SELECT dbo.Pracownik.IDPracownik,Imie,Nazwisko, COUNT(*) AS [LiczbaZlecen]
FROM dbo.PrzydzieleniePracownika
INNER JOIN dbo.Pracownik ON dbo.PrzydzieleniePracownika.IDPracownik = dbo.Pracownik.IDPracownik
GROUP BY dbo.Pracownik.IDPracownik,Imie,Nazwisko
HAVING COUNT(*) >= @Par_ProgZlecen
ORDER BY [LiczbaZlecen] DESC, IDPracownik DESC;
END;
GO

EXECUTE PrzydzieleniePracownika_Count
@Par_ProgZlecen = 3;
GO

--[7]
--Pokazuje termin rezerwacji najblizszy daty aktualnej
CREATE OR ALTER PROCEDURE Rezerwacja_ClosestDate
AS
BEGIN
DECLARE @Par_Czas as Date
SET @Par_Czas = GetDate()
SELECT TOP 1 IDRezerwacja, IDGosc, DataRezerwacji, DataRozpoczecia, DataZakonczenia, IDStatus, KwotaLaczna, Uwagi
FROM dbo.Rezerwacja
WHERE DataRozpoczecia > @Par_Czas
ORDER BY DataRozpoczecia ASC
END;
GO


EXECUTE Rezerwacja_ClosestDate 
GO