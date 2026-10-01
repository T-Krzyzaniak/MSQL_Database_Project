/*
--KOLEJNOSC WSTAWIANIA DANYCH
[1] PRACOWNIK / TYP POKOJ / TYP GOSC / US£UGA / STATUS REZERWACJI

[2] GOSC / POKOJ / REZERWACJA

[3] REZERWACJA POKOJ / REZERWACJA USLUGA / PRZYDZIELENIE PRACOWNIKA

--KOLJENOSC USUWANIA DANYCH

[1] REZERWACJA POKOJ / REZERWACJA USLUGA / PRZYDZIELENIE PRACOWNIKA

[2] GOSC / POKOJ / REZERWACJA

[3] PRACOWNIK / TYP POKOJ / TYP GOSC / US£UGA / STATUS REZERWACJI


*/

--WYCZYSZCZENIE TABEL
/*
DELETE dbo.RezerwacjaPokoj;
GO
DELETE dbo.RezerwacjaUsluga;
GO
DELETE dbo.PrzydzieleniePracownika;
GO

DELETE dbo.Gosc;
GO
DELETE dbo.Pokoj;
GO
DELETE dbo.Rezerwacja;
GO

DELETE dbo.Pracownik;
GO
DELETE dbo.TypGosc;
GO
DELETE dbo.TypPokoj;
GO
DELETE dbo.StatusRezerwacji;
GO
DELETE dbo.Usluga;
GO
*/

/* 
SELECT * FROM dbo.Pracownik;
SELECT * FROM dbo.TypGosc;
SELECT * FROM dbo.TypPokoj;
SELECT * FROM dbo.Usluga;
SELECT * FROM dbo.StatusRezerwacji;
SELECT * FROM dbo.Rezerwacja;
SELECT * FROM dbo.Pokoj;
SELECT * FROM dbo.Gosc;
SELECT * FROM dbo.RezerwacjaPokoj;
SELECT * FROM dbo.RezerwacjaUsluga;
SELECT * FROM dbo.PrzydzieleniePracownika;
GO
--WSZYSTKIE TABELE PO wyczyszczeniu i wywo³ania utworzeñ 10 wierszy

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

IDTypGosc   Typ
----------- ----
1           TUR 
2           TUR+
3           TRN 
4           TRN+
5           BIZ 
6           BIZ+

(6 rows affected)

IDTypPokoj  NazwaPokoj
----------- ----------
1           SGL
2           DBL
3           TPL
4           QDP
5           TWIN
6           SUIT

(6 rows affected)

IDUsluga    Nazwa                          Cena                  JednostkaMiary Opis
----------- ------------------------------ --------------------- -------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1           Pranie Chemiczne               50,00                 szt            Pranie ubrañ z zastosowaniem œrodków chemicznych                                                                                                                                                                                                                
2           Sauna                          100,00                godz           Relaksujaca sauna dla otwarcia por w skórze                                                                                                                                                                                                                     
3           RoomService                    5,00                  szt            Dostarczanie zamówien lub przedmiotów do pokoju                                                                                                                                                                                                                 
4           MiniBarPrzekaski               3,00                  szt            Wyselekcjonowane przekaski w minibarze                                                                                                                                                                                                                          
5           MiniBarAlkohol                 10,00                 szt            Wyselekcjonowane buteleczki alkoholu w minibarze                                                                                                                                                                                                                
6           Masa¿ Tajski                   150,00                godz           Tradycyjny masa¿ tajski dla rozluŸnienia miêœni cia³a                                                                                                                                                                                                           
7           Przygotowanie Prowiantu        20,00                 szt            Nasza kadra kucharska przygotuje suchy prowiant na droge powrotn¹                                                                                                                                                                                               
8           Us³ugi Krawieckie              30,00                 szt            Drobne naprawy ubrañ goœci                                                                                                                                                                                                                                      
9           Katering                       75,00                 os             Kadra kucharska zaopatrzy spotkanie w pe³noprawne posi³ki obiadowe wraz z deserem oraz napojami                                                                                                                                                                 
10          Wynajem Sali Biznesowej        100,00                godz           Hotel udostêpni sale na spotkania biznesowe wraz z projektorem oraz laptopem                                                                                                                                                                                    

(10 rows affected)

IDStatus    NazwaStatus
----------- -----------
1           Gotowe    
2           Rozpoczête
3           Nadmiarowe
4           Zakoñczone

(4 rows affected)

IDRezerwacja IDGosc      DataRezerwacji DataRozpoczecia DataZakonczenia IDStatus    KwotaLaczna           Uwagi
------------ ----------- -------------- --------------- --------------- ----------- --------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1            1           2025-06-17     2025-08-03      2025-08-04      1           150,00                BRAK                                                                                                                                                                                                                                                            
2            6           2025-06-17     2025-08-21      2025-08-23      1           200,00                BRAK                                                                                                                                                                                                                                                            
3            8           2025-06-17     2025-08-25      2025-08-26      1           500,00                BRAK                                                                                                                                                                                                                                                            
4            3           2025-06-17     2025-08-24      2025-08-25      1           300,00                BRAK                                                                                                                                                                                                                                                            
5            4           2025-06-17     2025-08-27      2025-08-28      2           500,00                BRAK                                                                                                                                                                                                                                                            
6            5           2025-06-17     2025-08-08      2025-08-23      1           400,00                BRAK                                                                                                                                                                                                                                                            
7            2           2025-06-17     2025-08-03      2025-08-05      3           500,00                Uczulenie na we³ne                                                                                                                                                                                                                                              
8            7           2025-06-17     2025-08-19      2025-08-23      1           1500,00               BRAK                                                                                                                                                                                                                                                            
9            10          2025-06-17     2025-08-12      2025-08-29      1           600,00                BRAK                                                                                                                                                                                                                                                            
10           9           2025-06-17     2025-08-24      2025-08-26      2           850,00                BRAK                                                                                                                                                                                                                                                            

(10 rows affected)

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

IDGosc      Imie                           Nazwisko                       IDTypGosc   NumerKarta           NumerCAN    NumerNIP             NumerPESEL           Palacz Uwagi
----------- ------------------------------ ------------------------------ ----------- -------------------- ----------- -------------------- -------------------- ------ ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
84          Pawe³                          Sadowski                       1           1291879287739878     NULL        NULL                 252545198            0      NULL
85          Wiesia                         Zaradniak                      1           2291879287739872     NULL        NULL                 2254510198           0      NULL
86          Ania                           Obojczyk                       2           9291879287739872     498372      NULL                 755510198            0      NULL
87          Iwona                          M¹griel                        1           4291879283239872     NULL        NULL                 852910198            0      NULL
88          Emanuel                        Bratka                         4           9291879289739872     NULL        3329078937           258518198            0      NULL
89          Tymoteusz                      Hudziarski                     1           8291379287739872     NULL        NULL                 852580198            0      NULL
90          Sebastian                      Powrotny                       4           4295879287739872     NULL        NULL                 8252510188           0      NULL
91          Tomek                          Beczka                         5           3292879237739872     298737      NULL                 452540198            0      NULL
92          Andrzej                        Ko³owrotek                     1           3291874287739872     NULL        NULL                 3252583198           0      NULL
93          Tadeusz                        Sikorski                       5           3291879284739872     NULL        NULL                 2251511198           0      NULL

(10 rows affected)

IDRezerwacjaPokoj IDPokoj     IDRezerwacja LiczbaOsob  CenaRezerwacji        Uwagi
----------------- ----------- ------------ ----------- --------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1                 9           1            1           600,00                Brak                                                                                                                                                                                                                                                            
2                 10          2            1           200,00                Brak                                                                                                                                                                                                                                                            
3                 8           3            1           500,00                Brak                                                                                                                                                                                                                                                            
4                 4           8            1           150,00                Brak                                                                                                                                                                                                                                                            
5                 6           4            3           400,00                Brak                                                                                                                                                                                                                                                            
6                 7           6            1           200,00                Brak                                                                                                                                                                                                                                                            
7                 1           5            1           500,00                Brak                                                                                                                                                                                                                                                            
8                 2           7            1           200,00                Brak                                                                                                                                                                                                                                                            
9                 3           10           1           700,00                Brak                                                                                                                                                                                                                                                            
10                5           9            1           200,00                Brak                                                                                                                                                                                                                                                            

(10 rows affected)

IDRezerwacjaUsluga IDRezerwacja IDUsluga    Ilosc       CenaSprzedazy         Uwagi
------------------ ------------ ----------- ----------- --------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1                  2            1           2           100,00                BRAK                                                                                                                                                                                                                                                            
2                  3            1           2           100,00                BRAK                                                                                                                                                                                                                                                            
3                  1            1           2           100,00                BRAK                                                                                                                                                                                                                                                            
4                  4            4           5           15,00                 BRAK                                                                                                                                                                                                                                                            
5                  4            5           6           60,00                 BRAK                                                                                                                                                                                                                                                            
6                  2            2           2           200,00                BRAK                                                                                                                                                                                                                                                            
7                  9            5           2           20,00                 BRAK                                                                                                                                                                                                                                                            
8                  8            1           2           100,00                BRAK                                                                                                                                                                                                                                                            
9                  10           1           2           100,00                BRAK                                                                                                                                                                                                                                                            
10                 2            1           2           100,00                BRAK                                                                                                                                                                                                                                                            

(10 rows affected)

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


Completion time: 2025-06-17T19:29:11.6306829+02:00

*/