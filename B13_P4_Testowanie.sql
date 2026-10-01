--TESTOWANIE PROCEDUR ZAWARTYCH W B13_P4_Procedury_Transakcje

Select * FROM Rezerwacja
Select * FROM PrzydzieleniePracownika
Select * FROM Pracownik
Select * FROM Pokoj
GO

--WARTOSCI TABEL POCZATKOWYCH 
/*
dbo.Rezerwacja
IDRezerwacja IDGosc      DataRezerwacji DataRozpoczecia DataZakonczenia IDStatus    KwotaLaczna           Uwagi
------------ ----------- -------------- --------------- --------------- ----------- --------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1            1           2025-06-17     2025-08-03      2025-08-04      1           150,00                BRAK                                                                                                                                                                                                                                                            
2            6           2025-06-17     2025-08-21      2025-08-23      1           200,00                BRAK                                                                                                                                                                                                                                                            
3            8           2025-06-17     2025-08-25      2025-08-26      1           500,00                BRAK                                                                                                                                                                                                                                                            
4            3           2025-06-17     2025-08-24      2025-08-25      1           300,00                BRAK                                                                                                                                                                                                                                                            
5            4           2025-06-17     2025-08-27      2025-08-28      2           500,00                BRAK                                                                                                                                                                                                                                                            
6            5           2025-06-17     2025-08-08      2025-08-23      1           400,00                BRAK                                                                                                                                                                                                                                                            
7            2           2025-06-17     2025-08-04      2025-08-05      3           500,00                Uczulenie na we³ne                                                                                                                                                                                                                                              
8            7           2025-06-17     2025-08-19      2025-08-23      1           1500,00               BRAK                                                                                                                                                                                                                                                            
9            7           2025-06-17     2025-08-28      2025-08-26      2           1050,00               BRAK                                                                                                                                                                                                                                                            

(9 rows affected)

-dbo.PrzydzieleniePracownika
IDPrzydzieleniePracownika IDPracownik IDPokoj     DataPrzydzielenia DataRozpoczecia DataZakonczenia Zadanie                                                                                                                                                                                                                                                          Uwagi
------------------------- ----------- ----------- ----------------- --------------- --------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1                         2           10          2025-06-17        2025-08-17      2025-08-18      Czyszczenie przejsciowe                                                                                                                                                                                                                                          BRAK
2                         2           6           2025-06-17        2025-08-17      2025-08-18      Wyczyszczenie framugi ³ózka                                                                                                                                                                                                                                      BRAK
3                         4           4           2025-06-17        2025-08-14      2025-08-15      Czyszczenie przejsciowe                                                                                                                                                                                                                                          BRAK
4                         2           3           2025-06-17        2025-08-12      2025-08-15      Czyszczenie przejsciowe/Gruntowe                                                                                                                                                                                                                                 BRAK
5                         4           1           2025-06-17        2025-08-11      2025-08-12      Czyszczenie przejsciowe                                                                                                                                                                                                                                          BRAK
6                         4           2           2025-06-17        2025-08-15      2025-08-16      Czyszczenie przejsciowe                                                                                                                                                                                                                                          BRAK
7                         2           4           2025-06-17        2025-08-13      2025-08-14      Czyszczenie przejsciowe                                                                                                                                                                                                                                          BRAK
8                         2           5           2025-06-17        2025-08-14      2025-08-17      Wymiana fotelu                                                                                                                                                                                                                                                   BRAK
9                         4           9           2025-06-17        2025-08-14      2025-08-18      Wymiana ¿arówek                                                                                                                                                                                                                                                  BRAK
10                        10          10          2025-06-17        2025-08-14      2025-08-15      Wyczyszczenie framugi ³ózka                                                                                                                                                                                                                                      BRAK

(10 rows affected)

-dbo.Pracownik
IDPracownik Imie                           Nazwisko                       Stanowisko                     Uwagi
----------- ------------------------------ ------------------------------ ------------------------------ ------------------------------
1           Remigiusz                      Moneta                         Ksiêgowy                       Brak
2           Klaudiusz                      Sikorski                       Pokojowy                       Brak
3           Eugeniusz                      Pastowny                       Portier                        Brak
4           Korneliusz                     Wrona                          Pokojowy                       Brak
5           Janusz                         M³ynarski                      Portier                        Brak
6           Mateusz                        Morgiel                        Kucharz                        Brak
7           Tadeusz                        Wielun                         Recepcjonista                  Brak
8           Tymoteusz                      Kaczmarek                      Recepcjonista                  Brak
9           Marian                         Siko                           Kelner                         Brak
10          Leon                           Sikorski                       Portier                        Brak

(10 rows affected)

-dbo.Pokoj
IDPokoj     IDTypPokoj  Lozko1Os    Lozko2Os    LiczbaMiejsc Stan Uwagi                                                                                                                                                                                                                                                            Wstawka CenaPokoj             KompletRecznik KompletWH   UpominekPowitalny ButelkaWody PokojPalacz Szklanka
----------- ----------- ----------- ----------- ------------ ---- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ------- --------------------- -------------- ----------- ----------------- ----------- ----------- -----------
1           1           1           0           1            GOT  BRAK                                                                                                                                                                                                                                                             BRAK    200,00                1              1           1                 1           TAK         1
2           1           1           0           1            PRZ  BRAK                                                                                                                                                                                                                                                             BRAK    150,00                1              1           1                 1           NIE         1
3           1           1           0           1            PRZ  BRAK                                                                                                                                                                                                                                                             BRAK    150,00                1              1           1                 1           NIE         1
4           1           1           0           1            GOT  BRAK                                                                                                                                                                                                                                                             BRAK    150,00                1              1           1                 1           NIE         1
5           1           1           0           1            PRZ+ BRAK                                                                                                                                                                                                                                                             BRAK    150,00                1              1           1                 1           NIE         1
6           2           0           1           2            GOT  BRAK                                                                                                                                                                                                                                                             BRAK    250,00                2              2           2                 2           NIE         2
7           2           0           1           2            PRZ+ BRAK                                                                                                                                                                                                                                                             BRAK    250,00                2              2           2                 2           NIE         2
8           3           3           0           3            GOT  BRAK                                                                                                                                                                                                                                                             BRAK    400,00                3              3           3                 3           NIE         3
9           4           2           1           4            PRZ  BRAK                                                                                                                                                                                                                                                             BRAK    500,00                4              4           4                 4           NIE         4
10          5           6           0           6            GOT  BRAK                                                                                                                                                                                                                                                             BRAK    800,00                6              6           6                 6           NIE         6

(10 rows affected)


Completion time: 2025-06-23T14:10:45.2138214+02:00
*/


--WYKONYWANIE PROCEDUR

--[1]
EXECUTE dbo.Pracownik_ZnajdzID
@Par_IDPracownik = 3;
GO
--WYNIK:
/*
IDPracownik Imie                           Nazwisko                       Stanowisko                     Uwagi
----------- ------------------------------ ------------------------------ ------------------------------ ------------------------------
3           Eugeniusz                      Pastowny                       Portier                        Brak

(1 row affected)


Completion time: 2025-06-23T14:12:45.0469889+02:00
*/

--[2]
EXECUTE dbo.Pracownik_ZnajdzNazwisko
@Par_NazwiskoPracownik = 'K';
GO
--WYNIK:
/*
IDPracownik Imie                           Nazwisko                       Stanowisko                     Uwagi
----------- ------------------------------ ------------------------------ ------------------------------ ------------------------------
8           Tymoteusz                      Kaczmarek                      Recepcjonista                  Brak

(1 row affected)


Completion time: 2025-06-23T14:13:23.0272633+02:00
*/

--[3]
EXECUTE dbo.Pokoj_ZnajdzCene
@Par_CenaOd = 150,
@Par_CenaDo = 300;
GO
--WYNIK:
/*
IDPokoj     Lozko1Os    Lozko2Os    LiczbaMiejsc Stan Wstawka CenaPokoj             KompletRecznik KompletWH   UpominekPowitalny ButelkaWody PokojPalacz Szklanka
----------- ----------- ----------- ------------ ---- ------- --------------------- -------------- ----------- ----------------- ----------- ----------- -----------
1           1           0           1            GOT  BRAK    200,00                1              1           1                 1           TAK         1
2           1           0           1            PRZ  BRAK    150,00                1              1           1                 1           NIE         1
3           1           0           1            PRZ  BRAK    150,00                1              1           1                 1           NIE         1
4           1           0           1            GOT  BRAK    150,00                1              1           1                 1           NIE         1
5           1           0           1            PRZ+ BRAK    150,00                1              1           1                 1           NIE         1
6           0           1           2            GOT  BRAK    250,00                2              2           2                 2           NIE         2
7           0           1           2            PRZ+ BRAK    250,00                2              2           2                 2           NIE         2

(7 rows affected)


Completion time: 2025-06-23T14:14:03.4819829+02:00
*/

--[4]
EXECUTE dbo.PrzydzieleniePracownikaData
@Par_DataOd = '2025-06-14',
@Par_DataDo = '2025-06-24';
GO
--WYNIK:
/*
IDPrzydzieleniePracownika IDPracownik IDPokoj     DataPrzydzielenia DataRozpoczecia DataZakonczenia Zadanie
------------------------- ----------- ----------- ----------------- --------------- --------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1                         2           10          2025-06-17        2025-08-17      2025-08-18      Czyszczenie przejsciowe
2                         2           6           2025-06-17        2025-08-17      2025-08-18      Wyczyszczenie framugi ³ózka
3                         4           4           2025-06-17        2025-08-14      2025-08-15      Czyszczenie przejsciowe
4                         2           3           2025-06-17        2025-08-12      2025-08-15      Czyszczenie przejsciowe/Gruntowe
5                         4           1           2025-06-17        2025-08-11      2025-08-12      Czyszczenie przejsciowe
6                         4           2           2025-06-17        2025-08-15      2025-08-16      Czyszczenie przejsciowe
7                         2           4           2025-06-17        2025-08-13      2025-08-14      Czyszczenie przejsciowe
8                         2           5           2025-06-17        2025-08-14      2025-08-17      Wymiana fotelu
9                         4           9           2025-06-17        2025-08-14      2025-08-18      Wymiana ¿arówek
10                        10          10          2025-06-17        2025-08-14      2025-08-15      Wyczyszczenie framugi ³ózka

(10 rows affected)


Completion time: 2025-06-23T14:16:25.0889772+02:00

*/

--[5]
EXECUTE dbo.PrzydzieleniePracownikaDni
@Par_Dni = 3;
GO
--WYNIK:
/*
IDPrzydzieleniePracownika IDPracownik IDPokoj     DataPrzydzielenia DataRozpoczecia DataZakonczenia Zadanie
------------------------- ----------- ----------- ----------------- --------------- --------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
4                         2           3           2025-06-17        2025-08-12      2025-08-15      Czyszczenie przejsciowe/Gruntowe
8                         2           5           2025-06-17        2025-08-14      2025-08-17      Wymiana fotelu

(2 rows affected)


Completion time: 2025-06-23T14:17:21.4556269+02:00
*/

--[6]
EXECUTE PrzydzieleniePracownika_Count
@Par_ProgZlecen = 3;
GO
--WYNIK:
/*
IDPracownik Imie                           Nazwisko                       LiczbaZlecen
----------- ------------------------------ ------------------------------ ------------
2           Klaudiusz                      Sikorski                       5
4           Korneliusz                     Wrona                          4

(2 rows affected)


Completion time: 2025-06-23T14:17:55.8348010+02:00
*/

--[7]
EXECUTE Rezerwacja_ClosestDate 
GO
--WYNIK:
/*
IDRezerwacja IDGosc      DataRezerwacji DataRozpoczecia DataZakonczenia IDStatus    KwotaLaczna           Uwagi
------------ ----------- -------------- --------------- --------------- ----------- --------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1            1           2025-06-17     2025-08-03      2025-08-04      1           150,00                BRAK                                                                                                                                                                                                                                                            

(1 row affected)


Completion time: 2025-06-23T14:19:02.1336778+02:00
*/

