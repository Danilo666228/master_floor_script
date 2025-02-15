CREATE TABLE [dbo].[MaterialType](
	[IdMaterialType] [int] NOT NULL,
	[MaterialTypeName] [nvarchar](150) NOT NULL,
	[DefectivaMaterialPercentage] [float] NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[IdMaterialType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 12.12.2024 9:34:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[IdPartner] [int] IDENTITY(1,1) NOT NULL,
	[PartnerName] [nvarchar](150) NOT NULL,
	[PartnerTypeId] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[Ceo] [nvarchar](150) NOT NULL,
	[Phone] [bigint] NOT NULL,
	[Email] [nchar](150) NOT NULL,
	[TaxpayerNumber] [nchar](150) NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[IdPartner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProduct]    Script Date: 12.12.2024 9:34:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProduct](
	[IdPartnerProduct] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[PartnerId] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_PartnerProduct] PRIMARY KEY CLUSTERED 
(
	[IdPartnerProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerType]    Script Date: 12.12.2024 9:34:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerType](
	[IdPartnerType] [int] IDENTITY(1,1) NOT NULL,
	[PartnerTypeName] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_PartnerType] PRIMARY KEY CLUSTERED 
(
	[IdPartnerType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12.12.2024 9:34:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IdProduct] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeId] [int] NOT NULL,
	[ProductName] [nvarchar](150) NOT NULL,
	[Sku] [nvarchar](150) NOT NULL,
	[MinimalCostForPartner] [float] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 12.12.2024 9:34:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[IdProductType] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeName] [nvarchar](150) NOT NULL,
	[ProductTypeCoefficient] [float] NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[IdProductType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[MaterialType] ([IdMaterialType], [MaterialTypeName], [DefectivaMaterialPercentage]) VALUES (1, N'Тип материала 1', 0.1)
INSERT [dbo].[MaterialType] ([IdMaterialType], [MaterialTypeName], [DefectivaMaterialPercentage]) VALUES (2, N'Тип материала 2', 0.95)
INSERT [dbo].[MaterialType] ([IdMaterialType], [MaterialTypeName], [DefectivaMaterialPercentage]) VALUES (3, N'Тип материала 3', 0.28)
INSERT [dbo].[MaterialType] ([IdMaterialType], [MaterialTypeName], [DefectivaMaterialPercentage]) VALUES (4, N'Тип материала 4', 0.55)
INSERT [dbo].[MaterialType] ([IdMaterialType], [MaterialTypeName], [DefectivaMaterialPercentage]) VALUES (5, N'Тип материала 5', 0.34)
GO
SET IDENTITY_INSERT [dbo].[Partner] ON 

INSERT [dbo].[Partner] ([IdPartner], [PartnerName], [PartnerTypeId], [Rating], [Address], [Ceo], [Phone], [Email], [TaxpayerNumber]) VALUES (1, N'База Строитель', 1, 7, N'652050, Кемеровская область, город Юрга, ул. Лесная, 15', N'Иванова Александра Ивановна', 74931234567, N'aleksandraivanova@ml.ru                                                                                                                               ', N'2222455179                                                                                                                                            ')
INSERT [dbo].[Partner] ([IdPartner], [PartnerName], [PartnerTypeId], [Rating], [Address], [Ceo], [Phone], [Email], [TaxpayerNumber]) VALUES (2, N'Паркет 29', 3, 7, N'164500, Архангельская область, город Северодвинск, ул. Строителей, 18', N'Петров Василий Петрович', 79871235678, N'vppetrov@vl.ru                                                                                                                                        ', N'3333888520                                                                                                                                            ')
INSERT [dbo].[Partner] ([IdPartner], [PartnerName], [PartnerTypeId], [Rating], [Address], [Ceo], [Phone], [Email], [TaxpayerNumber]) VALUES (3, N'Стройсервис', 4, 7, N'188910, Ленинградская область, город Приморск, ул. Парковая, 21', N'Соловьев Андрей Николаевич', 78122233200, N'ansolovev@st.ru                                                                                                                                       ', N'4440391035                                                                                                                                            ')
INSERT [dbo].[Partner] ([IdPartner], [PartnerName], [PartnerTypeId], [Rating], [Address], [Ceo], [Phone], [Email], [TaxpayerNumber]) VALUES (4, N'Ремонт и отделка', 2, 5, N'143960, Московская область, город Реутов, ул. Свободы, 51', N'Воробьева Екатерина Валерьевна', 74442223311, N'ekaterina.vorobeva@ml.ru                                                                                                                              ', N'1111520857                                                                                                                                            ')
INSERT [dbo].[Partner] ([IdPartner], [PartnerName], [PartnerTypeId], [Rating], [Address], [Ceo], [Phone], [Email], [TaxpayerNumber]) VALUES (5, N'МонтажПро', 1, 10, N'309500, Белгородская область, город Старый Оскол, ул. Рабочая, 122', N'Степанов Степан Сергеевич', 79128883333, N'stepanov@stepan.ru                                                                                                                                    ', N'5552431140                                                                                                                                            ')
SET IDENTITY_INSERT [dbo].[Partner] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerProduct] ON 

INSERT [dbo].[PartnerProduct] ([IdPartnerProduct], [ProductId], [PartnerId], [Amount], [Date]) VALUES (1, 1, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[PartnerProduct] ([IdPartnerProduct], [ProductId], [PartnerId], [Amount], [Date]) VALUES (2, 3, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[PartnerProduct] ([IdPartnerProduct], [ProductId], [PartnerId], [Amount], [Date]) VALUES (3, 4, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProduct] ([IdPartnerProduct], [ProductId], [PartnerId], [Amount], [Date]) VALUES (4, 2, 2, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[PartnerProduct] ([IdPartnerProduct], [ProductId], [PartnerId], [Amount], [Date]) VALUES (5, 5, 2, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[PartnerProduct] ([IdPartnerProduct], [ProductId], [PartnerId], [Amount], [Date]) VALUES (6, 3, 2, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProduct] ([IdPartnerProduct], [ProductId], [PartnerId], [Amount], [Date]) VALUES (7, 1, 2, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[PartnerProduct] ([IdPartnerProduct], [ProductId], [PartnerId], [Amount], [Date]) VALUES (8, 1, 3, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[PartnerProduct] ([IdPartnerProduct], [ProductId], [PartnerId], [Amount], [Date]) VALUES (9, 2, 3, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[PartnerProduct] ([IdPartnerProduct], [ProductId], [PartnerId], [Amount], [Date]) VALUES (10, 4, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[PartnerProduct] ([IdPartnerProduct], [ProductId], [PartnerId], [Amount], [Date]) VALUES (11, 3, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[PartnerProduct] ([IdPartnerProduct], [ProductId], [PartnerId], [Amount], [Date]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[PartnerProduct] ([IdPartnerProduct], [ProductId], [PartnerId], [Amount], [Date]) VALUES (13, 3, 5, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[PartnerProduct] ([IdPartnerProduct], [ProductId], [PartnerId], [Amount], [Date]) VALUES (14, 4, 5, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[PartnerProduct] ([IdPartnerProduct], [ProductId], [PartnerId], [Amount], [Date]) VALUES (15, 1, 5, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[PartnerProduct] ([IdPartnerProduct], [ProductId], [PartnerId], [Amount], [Date]) VALUES (16, 2, 5, 25000, CAST(N'2024-06-12' AS Date))
SET IDENTITY_INSERT [dbo].[PartnerProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerType] ON 

INSERT [dbo].[PartnerType] ([IdPartnerType], [PartnerTypeName]) VALUES (1, N'ЗАО')
INSERT [dbo].[PartnerType] ([IdPartnerType], [PartnerTypeName]) VALUES (2, N'ОАО')
INSERT [dbo].[PartnerType] ([IdPartnerType], [PartnerTypeName]) VALUES (3, N'ООО')
INSERT [dbo].[PartnerType] ([IdPartnerType], [PartnerTypeName]) VALUES (4, N'ПАО')
SET IDENTITY_INSERT [dbo].[PartnerType] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([IdProduct], [ProductTypeId], [ProductName], [Sku], [MinimalCostForPartner]) VALUES (1, 3, N'Паркетная доска Ясень темный однополосная 14 мм', N'8758385', 4456.9)
INSERT [dbo].[Product] ([IdProduct], [ProductTypeId], [ProductName], [Sku], [MinimalCostForPartner]) VALUES (2, 3, N'Инженерная доска Дуб Французская елка однополосная 12 мм', N'8858958', 7330.99)
INSERT [dbo].[Product] ([IdProduct], [ProductTypeId], [ProductName], [Sku], [MinimalCostForPartner]) VALUES (3, 1, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', N'7750282', 1799.33)
INSERT [dbo].[Product] ([IdProduct], [ProductTypeId], [ProductName], [Sku], [MinimalCostForPartner]) VALUES (4, 1, N'Ламинат Дуб серый 32 класс 8 мм с фаской', N'7028748', 3890.41)
INSERT [dbo].[Product] ([IdProduct], [ProductTypeId], [ProductName], [Sku], [MinimalCostForPartner]) VALUES (5, 4, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', N'5012543', 5450.59)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([IdProductType], [ProductTypeName], [ProductTypeCoefficient]) VALUES (1, N'Ламинат', 2.35)
INSERT [dbo].[ProductType] ([IdProductType], [ProductTypeName], [ProductTypeCoefficient]) VALUES (2, N'Массивная доска', 5.15)
INSERT [dbo].[ProductType] ([IdProductType], [ProductTypeName], [ProductTypeCoefficient]) VALUES (3, N'Паркетная доска', 4.34)
INSERT [dbo].[ProductType] ([IdProductType], [ProductTypeName], [ProductTypeCoefficient]) VALUES (4, N'Пробковое покрытие', 1.5)
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_PartnerType] FOREIGN KEY([PartnerTypeId])
REFERENCES [dbo].[PartnerType] ([IdPartnerType])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_PartnerType]
GO
ALTER TABLE [dbo].[PartnerProduct]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProduct_Partner] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([IdPartner])
GO
ALTER TABLE [dbo].[PartnerProduct] CHECK CONSTRAINT [FK_PartnerProduct_Partner]
GO
ALTER TABLE [dbo].[PartnerProduct]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProduct_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[PartnerProduct] CHECK CONSTRAINT [FK_PartnerProduct_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([ProductTypeId])
REFERENCES [dbo].[ProductType] ([IdProductType])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO