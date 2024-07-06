USE [test]
GO
/****** Object:  Table [dbo].[products]    Script Date: 8/5/2023 11:06:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[product_id] [int] NOT NULL,
	[product_name] [varchar](255) NOT NULL,
	[brand_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[model_year] [smallint] NOT NULL,
	[list_price] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (1, N'Trek 820 - 2016', 9, 6, 2016, CAST(379.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (2, N'Ritchey Timberwolf Frameset - 2016', 5, 6, 2016, CAST(749.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (3, N'Surly Wednesday Frameset - 2016', 8, 6, 2016, CAST(999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (4, N'Trek Fuel EX 8 29 - 2016', 9, 6, 2016, CAST(2899.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (5, N'Heller Shagamaw Frame - 2016', 3, 6, 2016, CAST(1320.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (6, N'Surly Ice Cream Truck Frameset - 2016', 8, 6, 2016, CAST(469.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (7, N'Trek Slash 8 27.5 - 2016', 9, 6, 2016, CAST(3999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (8, N'Trek Remedy 29 Carbon Frameset - 2016', 9, 6, 2016, CAST(1799.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (9, N'Trek Conduit+ - 2016', 9, 5, 2016, CAST(2999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (10, N'Surly Straggler - 2016', 8, 4, 2016, CAST(1549.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (11, N'Surly Straggler 650b - 2016', 8, 4, 2016, CAST(1680.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (12, N'Electra Townie Original 21D - 2016', 1, 3, 2016, CAST(549.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (13, N'Electra Cruiser 1 (24-Inch) - 2016', 1, 3, 2016, CAST(269.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (14, N'Electra Girl''s Hawaii 1 (16-inch) - 2015/2016', 1, 3, 2016, CAST(269.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (15, N'Electra Moto 1 - 2016', 1, 3, 2016, CAST(529.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (16, N'Electra Townie Original 7D EQ - 2016', 1, 3, 2016, CAST(599.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (17, N'Pure Cycles Vine 8-Speed - 2016', 4, 3, 2016, CAST(429.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (18, N'Pure Cycles Western 3-Speed - Women''s - 2015/2016', 4, 3, 2016, CAST(449.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (19, N'Pure Cycles William 3-Speed - 2016', 4, 3, 2016, CAST(449.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (20, N'Electra Townie Original 7D EQ - Women''s - 2016', 1, 3, 2016, CAST(599.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (21, N'Electra Cruiser 1 (24-Inch) - 2016', 1, 1, 2016, CAST(269.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (22, N'Electra Girl''s Hawaii 1 (16-inch) - 2015/2016', 1, 1, 2016, CAST(269.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (23, N'Electra Girl''s Hawaii 1 (20-inch) - 2015/2016', 1, 1, 2016, CAST(299.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (24, N'Electra Townie Original 21D - 2016', 1, 2, 2016, CAST(549.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (25, N'Electra Townie Original 7D - 2015/2016', 1, 2, 2016, CAST(499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (26, N'Electra Townie Original 7D EQ - 2016', 1, 2, 2016, CAST(599.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (27, N'Surly Big Dummy Frameset - 2017', 8, 6, 2017, CAST(999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (28, N'Surly Karate Monkey 27.5+ Frameset - 2017', 8, 6, 2017, CAST(2499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (29, N'Trek X-Caliber 8 - 2017', 9, 6, 2017, CAST(999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (30, N'Surly Ice Cream Truck Frameset - 2017', 8, 6, 2017, CAST(999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (31, N'Surly Wednesday - 2017', 8, 6, 2017, CAST(1632.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (32, N'Trek Farley Alloy Frameset - 2017', 9, 6, 2017, CAST(469.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (33, N'Surly Wednesday Frameset - 2017', 8, 6, 2017, CAST(469.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (34, N'Trek Session DH 27.5 Carbon Frameset - 2017', 9, 6, 2017, CAST(469.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (35, N'Sun Bicycles Spider 3i - 2017', 7, 6, 2017, CAST(832.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (36, N'Surly Troll Frameset - 2017', 8, 6, 2017, CAST(832.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (37, N'Haro Flightline One ST - 2017', 2, 6, 2017, CAST(379.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (38, N'Haro Flightline Two 26 Plus - 2017', 2, 6, 2017, CAST(549.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (39, N'Trek Stache 5 - 2017', 9, 6, 2017, CAST(1499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (40, N'Trek Fuel EX 9.8 29 - 2017', 9, 6, 2017, CAST(4999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (41, N'Haro Shift R3 - 2017', 2, 6, 2017, CAST(1469.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (42, N'Trek Fuel EX 5 27.5 Plus - 2017', 9, 6, 2017, CAST(2299.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (43, N'Trek Fuel EX 9.8 27.5 Plus - 2017', 9, 6, 2017, CAST(5299.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (44, N'Haro SR 1.1 - 2017', 2, 6, 2017, CAST(539.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (45, N'Haro SR 1.2 - 2017', 2, 6, 2017, CAST(869.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (46, N'Haro SR 1.3 - 2017', 2, 6, 2017, CAST(1409.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (47, N'Trek Remedy 9.8 - 2017', 9, 6, 2017, CAST(5299.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (48, N'Trek Emonda S 4 - 2017', 9, 7, 2017, CAST(1499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (49, N'Trek Domane SL 6 - 2017', 9, 7, 2017, CAST(3499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (50, N'Trek Silque SLR 7 Women''s - 2017', 9, 7, 2017, CAST(5999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (51, N'Trek Silque SLR 8 Women''s - 2017', 9, 7, 2017, CAST(6499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (52, N'Surly Steamroller - 2017', 8, 7, 2017, CAST(875.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (53, N'Surly Ogre Frameset - 2017', 8, 7, 2017, CAST(749.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (54, N'Trek Domane SL Disc Frameset - 2017', 9, 7, 2017, CAST(3199.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (55, N'Trek Domane S 6 - 2017', 9, 7, 2017, CAST(2699.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (56, N'Trek Domane SLR 6 Disc - 2017', 9, 7, 2017, CAST(5499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (57, N'Trek Emonda S 5 - 2017', 9, 7, 2017, CAST(1999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (58, N'Trek Madone 9.2 - 2017', 9, 7, 2017, CAST(4999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (59, N'Trek Domane S 5 Disc - 2017', 9, 7, 2017, CAST(2599.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (60, N'Sun Bicycles ElectroLite - 2017', 7, 5, 2017, CAST(1559.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (61, N'Trek Powerfly 8 FS Plus - 2017', 9, 5, 2017, CAST(4999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (62, N'Trek Boone 7 - 2017', 9, 4, 2017, CAST(3499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (63, N'Trek Boone Race Shop Limited - 2017', 9, 4, 2017, CAST(3499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (64, N'Electra Townie Original 7D - 2017', 1, 3, 2017, CAST(489.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (65, N'Sun Bicycles Lil Bolt Type-R - 2017', 7, 3, 2017, CAST(346.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (66, N'Sun Bicycles Revolutions 24 - 2017', 7, 3, 2017, CAST(250.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (67, N'Sun Bicycles Revolutions 24 - Girl''s - 2017', 7, 3, 2017, CAST(250.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (68, N'Sun Bicycles Cruz 3 - 2017', 7, 3, 2017, CAST(449.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (69, N'Sun Bicycles Cruz 7 - 2017', 7, 3, 2017, CAST(416.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (70, N'Electra Amsterdam Original 3i - 2015/2017', 1, 3, 2017, CAST(659.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (71, N'Sun Bicycles Atlas X-Type - 2017', 7, 3, 2017, CAST(416.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (72, N'Sun Bicycles Biscayne Tandem 7 - 2017', 7, 3, 2017, CAST(619.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (73, N'Sun Bicycles Brickell Tandem 7 - 2017', 7, 3, 2017, CAST(749.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (74, N'Electra Cruiser Lux 1 - 2017', 1, 3, 2017, CAST(439.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (75, N'Electra Cruiser Lux Fat Tire 1 Ladies - 2017', 1, 3, 2017, CAST(599.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (76, N'Electra Girl''s Hawaii 1 16" - 2017', 1, 3, 2017, CAST(299.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (77, N'Electra Glam Punk 3i Ladies'' - 2017', 1, 3, 2017, CAST(799.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (78, N'Sun Bicycles Biscayne Tandem CB - 2017', 7, 3, 2017, CAST(647.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (79, N'Sun Bicycles Boardwalk (24-inch Wheels) - 2017', 7, 3, 2017, CAST(402.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (80, N'Sun Bicycles Brickell Tandem CB - 2017', 7, 3, 2017, CAST(761.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (81, N'Electra Amsterdam Fashion 7i Ladies'' - 2017', 1, 3, 2017, CAST(1099.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (82, N'Electra Amsterdam Original 3i Ladies'' - 2017', 1, 3, 2017, CAST(659.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (83, N'Trek Boy''s Kickster - 2015/2017', 9, 1, 2017, CAST(149.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (84, N'Sun Bicycles Lil Kitt''n - 2017', 7, 1, 2017, CAST(109.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (85, N'Haro Downtown 16 - 2017', 2, 1, 2017, CAST(329.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (86, N'Trek Girl''s Kickster - 2017', 9, 1, 2017, CAST(149.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (87, N'Trek Precaliber 12 Boys - 2017', 9, 1, 2017, CAST(189.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (88, N'Trek Precaliber 12 Girls - 2017', 9, 1, 2017, CAST(189.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (89, N'Trek Precaliber 16 Boys - 2017', 9, 1, 2017, CAST(209.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (90, N'Trek Precaliber 16 Girls - 2017', 9, 1, 2017, CAST(209.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (91, N'Trek Precaliber 24 (21-Speed) - Girls - 2017', 9, 1, 2017, CAST(349.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (92, N'Haro Shredder 20 - 2017', 2, 1, 2017, CAST(209.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (93, N'Haro Shredder 20 Girls - 2017', 2, 1, 2017, CAST(209.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (94, N'Haro Shredder Pro 20 - 2017', 2, 1, 2017, CAST(249.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (95, N'Electra Girl''s Hawaii 1 16" - 2017', 1, 1, 2017, CAST(299.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (96, N'Electra Moto 3i (20-inch) - Boy''s - 2017', 1, 1, 2017, CAST(349.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (97, N'Electra Savannah 3i (20-inch) - Girl''s - 2017', 1, 1, 2017, CAST(349.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (98, N'Electra Straight 8 3i (20-inch) - Boy''s - 2017', 1, 1, 2017, CAST(489.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (99, N'Electra Sugar Skulls 1 (20-inch) - Girl''s - 2017', 1, 1, 2017, CAST(299.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (100, N'Electra Townie 3i EQ (20-inch) - Boys'' - 2017', 1, 1, 2017, CAST(489.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (101, N'Electra Townie 7D (20-inch) - Boys'' - 2017', 1, 1, 2017, CAST(339.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (102, N'Electra Townie Original 7D - 2017', 1, 2, 2017, CAST(489.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (103, N'Sun Bicycles Streamway 3 - 2017', 7, 2, 2017, CAST(551.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (104, N'Sun Bicycles Streamway - 2017', 7, 2, 2017, CAST(481.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (105, N'Sun Bicycles Streamway 7 - 2017', 7, 2, 2017, CAST(533.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (106, N'Sun Bicycles Cruz 3 - 2017', 7, 2, 2017, CAST(449.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (107, N'Sun Bicycles Cruz 7 - 2017', 7, 2, 2017, CAST(416.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (108, N'Sun Bicycles Cruz 3 - Women''s - 2017', 7, 2, 2017, CAST(449.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (109, N'Sun Bicycles Cruz 7 - Women''s - 2017', 7, 2, 2017, CAST(416.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (110, N'Sun Bicycles Drifter 7 - 2017', 7, 2, 2017, CAST(470.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (111, N'Sun Bicycles Drifter 7 - Women''s - 2017', 7, 2, 2017, CAST(470.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (112, N'Trek 820 - 2018', 9, 6, 2018, CAST(379.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (113, N'Trek Marlin 5 - 2018', 9, 6, 2018, CAST(489.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (114, N'Trek Marlin 6 - 2018', 9, 6, 2018, CAST(579.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (115, N'Trek Fuel EX 8 29 - 2018', 9, 6, 2018, CAST(3199.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (116, N'Trek Marlin 7 - 2017/2018', 9, 6, 2018, CAST(749.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (117, N'Trek Ticket S Frame - 2018', 9, 6, 2018, CAST(1469.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (118, N'Trek X-Caliber 8 - 2018', 9, 6, 2018, CAST(999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (119, N'Trek Kids'' Neko - 2018', 9, 6, 2018, CAST(469.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (120, N'Trek Fuel EX 7 29 - 2018', 9, 6, 2018, CAST(2499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (121, N'Surly Krampus Frameset - 2018', 8, 6, 2018, CAST(2499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (122, N'Surly Troll Frameset - 2018', 8, 6, 2018, CAST(2499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (123, N'Trek Farley Carbon Frameset - 2018', 9, 6, 2018, CAST(999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (124, N'Surly Krampus - 2018', 8, 6, 2018, CAST(1499.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (125, N'Trek Kids'' Dual Sport - 2018', 9, 6, 2018, CAST(469.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (126, N'Surly Big Fat Dummy Frameset - 2018', 8, 6, 2018, CAST(469.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (127, N'Surly Pack Rat Frameset - 2018', 8, 6, 2018, CAST(469.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (128, N'Surly ECR 27.5 - 2018', 8, 6, 2018, CAST(1899.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (129, N'Trek X-Caliber 7 - 2018', 9, 6, 2018, CAST(919.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (130, N'Trek Stache Carbon Frameset - 2018', 9, 6, 2018, CAST(919.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (131, N'Heller Bloodhound Trail - 2018', 3, 6, 2018, CAST(2599.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (132, N'Trek Procal AL Frameset - 2018', 9, 6, 2018, CAST(1499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (133, N'Trek Procaliber Frameset - 2018', 9, 6, 2018, CAST(1499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (134, N'Trek Remedy 27.5 C Frameset - 2018', 9, 6, 2018, CAST(1499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (135, N'Trek X-Caliber Frameset - 2018', 9, 6, 2018, CAST(1499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (136, N'Trek Procaliber 6 - 2018', 9, 6, 2018, CAST(1799.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (137, N'Heller Shagamaw GX1 - 2018', 3, 6, 2018, CAST(2599.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (138, N'Trek Fuel EX 5 Plus - 2018', 9, 6, 2018, CAST(2249.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (139, N'Trek Remedy 7 27.5 - 2018', 9, 6, 2018, CAST(2999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (140, N'Trek Remedy 9.8 27.5 - 2018', 9, 6, 2018, CAST(4999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (141, N'Trek Stache 5 - 2018', 9, 6, 2018, CAST(1599.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (142, N'Trek Fuel EX 8 29 XT - 2018', 9, 6, 2018, CAST(3199.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (143, N'Trek Domane ALR 3 - 2018', 9, 7, 2018, CAST(1099.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (144, N'Trek Domane ALR 4 Disc - 2018', 9, 7, 2018, CAST(1549.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (145, N'Trek Domane ALR 5 Disc - 2018', 9, 7, 2018, CAST(1799.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (146, N'Trek Domane SLR 6 - 2018', 9, 7, 2018, CAST(4999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (147, N'Trek Domane ALR 5 Gravel - 2018', 9, 7, 2018, CAST(1799.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (148, N'Trek Domane SL 8 Disc - 2018', 9, 7, 2018, CAST(5499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (149, N'Trek Domane SLR 8 Disc - 2018', 9, 7, 2018, CAST(7499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (150, N'Trek Emonda SL 7 - 2018', 9, 7, 2018, CAST(4499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (151, N'Trek Domane ALR 4 Disc Women''s - 2018', 9, 7, 2018, CAST(1549.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (152, N'Trek Domane SL 5 Disc Women''s - 2018', 9, 7, 2018, CAST(2499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (153, N'Trek Domane SL 7 Women''s - 2018', 9, 7, 2018, CAST(4999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (154, N'Trek Domane SLR 6 Disc Women''s - 2018', 9, 7, 2018, CAST(5499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (155, N'Trek Domane SLR 9 Disc - 2018', 9, 7, 2018, CAST(11999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (156, N'Trek Domane SL Frameset - 2018', 9, 7, 2018, CAST(6499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (157, N'Trek Domane SL Frameset Women''s - 2018', 9, 7, 2018, CAST(6499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (158, N'Trek CrossRip 1 - 2018', 9, 7, 2018, CAST(959.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (159, N'Trek Emonda ALR 6 - 2018', 9, 7, 2018, CAST(2299.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (160, N'Trek Emonda SLR 6 - 2018', 9, 7, 2018, CAST(4499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (161, N'Surly ECR - 2018', 8, 7, 2018, CAST(1899.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (162, N'Trek Emonda SL 6 Disc - 2018', 9, 7, 2018, CAST(2999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (163, N'Surly Pack Rat - 2018', 8, 7, 2018, CAST(1349.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (164, N'Surly Straggler 650b - 2018', 8, 7, 2018, CAST(1549.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (165, N'Trek 1120 - 2018', 9, 7, 2018, CAST(2499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (166, N'Trek Domane AL 2 Women''s - 2018', 9, 7, 2018, CAST(749.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (167, N'Surly ECR Frameset - 2018', 8, 7, 2018, CAST(749.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (168, N'Surly Straggler - 2018', 8, 7, 2018, CAST(1549.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (169, N'Trek Emonda SLR 8 - 2018', 9, 7, 2018, CAST(6499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (170, N'Trek CrossRip 2 - 2018', 9, 7, 2018, CAST(1299.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (171, N'Trek Domane SL 6 - 2018', 9, 7, 2018, CAST(3199.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (172, N'Trek Domane ALR Disc Frameset - 2018', 9, 7, 2018, CAST(3199.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (173, N'Trek Domane ALR Frameset - 2018', 9, 7, 2018, CAST(3199.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (174, N'Trek Domane SLR Disc Frameset - 2018', 9, 7, 2018, CAST(3199.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (175, N'Trek Domane SLR Frameset - 2018', 9, 7, 2018, CAST(3199.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (176, N'Trek Madone 9 Frameset - 2018', 9, 7, 2018, CAST(3199.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (177, N'Trek Domane SLR 6 Disc - 2018', 9, 7, 2018, CAST(5499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (178, N'Trek Domane AL 2 - 2018', 9, 7, 2018, CAST(749.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (179, N'Trek Domane AL 3 - 2018', 9, 7, 2018, CAST(919.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (180, N'Trek Domane AL 3 Women''s - 2018', 9, 7, 2018, CAST(919.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (181, N'Trek Domane SL 5 - 2018', 9, 7, 2018, CAST(2199.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (182, N'Trek Domane SL 5 Disc - 2018', 9, 7, 2018, CAST(2499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (183, N'Trek Domane SL 5 Women''s - 2018', 9, 7, 2018, CAST(2199.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (184, N'Trek Domane SL 6 Disc - 2018', 9, 7, 2018, CAST(3499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (185, N'Trek Conduit+ - 2018', 9, 5, 2018, CAST(2799.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (186, N'Trek CrossRip+ - 2018', 9, 5, 2018, CAST(4499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (187, N'Trek Neko+ - 2018', 9, 5, 2018, CAST(2799.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (188, N'Trek XM700+ Lowstep - 2018', 9, 5, 2018, CAST(3499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (189, N'Trek Lift+ Lowstep - 2018', 9, 5, 2018, CAST(2799.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (190, N'Trek Dual Sport+ - 2018', 9, 5, 2018, CAST(2799.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (191, N'Electra Loft Go! 8i - 2018', 1, 5, 2018, CAST(2799.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (192, N'Electra Townie Go! 8i - 2017/2018', 1, 5, 2018, CAST(2599.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (193, N'Trek Lift+ - 2018', 9, 5, 2018, CAST(2799.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (194, N'Trek XM700+ - 2018', 9, 5, 2018, CAST(3499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (195, N'Electra Townie Go! 8i Ladies'' - 2018', 1, 5, 2018, CAST(2599.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (196, N'Trek Verve+ - 2018', 9, 5, 2018, CAST(2299.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (197, N'Trek Verve+ Lowstep - 2018', 9, 5, 2018, CAST(2299.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (198, N'Electra Townie Commute Go! - 2018', 1, 5, 2018, CAST(2999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (199, N'Electra Townie Commute Go! Ladies'' - 2018', 1, 5, 2018, CAST(2999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (200, N'Trek Powerfly 5 - 2018', 9, 5, 2018, CAST(3499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (201, N'Trek Powerfly 5 FS - 2018', 9, 5, 2018, CAST(4499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (202, N'Trek Powerfly 5 Women''s - 2018', 9, 5, 2018, CAST(3499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (203, N'Trek Powerfly 7 FS - 2018', 9, 5, 2018, CAST(4999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (204, N'Trek Super Commuter+ 7 - 2018', 9, 5, 2018, CAST(3599.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (205, N'Trek Super Commuter+ 8S - 2018', 9, 5, 2018, CAST(4999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (206, N'Trek Boone 5 Disc - 2018', 9, 4, 2018, CAST(3299.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (207, N'Trek Boone 7 Disc - 2018', 9, 4, 2018, CAST(3999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (208, N'Trek Crockett 5 Disc - 2018', 9, 4, 2018, CAST(1799.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (209, N'Trek Crockett 7 Disc - 2018', 9, 4, 2018, CAST(2999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (210, N'Surly Straggler - 2018', 8, 4, 2018, CAST(1549.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (211, N'Surly Straggler 650b - 2018', 8, 4, 2018, CAST(1549.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (212, N'Electra Townie Original 21D - 2018', 1, 3, 2018, CAST(559.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (213, N'Electra Cruiser 1 - 2016/2017/2018', 1, 3, 2018, CAST(269.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (214, N'Electra Tiger Shark 3i - 2018', 1, 3, 2018, CAST(899.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (215, N'Electra Queen of Hearts 3i - 2018', 1, 3, 2018, CAST(749.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (216, N'Electra Super Moto 8i - 2018', 1, 3, 2018, CAST(899.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (217, N'Electra Straight 8 3i - 2018', 1, 3, 2018, CAST(909.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (218, N'Electra Cruiser 7D - 2016/2017/2018', 1, 3, 2018, CAST(319.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (219, N'Electra Moto 3i - 2018', 1, 3, 2018, CAST(639.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (220, N'Electra Cruiser 1 Ladies'' - 2018', 1, 3, 2018, CAST(269.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (221, N'Electra Cruiser 7D Ladies'' - 2016/2018', 1, 3, 2018, CAST(319.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (222, N'Electra Cruiser 1 Tall - 2016/2018', 1, 3, 2018, CAST(269.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (223, N'Electra Cruiser Lux 3i - 2018', 1, 3, 2018, CAST(529.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (224, N'Electra Cruiser Lux 7D - 2018', 1, 3, 2018, CAST(479.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (225, N'Electra Delivery 3i - 2016/2017/2018', 1, 3, 2018, CAST(959.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (226, N'Electra Townie Original 21D EQ - 2017/2018', 1, 3, 2018, CAST(679.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (227, N'Electra Cruiser 7D (24-Inch) Ladies'' - 2016/2018', 1, 3, 2018, CAST(319.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (228, N'Electra Cruiser 7D Tall - 2016/2018', 1, 3, 2018, CAST(319.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (229, N'Electra Cruiser Lux 1 - 2016/2018', 1, 3, 2018, CAST(429.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (230, N'Electra Cruiser Lux 1 Ladies'' - 2018', 1, 3, 2018, CAST(429.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (231, N'Electra Cruiser Lux 3i Ladies'' - 2018', 1, 3, 2018, CAST(529.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (232, N'Electra Cruiser Lux 7D Ladies'' - 2018', 1, 3, 2018, CAST(479.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (233, N'Electra Cruiser Lux Fat Tire 7D - 2018', 1, 3, 2018, CAST(639.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (234, N'Electra Daydreamer 3i Ladies'' - 2018', 1, 3, 2018, CAST(899.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (235, N'Electra Koa 3i Ladies'' - 2018', 1, 3, 2018, CAST(899.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (236, N'Electra Morningstar 3i Ladies'' - 2018', 1, 3, 2018, CAST(749.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (237, N'Electra Relic 3i - 2018', 1, 3, 2018, CAST(849.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (238, N'Electra Townie Balloon 8D EQ - 2016/2017/2018', 1, 3, 2018, CAST(749.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (239, N'Electra Townie Balloon 8D EQ Ladies'' - 2016/2017/2018', 1, 3, 2018, CAST(749.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (240, N'Electra Townie Commute 27D Ladies - 2018', 1, 3, 2018, CAST(899.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (241, N'Electra Townie Commute 8D - 2018', 1, 3, 2018, CAST(749.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (242, N'Electra Townie Commute 8D Ladies'' - 2018', 1, 3, 2018, CAST(699.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (243, N'Electra Townie Original 21D EQ Ladies'' - 2018', 1, 3, 2018, CAST(679.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (244, N'Electra Townie Original 21D Ladies'' - 2018', 1, 3, 2018, CAST(559.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (245, N'Electra Townie Original 3i EQ - 2017/2018', 1, 3, 2018, CAST(659.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (246, N'Electra Townie Original 3i EQ Ladies'' - 2018', 1, 3, 2018, CAST(639.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (247, N'Electra Townie Original 7D EQ - 2018', 1, 3, 2018, CAST(599.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (248, N'Electra Townie Original 7D EQ Ladies'' - 2017/2018', 1, 3, 2018, CAST(599.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (249, N'Electra White Water 3i - 2018', 1, 3, 2018, CAST(749.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (250, N'Electra Townie Go! 8i - 2017/2018', 1, 3, 2018, CAST(2599.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (251, N'Electra Townie Commute Go! - 2018', 1, 3, 2018, CAST(2999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (252, N'Electra Townie Commute Go! Ladies'' - 2018', 1, 3, 2018, CAST(2999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (253, N'Electra Townie Go! 8i Ladies'' - 2018', 1, 3, 2018, CAST(2599.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (254, N'Electra Townie Balloon 3i EQ - 2017/2018', 1, 3, 2018, CAST(749.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (255, N'Electra Townie Balloon 7i EQ Ladies'' - 2017/2018', 1, 3, 2018, CAST(899.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (256, N'Electra Townie Commute 27D - 2018', 1, 3, 2018, CAST(899.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (257, N'Electra Amsterdam Fashion 3i Ladies'' - 2017/2018', 1, 3, 2018, CAST(899.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (258, N'Electra Amsterdam Royal 8i - 2017/2018', 1, 3, 2018, CAST(1259.90 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (259, N'Electra Amsterdam Royal 8i Ladies - 2018', 1, 3, 2018, CAST(1199.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (260, N'Electra Townie Balloon 3i EQ Ladies'' - 2018', 1, 3, 2018, CAST(799.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (261, N'Electra Townie Balloon 7i EQ - 2018', 1, 3, 2018, CAST(899.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (262, N'Trek MT 201 - 2018', 9, 1, 2018, CAST(249.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (263, N'Strider Classic 12 Balance Bike - 2018', 6, 1, 2018, CAST(89.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (264, N'Strider Sport 16 - 2018', 6, 1, 2018, CAST(249.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (265, N'Strider Strider 20 Sport - 2018', 6, 1, 2018, CAST(289.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (266, N'Trek Superfly 20 - 2018', 9, 1, 2018, CAST(399.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (267, N'Trek Precaliber 12 Girl''s - 2018', 9, 1, 2018, CAST(199.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (268, N'Trek Kickster - 2018', 9, 1, 2018, CAST(159.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (269, N'Trek Precaliber 12 Boy''s - 2018', 9, 1, 2018, CAST(199.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (270, N'Trek Precaliber 16 Boy''s - 2018', 9, 1, 2018, CAST(209.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (271, N'Trek Precaliber 16 Girl''s - 2018', 9, 1, 2018, CAST(209.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (272, N'Trek Precaliber 20 6-speed Boy''s - 2018', 9, 1, 2018, CAST(289.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (273, N'Trek Precaliber 20 6-speed Girl''s - 2018', 9, 1, 2018, CAST(289.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (274, N'Trek Precaliber 20 Boy''s - 2018', 9, 1, 2018, CAST(229.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (275, N'Trek Precaliber 20 Girl''s - 2018', 9, 1, 2018, CAST(229.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (276, N'Trek Precaliber 24 (7-Speed) - Boys - 2018', 9, 1, 2018, CAST(319.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (277, N'Trek Precaliber 24 21-speed Boy''s - 2018', 9, 1, 2018, CAST(369.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (278, N'Trek Precaliber 24 21-speed Girl''s - 2018', 9, 1, 2018, CAST(369.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (279, N'Trek Precaliber 24 7-speed Girl''s - 2018', 9, 1, 2018, CAST(319.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (280, N'Trek Superfly 24 - 2017/2018', 9, 1, 2018, CAST(489.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (281, N'Electra Cruiser 7D (24-Inch) Ladies'' - 2016/2018', 1, 1, 2018, CAST(319.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (282, N'Electra Cyclosaurus 1 (16-inch) - Boy''s - 2018', 1, 1, 2018, CAST(279.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (283, N'Electra Heartchya 1 (20-inch) - Girl''s - 2018', 1, 1, 2018, CAST(319.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (284, N'Electra Savannah 1 (20-inch) - Girl''s - 2018', 1, 1, 2018, CAST(319.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (285, N'Electra Soft Serve 1 (16-inch) - Girl''s - 2018', 1, 1, 2018, CAST(279.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (286, N'Electra Starship 1 16" - 2018', 1, 1, 2018, CAST(279.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (287, N'Electra Straight 8 1 (16-inch) - Boy''s - 2018', 1, 1, 2018, CAST(279.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (288, N'Electra Straight 8 1 (20-inch) - Boy''s - 2018', 1, 1, 2018, CAST(389.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (289, N'Electra Superbolt 1 20" - 2018', 1, 1, 2018, CAST(319.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (290, N'Electra Superbolt 3i 20" - 2018', 1, 1, 2018, CAST(369.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (291, N'Electra Sweet Ride 1 (20-inch) - Girl''s - 2018', 1, 1, 2018, CAST(319.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (292, N'Electra Sweet Ride 3i (20-inch) - Girls'' - 2018', 1, 1, 2018, CAST(369.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (293, N'Electra Tiger Shark 1 (20-inch) - Boys'' - 2018', 1, 1, 2018, CAST(319.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (294, N'Electra Tiger Shark 3i (20-inch) - Boys'' - 2018', 1, 1, 2018, CAST(369.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (295, N'Electra Treasure 1 20" - 2018', 1, 1, 2018, CAST(319.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (296, N'Electra Treasure 3i 20" - 2018', 1, 1, 2018, CAST(369.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (297, N'Electra Under-The-Sea 1 16" - 2018', 1, 1, 2018, CAST(279.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (298, N'Electra Water Lily 1 (16-inch) - Girl''s - 2018', 1, 1, 2018, CAST(279.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (299, N'Electra Townie Original 21D - 2018', 1, 2, 2018, CAST(559.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (300, N'Electra Townie Balloon 3i EQ Ladies'' - 2018', 1, 2, 2018, CAST(799.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (301, N'Electra Townie Balloon 7i EQ - 2018', 1, 2, 2018, CAST(899.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (302, N'Electra Townie Original 1 - 2018', 1, 2, 2018, CAST(449.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (303, N'Electra Townie Go! 8i - 2017/2018', 1, 2, 2018, CAST(2599.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (304, N'Electra Townie Original 21D EQ - 2017/2018', 1, 2, 2018, CAST(679.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (305, N'Electra Townie Balloon 3i EQ - 2017/2018', 1, 2, 2018, CAST(749.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (306, N'Electra Townie Balloon 7i EQ Ladies'' - 2017/2018', 1, 2, 2018, CAST(899.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (307, N'Electra Townie Balloon 8D EQ - 2016/2017/2018', 1, 2, 2018, CAST(749.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (308, N'Electra Townie Balloon 8D EQ Ladies'' - 2016/2017/2018', 1, 2, 2018, CAST(749.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (309, N'Electra Townie Commute 27D - 2018', 1, 2, 2018, CAST(899.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (310, N'Electra Townie Commute 27D Ladies - 2018', 1, 2, 2018, CAST(899.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (311, N'Electra Townie Commute 8D - 2018', 1, 2, 2018, CAST(749.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (312, N'Electra Townie Commute 8D Ladies'' - 2018', 1, 2, 2018, CAST(699.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (313, N'Electra Townie Original 1 Ladies'' - 2018', 1, 2, 2018, CAST(449.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (314, N'Electra Townie Original 21D EQ Ladies'' - 2018', 1, 2, 2018, CAST(679.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (315, N'Electra Townie Original 21D Ladies'' - 2018', 1, 2, 2018, CAST(559.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (316, N'Trek Checkpoint ALR 4 Women''s - 2019', 9, 7, 2019, CAST(1699.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (317, N'Trek Checkpoint ALR 5 - 2019', 9, 7, 2019, CAST(1999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (318, N'Trek Checkpoint ALR 5 Women''s - 2019', 9, 7, 2019, CAST(1999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (319, N'Trek Checkpoint SL 5 Women''s - 2019', 9, 7, 2019, CAST(2799.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (320, N'Trek Checkpoint SL 6 - 2019', 9, 7, 2019, CAST(3799.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[products] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (321, N'Trek Checkpoint ALR Frameset - 2019', 9, 7, 2019, CAST(3199.99 AS Decimal(10, 2)))
GO
