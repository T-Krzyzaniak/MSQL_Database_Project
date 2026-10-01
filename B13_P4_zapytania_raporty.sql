/*
--DEFINICJE, ORAZ KOMENTARZE PROCEDUR PRZECHOWYWANYCH W B13_P4_Procedury_Transakcje

[1] Znajdz Pracownika po jego ID
Procedura przyjmuje wpisany ID i wyszukuje je w bazie danych dbo.Pracownik aby móc podaæ pe³ne informacje wybranego pracownika.
Tzn: IDPracownik, Imie, Nazwisko, Stanowisko, Uwagi

[2] Znajdz Pracownika ktorego naziwsko zaczyna sie na litere (X)
Procedura przyjmuje wpisana litere jako wartoœæ pocz¹tkowa i wyszukuje w bazie danych pracowników których nazwisko zaczyna sie na wybran¹ litere.

[3] Znajdz cene pokoju w przedziale cenowym
Procedura przyjmuje wpisane wartosci (1) = wartosæ MIN , (2) = Wartoœæ MAX 
po czym wyszukuje w bazie danych oferty pokojów których ceny znajduja sie pomiedzy ustalonymi wartosciami

[4] ZNAJDZ Przydzielonych pracowników miedzy danymi dniami
Procedura przyjmuje wpisane wartosci (1) = Wartoœæ MIN , (2) = Wartoœæ MAX
po czym wyszukuje w bazie danych pracownikó którzy zostali przypisani do obs³ugi pokoi pomiedzy ustalonymi wartoœciami dat

[5] ZNAJDZ Zadanie które trwa okreœlony czas dni
Procedura przyjmuje wpisana wartoœæ po czym wyszukuje w bazie danych dbo.PrzydzieleniePracownika wierszu którego
ró¿nica miedzy data rozpoczecia a data zakonczenia jest równa wpisanej wartoœci po czym wypisuje informacje
TZN: IDPrzydzieleniePracownika, IDPracownik, IDPokoj, DataPrzydzielenia, DataRozpoczecia, DataZakonczenia, Zadanie

[6] ZLICZA ZADANIA Pracowników którzy maja przynajmniej 3 lub wiecej zadan
Procedura przyjmuje wpisana wartoœæ jako próg po czym zlicza w bazie danych dbo.PrzydzieleniePracownika iloœæ zleceñ przypisanych do tej samej wartoœci
IDPracownik po czym wyswietla wynik:
TZN: dbo.Pracownik.IDPracownik,Imie,Nazwisko, COUNT(*) AS [LiczbaZlecen]

[7] Pokazuje termin rezerwacji najblizszy daty aktualnej
Procedura automatycznie przyjmuje date z dnia dzisiejszego po czym przyrównuje j¹ z danymi w dbo.Rezerwacja. 
DataRozpoczêcia najblizsza dacie dzisiejszej zostanie wypisana oznaczajac podany wiersz jako priorytetowy

*/