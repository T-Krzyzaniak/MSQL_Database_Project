--WSTAWIANIE 10 WIERSZY DO TABEL
--WSTAWIANIE 10 WIERSZY DO TABEL
--WSTAWIANIE 10 WIERSZY DO TABEL

--POZIOM 1
--POZIOM 1

--PRACOWNIK 2 4
EXECUTE PracownikInsert 1,'Remigiusz','Moneta','Ksiêgowy','Brak';
EXECUTE PracownikInsert 2,'Klaudiusz','Sikorski','Pokojowy','Brak';
EXECUTE PracownikInsert 3,'Eugeniusz','Pastowny','Portier','Brak';
EXECUTE PracownikInsert 4,'Korneliusz','Wrona','Pokojowy','Brak';
EXECUTE PracownikInsert 5,'Janusz','M³ynarski','Portier','Brak';
EXECUTE PracownikInsert 6,'Mateusz','Morgiel','Kucharz','Brak';
EXECUTE PracownikInsert 7,'Tadeusz','Wielun','Recepcjonista','Brak';
EXECUTE PracownikInsert 8,'Tymoteusz','Kaczmarek','Recepcjonista','Brak';
EXECUTE PracownikInsert 9,'Marian','Siko','Kelner','Brak';
EXECUTE PracownikInsert 10,'Leon','Sikorski','Portier','Brak';
GO

--TYPGOSC [Tylko 6 kategori] [+ oznacza osobe powracaj¹ca do hotelu / TUR = TURYSTA | TRN = TRANZYTOWY | BIZ = BIZNESOWY
EXECUTE TypGoscInsert 1,'TUR';
EXECUTE TypGoscInsert 2,'TUR+';
EXECUTE TypGoscInsert 3,'TRN';
EXECUTE TypGoscInsert 4,'TRN+';
EXECUTE TypGoscInsert 5,'BIZ';
EXECUTE TypGoscInsert 6,'BIZ+';
GO

--STATUS REZERWACJI [SA TYLKO 4]
EXECUTE StatusRezerwacjiInsert 1,'Gotowe';
EXECUTE StatusRezerwacjiInsert 2,'Rozpoczête';
EXECUTE StatusRezerwacjiInsert 3,'Nadmiarowe';
EXECUTE StatusRezerwacjiInsert 4,'Zakoñczone';
GO

--TYPPOKOJ [SA TYLKO 6]
EXECUTE TypPokojInsert 1,'SGL';
EXECUTE TypPokojInsert 2,'DBL';
EXECUTE TypPokojInsert 3,'TPL';
EXECUTE TypPokojInsert 4,'QDP';
EXECUTE TypPokojInsert 5,'TWIN';
EXECUTE TypPokojInsert 6,'SUIT';
GO

--USLUGA
EXECUTE UslugaInsert 1,'Pranie Chemiczne',50,'szt','Pranie ubrañ z zastosowaniem œrodków chemicznych';
EXECUTE UslugaInsert 2,'Sauna',100,'godz','Relaksujaca sauna dla otwarcia por w skórze';
EXECUTE UslugaInsert 3,'RoomService',5,'szt','Dostarczanie zamówien lub przedmiotów do pokoju';
EXECUTE UslugaInsert 4,'MiniBarPrzekaski',3,'szt','Wyselekcjonowane przekaski w minibarze';
EXECUTE UslugaInsert 5,'MiniBarAlkohol',10,'szt','Wyselekcjonowane buteleczki alkoholu w minibarze';
EXECUTE UslugaInsert 6,'Masa¿ Tajski',150,'godz','Tradycyjny masa¿ tajski dla rozluŸnienia miêœni cia³a';
EXECUTE UslugaInsert 7,'Przygotowanie Prowiantu',20,'szt','Nasza kadra kucharska przygotuje suchy prowiant na droge powrotn¹ ';
EXECUTE UslugaInsert 8,'Us³ugi Krawieckie',30,'szt','Drobne naprawy ubrañ goœci';
EXECUTE UslugaInsert 9,'Katering',75,'os','Kadra kucharska zaopatrzy spotkanie w pe³noprawne posi³ki obiadowe wraz z deserem oraz napojami';
EXECUTE UslugaInsert 10,'Wynajem Sali Biznesowej',100,'godz','Hotel udostêpni sale na spotkania biznesowe wraz z projektorem oraz laptopem';
GO

--POZIOM 2
--POZIOM 2

--GOSC
EXECUTE GoscInsert 'Pawe³','Sadowski',1,1291879287739878,NULL,NULL,00252545198,0,NULL;
EXECUTE GoscInsert 'Wiesia','Zaradniak',1,2291879287739872,NULL,NULL,02254510198,0,NULL;
EXECUTE GoscInsert 'Ania','Obojczyk',2,9291879287739872,498372,NULL,00755510198,0,NULL;
EXECUTE GoscInsert 'Iwona','M¹griel',1,4291879283239872,NULL,NULL,00852910198,0,NULL;
EXECUTE GoscInsert 'Emanuel','Bratka',4,9291879289739872,NULL,3329078937,00258518198,0,NULL;
EXECUTE GoscInsert 'Tymoteusz','Hudziarski',1,8291379287739872,NULL,NULL,00852580198,0,NULL;
EXECUTE GoscInsert 'Sebastian','Powrotny',4,4295879287739872,NULL,NULL,08252510188,0,NULL;
EXECUTE GoscInsert 'Tomek','Beczka',5,3292879237739872,298737,NULL,00452540198,0,NULL;
EXECUTE GoscInsert 'Andrzej','Ko³owrotek',1,3291874287739872,NULL,NULL,03252583198,0,NULL;
EXECUTE GoscInsert 'Tadeusz','Sikorski',5,3291879284739872,NULL,NULL,02251511198,0,NULL;
GO

--POKOJ [GOT - GOTOWY / PRZ = PRZEJSCIE czyszczenie miedy doba hotelowa / PRZ+ = PRZEJSCIE+ Wy³aczenie pokoju z obiegu na czysczenie kilkudnowe]
EXECUTE PokojInsert 1,1,1,0,1,'GOT','BRAK','BRAK',200,1,1,1,1,'TAK',1;
EXECUTE PokojInsert 2,1,1,0,1,'PRZ','BRAK','BRAK',150,1,1,1,1,'NIE',1;
EXECUTE PokojInsert 3,1,1,0,1,'PRZ','BRAK','BRAK',150,1,1,1,1,'NIE',1;
EXECUTE PokojInsert 4,1,1,0,1,'GOT','BRAK','BRAK',150,1,1,1,1,'NIE',1;
EXECUTE PokojInsert 5,1,1,0,1,'PRZ+','BRAK','BRAK',150,1,1,1,1,'NIE',1;
EXECUTE PokojInsert 6,2,0,1,2,'GOT','BRAK','BRAK',250,2,2,2,2,'NIE',2;
EXECUTE PokojInsert 7,2,0,1,2,'PRZ+','BRAK','BRAK',250,2,2,2,2,'NIE',2;
EXECUTE PokojInsert 8,3,3,0,3,'GOT','BRAK','BRAK',400,3,3,3,3,'NIE',3;
EXECUTE PokojInsert 9,4,2,1,4,'PRZ','BRAK','BRAK',500,4,4,4,4,'NIE',4;
EXECUTE PokojInsert 10,5,6,0,6,'GOT','BRAK','BRAK',800,6,6,6,6,'NIE',6;
GO

--REZERWACJA
EXECUTE RezerwacjaInsert 1,1,'2025-06-17','2025.08.3','2025.08.4',1,150,'BRAK';
EXECUTE RezerwacjaInsert 2,6,'2025-06-17','2025.08.21','2025.08.23',1,200,'BRAK';
EXECUTE RezerwacjaInsert 3,8,'2025-06-17','2025.08.25','2025.08.26',1,500,'BRAK';
EXECUTE RezerwacjaInsert 4,3,'2025-06-17','2025.08.24','2025.08.25',1,300,'BRAK';
EXECUTE RezerwacjaInsert 5,4,'2025-06-17','2025.08.27','2025.08.28',2,500,'BRAK';
EXECUTE RezerwacjaInsert 6,5,'2025-06-17','2025.08.8','2025.08.23',1,400,'BRAK';
EXECUTE RezerwacjaInsert 7,2,'2025-06-17','2025.08.3','2025.08.5',3,500,'Uczulenie na we³ne';
EXECUTE RezerwacjaInsert 8,7,'2025-06-17','2025.08.19','2025.08.23',1,1500,'BRAK';
EXECUTE RezerwacjaInsert 9,10,'2025-06-17','2025.08.12','2025.08.29',1,600,'BRAK';
EXECUTE RezerwacjaInsert 10,9,'2025-06-17','2025.08.24','2025.08.26',2,850,'BRAK';
GO

--POZIOM 3
--POZIOM 3


--REZERWACJA POKOJ
EXECUTE RezerwacjaPokojInsert 1,9,1,1,600,'Brak';
EXECUTE RezerwacjaPokojInsert 2,10,2,1,200,'Brak';
EXECUTE RezerwacjaPokojInsert 3,8,3,1,500,'Brak';
EXECUTE RezerwacjaPokojInsert 4,4,8,1,150,'Brak';
EXECUTE RezerwacjaPokojInsert 5,6,4,3,400,'Brak';
EXECUTE RezerwacjaPokojInsert 6,7,6,1,200,'Brak';
EXECUTE RezerwacjaPokojInsert 7,1,5,1,500,'Brak';
EXECUTE RezerwacjaPokojInsert 8,2,7,1,200,'Brak';
EXECUTE RezerwacjaPokojInsert 9,3,10,1,700,'Brak';
EXECUTE RezerwacjaPokojInsert 10,5,9,1,200,'Brak';
GO

--REZERWACJA US£UGA
EXECUTE RezerwacjaUslugaInsert 1,2,1,2,100,'BRAK';
EXECUTE RezerwacjaUslugaInsert 2,3,1,2,100,'BRAK';
EXECUTE RezerwacjaUslugaInsert 3,1,1,2,100,'BRAK';
EXECUTE RezerwacjaUslugaInsert 4,4,4,5,15,'BRAK';
EXECUTE RezerwacjaUslugaInsert 5,4,5,6,60,'BRAK';
EXECUTE RezerwacjaUslugaInsert 6,2,2,2,200,'BRAK';
EXECUTE RezerwacjaUslugaInsert 7,9,5,2,20,'BRAK';
EXECUTE RezerwacjaUslugaInsert 8,8,1,2,100,'BRAK';
EXECUTE RezerwacjaUslugaInsert 9,10,1,2,100,'BRAK';
EXECUTE RezerwacjaUslugaInsert 10,2,1,2,100,'BRAK';
GO

--PRZYDZIELENIE PRACOWNIKA 2 4
EXECUTE PrzydzieleniePracownikaInsert 1,2,10,'2025-06-17','2025-08-17','2025-08-18','Czyszczenie przejsciowe','BRAK';
EXECUTE PrzydzieleniePracownikaInsert 2,2,6,'2025-06-17','2025-08-17','2025-08-18','Wyczyszczenie framugi ³ózka','BRAK';
EXECUTE PrzydzieleniePracownikaInsert 3,4,4,'2025-06-17','2025-08-14','2025-08-15','Czyszczenie przejsciowe','BRAK';
EXECUTE PrzydzieleniePracownikaInsert 4,2,3,'2025-06-17','2025-08-12','2025-08-15','Czyszczenie przejsciowe/Gruntowe','BRAK';
EXECUTE PrzydzieleniePracownikaInsert 5,4,1,'2025-06-17','2025-08-11','2025-08-12','Czyszczenie przejsciowe','BRAK';
EXECUTE PrzydzieleniePracownikaInsert 6,4,2,'2025-06-17','2025-08-15','2025-08-16','Czyszczenie przejsciowe','BRAK';
EXECUTE PrzydzieleniePracownikaInsert 7,2,4,'2025-06-17','2025-08-13','2025-08-14','Czyszczenie przejsciowe','BRAK';
EXECUTE PrzydzieleniePracownikaInsert 8,2,5,'2025-06-17','2025-08-14','2025-08-17','Wymiana fotelu','BRAK';
EXECUTE PrzydzieleniePracownikaInsert 9,4,9,'2025-06-17','2025-08-14','2025-08-18','Wymiana ¿arówek','BRAK';
EXECUTE PrzydzieleniePracownikaInsert 10,10,10,'2025-06-17','2025-08-14','2025-08-15','Wyczyszczenie framugi ³ózka','BRAK';
GO