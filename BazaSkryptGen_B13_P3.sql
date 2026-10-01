USE [B13_C3]
GO
/****** Object:  Table [dbo].[Gosc]    Script Date: 17.06.2025 13:31:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gosc](
	[IDGosc] [int] IDENTITY(1,1) NOT NULL,
	[Imie] [varchar](30) NOT NULL,
	[Nazwisko] [varchar](30) NOT NULL,
	[IDTypGosc] [int] NOT NULL,
	[NumerKarta] [bigint] NULL,
	[NumerCAN] [int] NULL,
	[NumerNIP] [bigint] NULL,
	[NumerPESEL] [bigint] NULL,
	[Palacz] [bit] NULL,
	[Uwagi] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDGosc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NumerPESEL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pokoj]    Script Date: 17.06.2025 13:31:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pokoj](
	[IDPokoj] [int] NOT NULL,
	[IDTypPokoj] [int] NOT NULL,
	[Lozko1Os] [int] NULL,
	[Lozko2Os] [int] NULL,
	[LiczbaMiejsc] [int] NOT NULL,
	[Stan] [varchar](4) NOT NULL,
	[Uwagi] [char](400) NULL,
	[Wstawka] [varchar](4) NULL,
	[CenaPokoj] [money] NULL,
	[KompletRecznik] [int] NOT NULL,
	[KompletWH] [int] NOT NULL,
	[UpominekPowitalny] [int] NOT NULL,
	[ButelkaWody] [int] NOT NULL,
	[PokojPalacz] [char](3) NOT NULL,
	[Szklanka] [int] NOT NULL,
 CONSTRAINT [pk_pokoj] PRIMARY KEY CLUSTERED 
(
	[IDPokoj] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pracownik]    Script Date: 17.06.2025 13:31:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pracownik](
	[IDPracownik] [int] NOT NULL,
	[Imie] [varchar](30) NOT NULL,
	[Nazwisko] [varchar](30) NOT NULL,
	[Stanowisko] [varchar](30) NOT NULL,
	[Uwagi] [varchar](30) NULL,
 CONSTRAINT [pk_Pracownik] PRIMARY KEY CLUSTERED 
(
	[IDPracownik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pracownik_Kopia]    Script Date: 17.06.2025 13:31:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pracownik_Kopia](
	[IDPracownik] [int] NOT NULL,
	[Imie] [varchar](30) NOT NULL,
	[Nazwisko] [varchar](30) NOT NULL,
	[Stanowisko] [varchar](30) NOT NULL,
	[Uwagi] [varchar](30) NULL,
 CONSTRAINT [PK_Pracownik_Kopia] PRIMARY KEY CLUSTERED 
(
	[IDPracownik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrzydzieleniePracownika]    Script Date: 17.06.2025 13:31:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrzydzieleniePracownika](
	[IDPrzydzieleniePracownika] [int] NOT NULL,
	[IDPracownik] [int] NOT NULL,
	[IDPokoj] [int] NOT NULL,
	[DataPrzydzielenia] [date] NOT NULL,
	[DataRozpoczecia] [date] NOT NULL,
	[DataZakonczenia] [date] NOT NULL,
	[Zadanie] [varchar](300) NOT NULL,
	[Uwagi] [varchar](300) NULL,
 CONSTRAINT [pk_przydzieleniePracownika] PRIMARY KEY CLUSTERED 
(
	[IDPrzydzieleniePracownika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rezerwacja]    Script Date: 17.06.2025 13:31:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezerwacja](
	[IDRezerwacja] [int] NOT NULL,
	[IDGosc] [int] NOT NULL,
	[DataRezerwacji] [date] NOT NULL,
	[DataRozpoczecia] [date] NOT NULL,
	[DataZakonczenia] [date] NOT NULL,
	[IDStatus] [int] NOT NULL,
	[KwotaLaczna] [money] NOT NULL,
	[Uwagi] [char](400) NULL,
 CONSTRAINT [pk_Rezerwacja] PRIMARY KEY CLUSTERED 
(
	[IDRezerwacja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rezerwacja_Historia]    Script Date: 17.06.2025 13:31:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezerwacja_Historia](
	[IDRezerwacja_Historia] [int] IDENTITY(1,1) NOT NULL,
	[IDRezerwacja] [int] NOT NULL,
	[IDGosc] [int] NOT NULL,
	[IDPokoj] [int] NOT NULL,
	[DataAnulowania] [date] NOT NULL,
	[DataRozpoczęcia] [date] NOT NULL,
	[DataZakonczenia] [date] NOT NULL,
 CONSTRAINT [PK__Rezerwac__0885D60D32087650] PRIMARY KEY CLUSTERED 
(
	[IDRezerwacja_Historia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RezerwacjaPokoj]    Script Date: 17.06.2025 13:31:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RezerwacjaPokoj](
	[IDRezerwacjaPokoj] [int] NOT NULL,
	[IDPokoj] [int] NOT NULL,
	[IDRezerwacja] [int] NOT NULL,
	[LiczbaOsob] [int] NOT NULL,
	[CenaRezerwacji] [money] NOT NULL,
	[Uwagi] [char](300) NULL,
 CONSTRAINT [pk_RezerwacjaPokoj] PRIMARY KEY CLUSTERED 
(
	[IDRezerwacjaPokoj] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RezerwacjaUsluga]    Script Date: 17.06.2025 13:31:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RezerwacjaUsluga](
	[IDRezerwacjaUsluga] [int] NOT NULL,
	[IDRezerwacja] [int] NOT NULL,
	[IDUsluga] [int] NOT NULL,
	[Ilosc] [int] NOT NULL,
	[CenaSprzedazy] [money] NOT NULL,
	[Uwagi] [char](300) NULL,
 CONSTRAINT [pk_RezerwacjaUsluga] PRIMARY KEY CLUSTERED 
(
	[IDRezerwacjaUsluga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RezerwacjaUsluga_Kopia]    Script Date: 17.06.2025 13:31:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RezerwacjaUsluga_Kopia](
	[IDRezerwacjaUsluga] [int] NOT NULL,
	[IDRezerwacja] [int] NOT NULL,
	[IDUsluga] [int] NOT NULL,
	[Ilosc] [int] NOT NULL,
	[CenaSprzedazy] [money] NOT NULL,
	[Uwagi] [char](300) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusRezerwacji]    Script Date: 17.06.2025 13:31:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusRezerwacji](
	[IDStatus] [int] NOT NULL,
	[NazwaStatus] [char](10) NULL,
 CONSTRAINT [pk_StatusRezerwacji] PRIMARY KEY CLUSTERED 
(
	[IDStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypGosc]    Script Date: 17.06.2025 13:31:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypGosc](
	[IDTypGosc] [int] NOT NULL,
	[Typ] [char](4) NOT NULL,
 CONSTRAINT [PK_TypGosc] PRIMARY KEY CLUSTERED 
(
	[IDTypGosc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypPokoj]    Script Date: 17.06.2025 13:31:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypPokoj](
	[IDTypPokoj] [int] NOT NULL,
	[NazwaPokoj] [varchar](4) NOT NULL,
 CONSTRAINT [pk_TypPokoj] PRIMARY KEY CLUSTERED 
(
	[IDTypPokoj] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usluga]    Script Date: 17.06.2025 13:31:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usluga](
	[IDUsluga] [int] NOT NULL,
	[Nazwa] [char](30) NOT NULL,
	[Cena] [money] NOT NULL,
	[JednostkaMiary] [varchar](10) NOT NULL,
	[Opis] [char](300) NULL,
 CONSTRAINT [pk_Usluga] PRIMARY KEY CLUSTERED 
(
	[IDUsluga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PrzydzieleniePracownika] ADD  DEFAULT (getdate()) FOR [DataPrzydzielenia]
GO
ALTER TABLE [dbo].[Rezerwacja] ADD  CONSTRAINT [df_dataRezerwacji]  DEFAULT (getdate()) FOR [DataRezerwacji]
GO
ALTER TABLE [dbo].[Gosc]  WITH CHECK ADD  CONSTRAINT [FK_Gosc_TypGosc] FOREIGN KEY([IDTypGosc])
REFERENCES [dbo].[TypGosc] ([IDTypGosc])
GO
ALTER TABLE [dbo].[Gosc] CHECK CONSTRAINT [FK_Gosc_TypGosc]
GO
ALTER TABLE [dbo].[Pokoj]  WITH CHECK ADD  CONSTRAINT [fk_TypPokoj] FOREIGN KEY([IDTypPokoj])
REFERENCES [dbo].[TypPokoj] ([IDTypPokoj])
GO
ALTER TABLE [dbo].[Pokoj] CHECK CONSTRAINT [fk_TypPokoj]
GO
ALTER TABLE [dbo].[PrzydzieleniePracownika]  WITH CHECK ADD  CONSTRAINT [fk_pokoj] FOREIGN KEY([IDPokoj])
REFERENCES [dbo].[Pokoj] ([IDPokoj])
GO
ALTER TABLE [dbo].[PrzydzieleniePracownika] CHECK CONSTRAINT [fk_pokoj]
GO
ALTER TABLE [dbo].[PrzydzieleniePracownika]  WITH CHECK ADD  CONSTRAINT [fk_pracownik] FOREIGN KEY([IDPracownik])
REFERENCES [dbo].[Pracownik] ([IDPracownik])
GO
ALTER TABLE [dbo].[PrzydzieleniePracownika] CHECK CONSTRAINT [fk_pracownik]
GO
ALTER TABLE [dbo].[Rezerwacja]  WITH CHECK ADD  CONSTRAINT [fk_statusRezerwacji] FOREIGN KEY([IDStatus])
REFERENCES [dbo].[StatusRezerwacji] ([IDStatus])
GO
ALTER TABLE [dbo].[Rezerwacja] CHECK CONSTRAINT [fk_statusRezerwacji]
GO
ALTER TABLE [dbo].[RezerwacjaPokoj]  WITH CHECK ADD  CONSTRAINT [fk_pokojRP] FOREIGN KEY([IDPokoj])
REFERENCES [dbo].[Pokoj] ([IDPokoj])
GO
ALTER TABLE [dbo].[RezerwacjaPokoj] CHECK CONSTRAINT [fk_pokojRP]
GO
ALTER TABLE [dbo].[RezerwacjaPokoj]  WITH CHECK ADD  CONSTRAINT [fk_rezerwacjaRP] FOREIGN KEY([IDRezerwacja])
REFERENCES [dbo].[Rezerwacja] ([IDRezerwacja])
GO
ALTER TABLE [dbo].[RezerwacjaPokoj] CHECK CONSTRAINT [fk_rezerwacjaRP]
GO
ALTER TABLE [dbo].[RezerwacjaUsluga]  WITH CHECK ADD  CONSTRAINT [fk_rezerwacjaRU] FOREIGN KEY([IDRezerwacja])
REFERENCES [dbo].[Rezerwacja] ([IDRezerwacja])
GO
ALTER TABLE [dbo].[RezerwacjaUsluga] CHECK CONSTRAINT [fk_rezerwacjaRU]
GO
ALTER TABLE [dbo].[RezerwacjaUsluga]  WITH CHECK ADD  CONSTRAINT [fk_usluga] FOREIGN KEY([IDUsluga])
REFERENCES [dbo].[Usluga] ([IDUsluga])
GO
ALTER TABLE [dbo].[RezerwacjaUsluga] CHECK CONSTRAINT [fk_usluga]
GO
ALTER TABLE [dbo].[Pokoj]  WITH CHECK ADD  CONSTRAINT [check_price_pokoj] CHECK  (([CenaPokoj]>(0)))
GO
ALTER TABLE [dbo].[Pokoj] CHECK CONSTRAINT [check_price_pokoj]
GO
ALTER TABLE [dbo].[Rezerwacja]  WITH CHECK ADD  CONSTRAINT [check_price_rezerwacja] CHECK  (([KwotaLaczna]>(0)))
GO
ALTER TABLE [dbo].[Rezerwacja] CHECK CONSTRAINT [check_price_rezerwacja]
GO
ALTER TABLE [dbo].[RezerwacjaPokoj]  WITH CHECK ADD  CONSTRAINT [check_price_rpokoj] CHECK  (([CenaRezerwacji]>(0)))
GO
ALTER TABLE [dbo].[RezerwacjaPokoj] CHECK CONSTRAINT [check_price_rpokoj]
GO
ALTER TABLE [dbo].[RezerwacjaUsluga]  WITH CHECK ADD  CONSTRAINT [check_price_rusluga] CHECK  (([CenaSprzedazy]>(0)))
GO
ALTER TABLE [dbo].[RezerwacjaUsluga] CHECK CONSTRAINT [check_price_rusluga]
GO
ALTER TABLE [dbo].[Usluga]  WITH CHECK ADD  CONSTRAINT [check_price_usluga] CHECK  (([Cena]>(0)))
GO
ALTER TABLE [dbo].[Usluga] CHECK CONSTRAINT [check_price_usluga]
GO
