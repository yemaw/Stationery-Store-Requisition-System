USE [LogicUniversityDB_Team9]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_user_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserType] ON
INSERT [dbo].[UserType] ([id], [type]) VALUES (1, N'Department Employee')
INSERT [dbo].[UserType] ([id], [type]) VALUES (2, N'Department Head Delegate')
INSERT [dbo].[UserType] ([id], [type]) VALUES (3, N'Department Head')
INSERT [dbo].[UserType] ([id], [type]) VALUES (4, N'Store Clerk')
INSERT [dbo].[UserType] ([id], [type]) VALUES (5, N'Store Supervisor')
INSERT [dbo].[UserType] ([id], [type]) VALUES (6, N'Store Manager')
SET IDENTITY_INSERT [dbo].[UserType] OFF
/****** Object:  Table [dbo].[Supplier]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Supplier](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NOT NULL,
	[supplier_name] [nvarchar](50) NOT NULL,
	[contact_name] [nvarchar](50) NULL,
	[phone_number] [varchar](50) NULL,
	[fax_number] [varchar](50) NULL,
	[address] [nvarchar](200) NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_supplier] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON
INSERT [dbo].[Supplier] ([id], [code], [supplier_name], [contact_name], [phone_number], [fax_number], [address], [email]) VALUES (1, N'ALPA', N'ALPHA Office Suppliers', N'Ms Irene Tan', N'6596543120', N'461 2238', N'Blk 1128, Ang Mo Kio Industrial Park #02-1108 Ang Mo Kio Street 62 Singapore 622262', N'team9.iss36.nus@gmail.com')
INSERT [dbo].[Supplier] ([id], [code], [supplier_name], [contact_name], [phone_number], [fax_number], [address], [email]) VALUES (2, N'CHEP', N'Cheap Stationer', N'Mr Soh Kway Koh', N'6596543120', N'474 2434', N'Blk 34, Clementi Road #07-02 Ban Ban Soh Building Singapore 110525', N'team9.iss36.nus@gmail.com')
INSERT [dbo].[Supplier] ([id], [code], [supplier_name], [contact_name], [phone_number], [fax_number], [address], [email]) VALUES (3, N'BANE', N'BANES Shop ', N'Mr Loh Ah Pek', N'6596543120', N'479 2434', N'Blk 124, Alexandra Road #03-04 Banes Building Singapore 550315', N'team9.iss36.nus@gmail.com')
INSERT [dbo].[Supplier] ([id], [code], [supplier_name], [contact_name], [phone_number], [fax_number], [address], [email]) VALUES (4, N'OMEG', N'OMEGA Stationery Supplier', N'Mr Ronnie Ho', N'6596543120', N'767 1234', N'Blk 11, Hillview Avenue #03-04, Singapore 679036', N'team9.iss36.nus@gmail.com')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
/****** Object:  Table [dbo].[StationeryCategory]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StationeryCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_stationary_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[StationeryCategory] ON
INSERT [dbo].[StationeryCategory] ([id], [category_name]) VALUES (1, N'Clip')
INSERT [dbo].[StationeryCategory] ([id], [category_name]) VALUES (2, N'Envelope')
INSERT [dbo].[StationeryCategory] ([id], [category_name]) VALUES (3, N'Eraser')
INSERT [dbo].[StationeryCategory] ([id], [category_name]) VALUES (4, N'Exercise')
INSERT [dbo].[StationeryCategory] ([id], [category_name]) VALUES (5, N'File')
INSERT [dbo].[StationeryCategory] ([id], [category_name]) VALUES (6, N'Pen')
INSERT [dbo].[StationeryCategory] ([id], [category_name]) VALUES (7, N'Puncher')
INSERT [dbo].[StationeryCategory] ([id], [category_name]) VALUES (8, N'Pad')
INSERT [dbo].[StationeryCategory] ([id], [category_name]) VALUES (9, N'Paper')
INSERT [dbo].[StationeryCategory] ([id], [category_name]) VALUES (10, N'Ruler')
INSERT [dbo].[StationeryCategory] ([id], [category_name]) VALUES (11, N'Scissors')
INSERT [dbo].[StationeryCategory] ([id], [category_name]) VALUES (12, N'Tape')
INSERT [dbo].[StationeryCategory] ([id], [category_name]) VALUES (13, N'Sharpener')
INSERT [dbo].[StationeryCategory] ([id], [category_name]) VALUES (14, N'Stapler')
INSERT [dbo].[StationeryCategory] ([id], [category_name]) VALUES (15, N'Tacks')
INSERT [dbo].[StationeryCategory] ([id], [category_name]) VALUES (16, N'Tparency')
INSERT [dbo].[StationeryCategory] ([id], [category_name]) VALUES (17, N'Tray')
INSERT [dbo].[StationeryCategory] ([id], [category_name]) VALUES (18, N'Shorthand')
SET IDENTITY_INSERT [dbo].[StationeryCategory] OFF
/****** Object:  Table [dbo].[CollectionPoint]    Script Date: 09/17/2013 16:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CollectionPoint](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_CollectionPoint] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CollectionPoint] ON
INSERT [dbo].[CollectionPoint] ([id], [name]) VALUES (1, N'Business School')
INSERT [dbo].[CollectionPoint] ([id], [name]) VALUES (2, N'Institute of Systems Science')
INSERT [dbo].[CollectionPoint] ([id], [name]) VALUES (3, N'Yusof IShak Hall')
INSERT [dbo].[CollectionPoint] ([id], [name]) VALUES (4, N'School ofMedicine')
INSERT [dbo].[CollectionPoint] ([id], [name]) VALUES (5, N'Computing Drive')
INSERT [dbo].[CollectionPoint] ([id], [name]) VALUES (6, N'Engineering Drive')
SET IDENTITY_INSERT [dbo].[CollectionPoint] OFF
/****** Object:  Table [dbo].[Department]    Script Date: 09/17/2013 16:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NOT NULL,
	[department_name] [nvarchar](100) NOT NULL,
	[contact_name] [nvarchar](100) NULL,
	[phone] [nvarchar](50) NULL,
	[department_head] [int] NULL,
	[collection_point] [int] NOT NULL,
	[representative_name] [nvarchar](100) NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON
INSERT [dbo].[Department] ([id], [code], [department_name], [contact_name], [phone], [department_head], [collection_point], [representative_name]) VALUES (3, N'ENGL', N'English Dept', N'Mr Pamela Kow', N'8742234', 5, 1, N'Mr Tan Jon Ei')
INSERT [dbo].[Department] ([id], [code], [department_name], [contact_name], [phone], [department_head], [collection_point], [representative_name]) VALUES (4, N'CPSC', N'School of Medicine', N'Mr Wee Kian Fatt', N'8901457', 6, 1, N'Mr Jiong Kui')
INSERT [dbo].[Department] ([id], [code], [department_name], [contact_name], [phone], [department_head], [collection_point], [representative_name]) VALUES (5, N'COMM', N'Commerce Dept', N'Mr Mohd. Azman', N'8921256', 7, 1, N'Ms Chenn  Lee')
INSERT [dbo].[Department] ([id], [code], [department_name], [contact_name], [phone], [department_head], [collection_point], [representative_name]) VALUES (6, N'REGR', N'Registrar Dept', N'Ms Helen Ho', N'8901266', 8, 1, N'Mr Wong Jengmee')
INSERT [dbo].[Department] ([id], [code], [department_name], [contact_name], [phone], [department_head], [collection_point], [representative_name]) VALUES (7, N'ZOOL', N'Zoology Dept', N'Mr. Peter Tan Ah Meng', N'8901266', 9, 1, N'Mr Lee Xun')
INSERT [dbo].[Department] ([id], [code], [department_name], [contact_name], [phone], [department_head], [collection_point], [representative_name]) VALUES (8, N'ISS', N'Institute of Systems Science', N'Mr Swe', N'82964828', 21, 1, N'Mandy')
INSERT [dbo].[Department] ([id], [code], [department_name], [contact_name], [phone], [department_head], [collection_point], [representative_name]) VALUES (9, N'SOC', N'School of Computing', N'Mr Larry', N'9569769', 16, 1, N'Cherry')
SET IDENTITY_INSERT [dbo].[Department] OFF
/****** Object:  Table [dbo].[Stationery]    Script Date: 09/17/2013 16:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stationery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NOT NULL,
	[stationery_name] [nvarchar](200) NOT NULL,
	[category] [int] NOT NULL,
	[price] [float] NOT NULL,
	[reorder_level] [int] NOT NULL,
	[reorder_quantity] [int] NOT NULL,
	[quantity_in_stock] [int] NOT NULL,
	[pending_quantity_to_distribute] [int] NOT NULL,
	[first_supplier] [int] NULL,
	[second_supplier] [int] NULL,
	[third_supplier] [int] NULL,
	[unit_of_measure] [varchar](50) NOT NULL,
	[bin] [varchar](50) NULL,
 CONSTRAINT [PK_stationary] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Stationery] ON
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (1, N'C001', N'Clips Double 1"', 1, 4, 50, 30, 147, 3, 1, 2, 3, N'Dozen', N'A1')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (2, N'C002', N'Clips Double 2"', 1, 4, 50, 30, 2, 2, 2, 3, 4, N'Dozen', N'A3')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (3, N'C003', N'Clips Double 3/4"', 1, 4, 50, 30, 264, 7, 3, 2, 1, N'Dozen', N'A2')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (4, N'C004', N'Clips Paper Large', 1, 4.5, 50, 30, 745, 5, 1, 3, 2, N'Box', N'E3')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (5, N'C005', N'Clips Paper Medium', 1, 4.5, 50, 30, 172, 3, 1, 2, 3, N'Box', N'A6')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (6, N'C006', N'Clips Paper Small', 1, 4.5, 50, 30, 85, 1, 3, 4, 1, N'Box', N'E5')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (7, N'E001', N'Envelope Brown (3"x6")', 2, 0.5, 600, 40, 71, 871, 2, 3, 1, N'Each', N'E2')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (8, N'E002', N'Envelope Brown (3"x6")   w/Window', 2, 0.5, 600, 400, 1759, 0, 4, 2, 1, N'Each', N'E4')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (9, N'E003', N'Envelope Brown (5"x7")', 2, 0.5, 600, 400, 605, 3, 1, 2, 4, N'Each', N'E6')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (10, N'E004', N'Envelope Brown (5"x7")   w/Window', 2, 0.5, 600, 400, 1390, 3, 1, 2, 4, N'Each', N'E7')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (11, N'E005', N'Envelope White (3"x6")', 2, 0.75, 600, 400, 664, 0, 4, 1, 3, N'Each', N'E9')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (12, N'E006', N'Envelope White (3"x6")   w/Window', 2, 0.75, 600, 400, 604, 0, 3, 2, 1, N'Each', N'E8')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (13, N'E007', N'Envelope White (5"x7")', 2, 0.75, 600, 400, 968, 3, 2, 3, 1, N'Each', N'A8')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (14, N'E008', N'Envelope White (5"x7")   w/Window', 2, 0.75, 600, 400, 981, 0, 2, 1, 3, N'Each', N'A9')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (15, N'E020', N'Eraser (hard)', 3, 0.5, 50, 20, 48, 2, 2, 3, 1, N'Each', N'B1')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (16, N'E021', N'Eraser (soft)', 3, 0.5, 50, 20, 53, 2, 1, 2, 3, N'Each', N'B2')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (17, N'E030', N'Exercise Book (100pg)', 4, 2, 100, 50, 96, 0, 3, 2, 1, N'Each', N'B4')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (18, N'E031', N'Exercise Book (120pg)', 4, 2, 100, 50, 82, 0, 3, 2, 1, N'Each', N'B5')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (19, N'E032', N'Exercise Book A4 Hardcover (100pg)', 4, 2, 100, 50, 134, 0, 3, 2, 1, N'Each', N'B5')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (20, N'E033', N'Exercise Book A4 Hardcover(120pg)', 4, 2, 100, 50, 110, 0, 1, 2, 4, N'Each', N'B8')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (21, N'E034', N'Exercise Book Hardcover(200pg)', 4, 2, 100, 50, 107, 0, 4, 2, 1, N'Each', N'C4')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (22, N'E035', N'Exercise Book Hardcover(100pg)', 4, 2, 100, 50, 144, 0, 1, 3, 2, N'Each', N'C5')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (23, N'E036', N'Exercise Book Hardcover (120pg)', 4, 2, 100, 50, 224, 0, 2, 3, 1, N'Each', N'C7')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (24, N'F020', N'File', 5, 7, 100, 50, 130, 0, 1, 3, 2, N'Set', N'R1')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (25, N'F021', N'File-Blue Plain', 5, 2.5, 200, 100, 230, 0, 3, 2, 1, N'Each', N'R2')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (26, N'F022', N'File-Blue with Logo', 5, 2.5, 200, 100, 288, 0, 1, 3, 2, N'Each', N'R3')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (27, N'F023', N'File-Brown w/o Logo', 5, 2.5, 200, 150, 225, 0, 2, 3, 1, N'Each', N'R5')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (28, N'F024', N'File-Brown with Logo', 5, 2.5, 200, 150, 211, 0, 3, 2, 1, N'Each', N'R6')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (29, N'F031', N'Folder Plastic Blue', 5, 2.5, 200, 150, 227, 0, 1, 2, 3, N'Each', N'R8')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (30, N'F032', N'Folder Plastic Clear', 5, 2.5, 200, 150, 310, 0, 1, 3, 4, N'Each', N'R9')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (31, N'F033', N'Folder Plastic Green', 5, 2.5, 200, 150, 225, 0, 2, 3, 1, N'Each', N'W2')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (32, N'F034', N'Folder Plastic Pink', 5, 2.5, 200, 150, 266, 3, 1, 3, 2, N'Each', N'W1')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (33, N'F035', N'Folder Plastic Yellow', 5, 2.5, 200, 150, 189, 0, 3, 1, 2, N'Each', N'W3')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (34, N'H011', N'Highlighter Blue', 6, 15, 100, 80, 142, 0, 1, 2, 3, N'Box', N'W4')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (35, N'H012', N'Highlighter Green', 6, 15, 100, 80, 113, 0, 1, 3, 2, N'Box', N'W6')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (36, N'H013', N'Highlighter Pink', 6, 15, 100, 80, 121, 0, 2, 4, 1, N'Box', N'W5')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (37, N'H014', N'Highlighter Yellow', 6, 15, 100, 80, 127, 0, 3, 2, 1, N'Box', N'W6')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (38, N'H031', N'Hole Puncher 2 holes', 7, 3, 50, 20, 0, 0, 1, 2, 3, N'Each', N'W7')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (39, N'H032', N'Hole Puncher 3 holes', 7, 3, 50, 20, 62, 0, 2, 3, 1, N'Each', N'J1')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (40, N'H033', N'Hole Puncher Adjustable', 7, 3, 50, 20, 55, 2, 3, 4, 1, N'Each', N'J2')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (41, N'P010', N'Pad Postit Memo 1"x2"', 8, 4, 100, 60, 105, 0, 2, 3, 1, N'Packet', N'J4')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (42, N'P011', N'Pad Postit Memo 1/2"x1"', 8, 4, 100, 60, 214, 0, 1, 2, 3, N'Packet', N'J5')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (43, N'P012', N'Pad Postit Memo 1/2"x2"', 8, 4, 100, 60, 102, 3, 2, 4, 1, N'Packet', N'J6')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (44, N'P013', N'Pad Postit Memo 2"x3"', 8, 4, 100, 60, 110, 0, 2, 3, 1, N'Packet', N'J7')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (45, N'P014', N'Pad Postit Memo 2"x4"', 8, 4, 100, 60, 256, 0, 1, 2, 3, N'Packet', N'J8')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (46, N'P015', N'Pad Postit Memo 2"x5"', 8, 4, 100, 60, 162, 0, 3, 2, 1, N'Packet', N'J9')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (47, N'P016', N'Pad Postit Memo 3/4"x2"', 8, 4, 100, 60, 99, 1, 2, 4, 1, N'Packet', N'Q1')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (48, N'P020', N'Paper Photostat A3', 9, 10, 500, 500, 1493, 0, 2, 4, 1, N'Box', N'Q2')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (49, N'P021', N'Paper Photostat A4', 9, 10, 500, 500, 507, 0, 2, 3, 1, N'Box', N'Q2')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (50, N'P030', N'Pen Ballpoint Black', 6, 35, 100, 50, 105, 2, 2, 3, 1, N'Dozen', N'Q4')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (51, N'P031', N'Pen Ballpoint Blue', 6, 35, 100, 50, 105, 0, 1, 2, 4, N'Dozen', N'Q4')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (52, N'P032', N'Pen Ballpoint Red', 6, 35, 100, 50, 106, 0, 2, 3, 1, N'Dozen', N'Q3')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (53, N'P033', N'Pen Felt Tip Black', 6, 33, 100, 50, 100, 0, 2, 1, 3, N'Dozen', N'Q4')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (54, N'P034', N'Pen Felt Tip Blue', 6, 33, 100, 50, 124, 0, 4, 2, 1, N'Dozen', N'Q5')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (55, N'P035', N'Pen Felt Tip Red', 6, 33, 100, 50, 387, 0, 1, 4, 2, N'Dozen', N'Q6')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (56, N'P036', N'Pen Transparency Permanent', 6, 25, 100, 50, 106, 0, 2, 3, 1, N'Packet', N'Q7')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (57, N'P037', N'Pen Transparency Soluble', 6, 25, 100, 50, 106, 0, 1, 2, 3, N'Packet', N'Q9')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (58, N'P038', N'Pen Whiteboard Marker Black', 6, 27, 100, 50, 105, 0, 3, 2, 1, N'Box', N'T1')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (59, N'P039', N'Pen Whiteboard Marker Blue', 6, 27, 100, 50, 120, 0, 3, 1, 2, N'Box', N'T2')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (60, N'P040', N'Pen Whiteboard Marker Green', 6, 27, 100, 50, 111, 0, 2, 3, 1, N'Box', N'T3')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (61, N'P041', N'Pen Whiteboard Marker Red', 6, 27, 100, 50, 125, 0, 1, 3, 4, N'Dozen', N'T4')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (62, N'P042', N'Pencil 2B', 6, 6, 100, 50, 118, 0, 2, 3, 1, N'Dozen', N'T4')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (63, N'P043', N'Pencil 2B with Eraser End', 6, 6, 100, 50, 125, 0, 2, 1, 3, N'Dozen', N'T4')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (64, N'P044', N'Pencil 4H', 6, 6, 100, 50, 122, 2, 3, 1, 4, N'Dozen', N'T5')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (65, N'P045', N'Pencil', 6, 6, 100, 50, 111, 0, 1, 4, 2, N'Dozen', N'T6')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (66, N'P046', N'Pencil B with Eraser End', 6, 6, 100, 50, 120, 0, 1, 2, 3, N'Dozen', N'T6')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (67, N'R002', N'Ruler 12"', 10, 12, 50, 20, 80, 2, 4, 2, 1, N'Dozen', N'T7')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (68, N'R001', N'Ruler 6"', 10, 12, 50, 20, 61, 0, 2, 3, 1, N'Dozen', N'T8')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (69, N'S100', N'Scissors', 11, 3.5, 50, 20, 67, 0, 2, 3, 1, N'Each', N'T9')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (70, N'S040', N'Scotch Tape', 12, 2.5, 50, 20, 60, 0, 4, 3, 1, N'Each', N'S1')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (71, N'S041', N'Scotch Tape Dispenser', 12, 2.5, 50, 20, 10, 0, 1, 2, 4, N'Each', N'S2')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (72, N'S101', N'Sharpener', 13, 4.5, 50, 20, 70, 0, 2, 4, 1, N'Each', N'S3')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (73, N'S010', N'Shorthand Book (100pg)', 18, 3, 100, 80, 103, 0, 2, 3, 1, N'Each', N'S4')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (74, N'S011', N'Shorthand Book (120pg)', 18, 3, 100, 80, 177, 0, 1, 2, 3, N'Each', N'Z1')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (75, N'S012', N'Shorthand Book (80pg)', 18, 3, 100, 80, 143, 0, 2, 4, 1, N'Each', N'Z2')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (76, N'S020', N'Stapler No.28', 14, 3.5, 50, 20, 710, 0, 1, 2, 4, N'Each', N'Z3')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (77, N'S021', N'Stapler No.36', 14, 3.5, 50, 20, 96, 0, 2, 3, 1, N'Each', N'Z4')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (78, N'S022', N'Stapler No.29', 14, 35, 50, 20, 70, 0, 1, 2, 4, N'Box', N'Z4')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (79, N'S023', N'Stapler No.39', 14, 35, 50, 20, 83, 0, 2, 3, 1, N'Box', N'Z5')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (80, N'T001', N'Thumb Tacks Large', 15, 5, 10, 10, 21, 0, 4, 3, 1, N'Box', N'Z5')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (81, N'T002', N'Thumb Tacks Medium', 15, 5, 10, 10, 24, 0, 2, 1, 4, N'Box', N'Z6')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (82, N'T003', N'Thumb Tacks Small', 15, 5, 10, 10, 19, 0, 3, 1, 2, N'Box', N'Z8')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (83, N'T020', N'Transparency Blue', 16, 10, 100, 200, 110, 0, 2, 3, 1, N'Box', N'G1')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (84, N'T021', N'Transparency Clear', 16, 10, 500, 400, 895, 0, 2, 4, 1, N'Box', N'G2')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (85, N'T022', N'Transparency Green', 16, 10, 100, 200, 110, 0, 1, 2, 3, N'Box', N'G3')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (86, N'T023', N'Transparency Red', 16, 10, 100, 200, 130, 0, 1, 3, 2, N'Box', N'G5')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (87, N'T024', N'Transparency Reverse Blue', 16, 10, 100, 200, 109, 0, 2, 3, 1, N'Box', N'G6')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (88, N'T025', N'Transparency Cover 3M', 16, 10, 500, 400, 580, 0, 1, 3, 4, N'Box', N'G7')
INSERT [dbo].[Stationery] ([id], [code], [stationery_name], [category], [price], [reorder_level], [reorder_quantity], [quantity_in_stock], [pending_quantity_to_distribute], [first_supplier], [second_supplier], [third_supplier], [unit_of_measure], [bin]) VALUES (89, N'T100', N'Trays In/Out', 17, 20, 20, 10, 30, 1, 2, 3, 1, N'Set', N'G9')
SET IDENTITY_INSERT [dbo].[Stationery] OFF
/****** Object:  Table [dbo].[StockTransaction]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockTransaction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stationery] [int] NOT NULL,
	[balance] [nvarchar](50) NOT NULL,
	[description] [nvarchar](100) NOT NULL,
	[quantity] [nvarchar](50) NOT NULL,
	[datetime_inserted] [datetime] NOT NULL,
 CONSTRAINT [PK_StockTransaction] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[StockTransaction] ON
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (1, 1, N'500', N'Supplier ALPHA Office Suppliers', N'+500', CAST(0x0000A2350003E1B2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (2, 2, N'-3', N'Broken', N'-3', CAST(0x0000A23500110989 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (3, 2, N'497', N'Supplier Cheap Stationer', N'+500', CAST(0x0000A23500A78360 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (4, 3, N'300', N'Supplier BANES Shop ', N'+300', CAST(0x0000A23500AA8112 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (5, 4, N'400', N'Supplier ALPHA Office Suppliers', N'+400', CAST(0x0000A23500AAB8B7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (6, 4, N'900', N'Supplier ALPHA Office Suppliers', N'+500', CAST(0x0000A23500AE4D11 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (7, 5, N'80', N'Supplier ALPHA Office Suppliers', N'+80', CAST(0x0000A23500D455E1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (8, 6, N'55', N'Supplier BANES Shop ', N'+55', CAST(0x0000A23500D4F3D5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (9, 7, N'610', N'Supplier Cheap Stationer', N'+610', CAST(0x0000A23500D531FF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (10, 8, N'620', N'Supplier OMEGA Stationery Supplier', N'+620', CAST(0x0000A23500D59645 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (11, 9, N'630', N'Supplier ALPHA Office Suppliers', N'+630', CAST(0x0000A23500D5BAFF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (12, 10, N'630', N'Supplier ALPHA Office Suppliers', N'+630', CAST(0x0000A23500D5D6A3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (13, 13, N'620', N'Supplier Cheap Stationer', N'+620', CAST(0x0000A23500D7019F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (14, 14, N'610', N'Supplier Cheap Stationer', N'+610', CAST(0x0000A23500D7167F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (15, 12, N'625', N'Supplier BANES Shop ', N'+625', CAST(0x0000A23500D763D8 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (16, 15, N'60', N'Supplier Cheap Stationer', N'+60', CAST(0x0000A23500D7C2DC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (17, 16, N'60', N'Supplier ALPHA Office Suppliers', N'+60', CAST(0x0000A23500D7CF89 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (18, 17, N'115', N'Supplier BANES Shop ', N'+115', CAST(0x0000A23500D7E1EB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (19, 18, N'120', N'Supplier BANES Shop ', N'+120', CAST(0x0000A23500D7EBD7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (20, 19, N'115', N'Supplier BANES Shop ', N'+115', CAST(0x0000A23500D7FF34 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (21, 23, N'125', N'Supplier Cheap Stationer', N'+125', CAST(0x0000A23500D80CAE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (22, 21, N'130', N'Supplier OMEGA Stationery Supplier', N'+130', CAST(0x0000A23500D8249C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (23, 22, N'105', N'Supplier ALPHA Office Suppliers', N'+105', CAST(0x0000A23500D84815 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (24, 23, N'255', N'Supplier Cheap Stationer', N'+130', CAST(0x0000A23500D86120 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (25, 24, N'120', N'Supplier ALPHA Office Suppliers', N'+120', CAST(0x0000A23500D870C5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (26, 25, N'230', N'Supplier BANES Shop ', N'+230', CAST(0x0000A23500D8833C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (27, 26, N'240', N'Supplier ALPHA Office Suppliers', N'+240', CAST(0x0000A23500D89197 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (28, 27, N'220', N'Supplier Cheap Stationer', N'+220', CAST(0x0000A23500D8AA01 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (29, 28, N'240', N'Supplier BANES Shop ', N'+240', CAST(0x0000A23500D8B7A5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (30, 29, N'240', N'Supplier ALPHA Office Suppliers', N'+240', CAST(0x0000A23500D8CEF5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (31, 30, N'220', N'Supplier ALPHA Office Suppliers', N'+220', CAST(0x0000A23500D8E6BD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (32, 31, N'230', N'Supplier Cheap Stationer', N'+230', CAST(0x0000A23500D8F411 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (33, 32, N'230', N'Supplier ALPHA Office Suppliers', N'+230', CAST(0x0000A23500D9088A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (34, 33, N'230', N'Supplier BANES Shop ', N'+230', CAST(0x0000A23500D91A79 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (35, 34, N'150', N'Supplier ALPHA Office Suppliers', N'+150', CAST(0x0000A23500D928D5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (36, 35, N'130', N'Supplier ALPHA Office Suppliers', N'+130', CAST(0x0000A23500D936C3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (37, 36, N'130', N'Supplier Cheap Stationer', N'+130', CAST(0x0000A23500D9440B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (38, 37, N'130', N'Supplier BANES Shop ', N'+130', CAST(0x0000A23500D95159 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (39, 38, N'55', N'Supplier ALPHA Office Suppliers', N'+55', CAST(0x0000A23500D95E82 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (40, 39, N'60', N'Supplier Cheap Stationer', N'+60', CAST(0x0000A23500D96AF7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (41, 40, N'60', N'Supplier BANES Shop ', N'+60', CAST(0x0000A23500D97FED AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (42, 41, N'130', N'Supplier Cheap Stationer', N'+130', CAST(0x0000A23500D993C7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (43, 42, N'115', N'Supplier ALPHA Office Suppliers', N'+115', CAST(0x0000A23500D9ADE9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (44, 43, N'120', N'Supplier Cheap Stationer', N'+120', CAST(0x0000A23500D9C210 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (45, 44, N'120', N'Supplier Cheap Stationer', N'+120', CAST(0x0000A23500D9D121 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (46, 45, N'130', N'Supplier ALPHA Office Suppliers', N'+130', CAST(0x0000A23500D9E0A1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (47, 45, N'260', N'Supplier ALPHA Office Suppliers', N'+130', CAST(0x0000A23500D9FDBD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (48, 47, N'120', N'Supplier Cheap Stationer', N'+120', CAST(0x0000A23500DA0B87 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (49, 48, N'505', N'Supplier Cheap Stationer', N'+505', CAST(0x0000A23500DA1B77 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (50, 49, N'510', N'Supplier Cheap Stationer', N'+510', CAST(0x0000A23500DA293E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (51, 50, N'110', N'Supplier Cheap Stationer', N'+110', CAST(0x0000A23500DA39FF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (52, 51, N'110', N'Supplier ALPHA Office Suppliers', N'+110', CAST(0x0000A23500DA4A54 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (53, 52, N'110', N'Supplier Cheap Stationer', N'+110', CAST(0x0000A23500DA5DBD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (54, 53, N'110', N'Supplier Cheap Stationer', N'+110', CAST(0x0000A23500DA6F62 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (55, 54, N'130', N'Supplier OMEGA Stationery Supplier', N'+130', CAST(0x0000A23500DA7F07 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (56, 55, N'120', N'Supplier ALPHA Office Suppliers', N'+120', CAST(0x0000A23500DA8E51 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (57, 56, N'120', N'Supplier Cheap Stationer', N'+120', CAST(0x0000A23500DAA68D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (58, 57, N'130', N'Supplier ALPHA Office Suppliers', N'+130', CAST(0x0000A23500DADEC5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (59, 58, N'110', N'Supplier BANES Shop ', N'+110', CAST(0x0000A23500DAF31B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (60, 59, N'120', N'Supplier BANES Shop ', N'+120', CAST(0x0000A23500DB0554 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (61, 60, N'120', N'Supplier Cheap Stationer', N'+120', CAST(0x0000A23500DB194C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (62, 61, N'130', N'Supplier ALPHA Office Suppliers', N'+130', CAST(0x0000A23500DB484D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (63, 62, N'130', N'Supplier Cheap Stationer', N'+130', CAST(0x0000A23500DB561B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (64, 63, N'130', N'Supplier Cheap Stationer', N'+130', CAST(0x0000A23500DB63B1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (65, 64, N'130', N'Supplier BANES Shop ', N'+130', CAST(0x0000A23500DB8279 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (66, 65, N'120', N'Supplier ALPHA Office Suppliers', N'+120', CAST(0x0000A23500DB9202 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (67, 66, N'120', N'Supplier ALPHA Office Suppliers', N'+120', CAST(0x0000A23500DBAD0A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (68, 67, N'70', N'Supplier OMEGA Stationery Supplier', N'+70', CAST(0x0000A23500DBB85B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (69, 68, N'70', N'Supplier Cheap Stationer', N'+70', CAST(0x0000A23500DBC44B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (70, 69, N'60', N'Supplier Cheap Stationer', N'+60', CAST(0x0000A23500DBD075 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (71, 70, N'60', N'Supplier OMEGA Stationery Supplier', N'+60', CAST(0x0000A23500DBDCB2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (72, 71, N'70', N'Supplier ALPHA Office Suppliers', N'+70', CAST(0x0000A23500DBEC52 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (73, 72, N'70', N'Supplier Cheap Stationer', N'+70', CAST(0x0000A23500DBFC50 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (74, 73, N'110', N'Supplier Cheap Stationer', N'+110', CAST(0x0000A23500DC1488 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (75, 74, N'110', N'Supplier ALPHA Office Suppliers', N'+110', CAST(0x0000A23500DC1FCD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (76, 75, N'110', N'Supplier Cheap Stationer', N'+110', CAST(0x0000A23500DC2BD6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (77, 76, N'70', N'Supplier ALPHA Office Suppliers', N'+70', CAST(0x0000A23500DC4229 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (78, 77, N'60', N'Supplier Cheap Stationer', N'+60', CAST(0x0000A23500DC542F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (79, 76, N'140', N'Supplier ALPHA Office Suppliers', N'+70', CAST(0x0000A23500DC60C7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (80, 77, N'130', N'Supplier Cheap Stationer', N'+70', CAST(0x0000A23500DC7F25 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (81, 80, N'22', N'Supplier OMEGA Stationery Supplier', N'+22', CAST(0x0000A23500DC97A8 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (82, 81, N'30', N'Supplier Cheap Stationer', N'+30', CAST(0x0000A23500DCA6E2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (83, 82, N'20', N'Supplier BANES Shop ', N'+20', CAST(0x0000A23500DCB3BC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (84, 83, N'110', N'Supplier Cheap Stationer', N'+110', CAST(0x0000A23500DCC1F2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (85, 84, N'505', N'Supplier Cheap Stationer', N'+505', CAST(0x0000A23500DCD46C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (86, 85, N'110', N'Supplier ALPHA Office Suppliers', N'+110', CAST(0x0000A23500DCF0FF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (87, 86, N'130', N'Supplier ALPHA Office Suppliers', N'+130', CAST(0x0000A23500DD00BD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (88, 87, N'110', N'Supplier Cheap Stationer', N'+110', CAST(0x0000A23500DD0E02 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (89, 88, N'600', N'Supplier ALPHA Office Suppliers', N'+600', CAST(0x0000A23500DD1EE7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (90, 89, N'30', N'Supplier Cheap Stationer', N'+30', CAST(0x0000A23500DD3236 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (91, 11, N'700', N'Supplier OMEGA Stationery Supplier', N'+700', CAST(0x0000A23500DE1723 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (92, 20, N'130', N'Supplier ALPHA Office Suppliers', N'+130', CAST(0x0000A23500DF4FFE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (93, 76, N'220', N'Supplier ALPHA Office Suppliers', N'+80', CAST(0x0000A23500E36E0A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (94, 76, N'725', N'Supplier ALPHA Office Suppliers', N'+505', CAST(0x0000A23500E52A4F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (95, 78, N'80', N'Supplier ALPHA Office Suppliers', N'+80', CAST(0x0000A23500E5ABC4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (96, 79, N'90', N'Supplier Cheap Stationer', N'+90', CAST(0x0000A23500E5F762 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (97, 46, N'90', N'Supplier BANES Shop ', N'+90', CAST(0x0000A23500E64BF7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (98, 46, N'170', N'Supplier BANES Shop ', N'+80', CAST(0x0000A23500E685EB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (99, 3, N'308', N'Get Present(Supplier +1)', N'+8', CAST(0x0000A23501081498 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (100, 6, N'51', N'Disbursement', N'- 4', CAST(0x0000A23501254CF9 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (101, 55, N'75', N'Disbursement', N'- 45', CAST(0x0000A235012A3D97 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (102, 25, N'430', N'Supplier BANES Shop ', N'+200', CAST(0x0000A235012C274B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (103, 25, N'435', N'Get Present (Supplier +1)', N'+5', CAST(0x0000A235012C6D77 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (104, 6, N'48', N'Wet', N'-3', CAST(0x0000A2360107A1C4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (105, 9, N'624', N'Wet', N'-6', CAST(0x0000A2360114E35F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (106, 20, N'127', N'Wet Due to Heavy Rain', N'-3', CAST(0x0000A2360115398A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (107, 18, N'117', N'Wet', N'-3', CAST(0x0000A23601160733 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (108, 15, N'58', N'Dirty', N'-2', CAST(0x0000A236011631DE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (109, 2, N'494', N'Broken', N'-3', CAST(0x0000A2360116EF33 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (110, 1, N'499', N'broke', N'-1', CAST(0x0000A237011FB5CA AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (111, 27, N'223', N'Get free gifts from promotion sales (Supplier +2)', N'+3', CAST(0x0000A23A00BD48CD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (112, 69, N'63', N'Present forom promotion sale (Supplier +0)', N'+3', CAST(0x0000A23A00BDDECF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (113, 69, N'67', N'Present from bane (Supplier BANES Shop )', N'+4', CAST(0x0000A23A00BF52D4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (114, 6, N'98', N'Supplier - BANES Shop ', N'+50', CAST(0x0000A23A00DA3AC1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (115, 6, N'148', N'Supplier - ALPHA Office Suppliers', N'+50', CAST(0x0000A23A00DA3EA7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (116, 55, N'175', N'Supplier - ALPHA Office Suppliers', N'+100', CAST(0x0000A23A00DA4488 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (117, 6, N'198', N'Supplier - BANES Shop ', N'+50', CAST(0x0000A23A00DA448B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (118, 55, N'275', N'Supplier - ALPHA Office Suppliers', N'+100', CAST(0x0000A23A00DA449A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (119, 6, N'248', N'Supplier - BANES Shop ', N'+50', CAST(0x0000A23A00DA449E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (120, 55, N'375', N'Supplier - ALPHA Office Suppliers', N'+100', CAST(0x0000A23A00DAB88C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (121, 25, N'535', N'Supplier - BANES Shop ', N'+100', CAST(0x0000A23A00E33713 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (122, 53, N'105', N'Disbursement', N'- 5', CAST(0x0000A23A00EC5C0E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (123, 28, N'235', N'Disbursement', N'- 5', CAST(0x0000A23A00EC5C1A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (124, 40, N'50', N'Disbursement', N'- 10', CAST(0x0000A23A00EC5C3F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (125, 15, N'52', N'Disbursement', N'- 8', CAST(0x0000A23A00EC5C49 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (126, 19, N'106', N'Disbursement', N'- 9', CAST(0x0000A23A00EC5C51 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (127, 3, N'301', N'Disbursement', N'- 7', CAST(0x0000A23A00EC5C62 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (128, 19, N'105', N'Disbursement', N'- 1', CAST(0x0000A23A010B9D9E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (129, 20, N'125', N'Disbursement', N'- 2', CAST(0x0000A23A010C5032 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (130, 5, N'74', N'Disbursement', N'- 6', CAST(0x0000A23A010C8DAF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (131, 15, N'49', N'Disbursement', N'- 3', CAST(0x0000A23A010F8076 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (132, 39, N'58', N'Disbursement', N'- 2', CAST(0x0000A23A0110425E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (133, 1, N'284', N'Disbursement', N'- 215', CAST(0x0000A23A011153D4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (134, 30, N'120', N'Disbursement', N'- 100', CAST(0x0000A23A011153DE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (135, 25, N'100', N'Disbursement', N'- 435', CAST(0x0000A23A011153E6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (136, 10, N'624', N'Disbursement', N'- 6', CAST(0x0000A23A011153F0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (137, 17, N'97', N'Disbursement', N'- 18', CAST(0x0000A23A011153F8 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (138, 26, N'220', N'Disbursement', N'- 20', CAST(0x0000A23A01115419 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (139, 57, N'114', N'Disbursement', N'- 16', CAST(0x0000A23A01115452 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (140, 4, N'894', N'Disbursement', N'- 6', CAST(0x0000A23A0111545A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (141, 16, N'37', N'Disbursement', N'- 23', CAST(0x0000A23A01115464 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (142, 9, N'610', N'Disbursement', N'- 14', CAST(0x0000A23A0111546C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (143, 32, N'205', N'Disbursement', N'- 25', CAST(0x0000A23A01115474 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (144, 26, N'217', N'Disbursement', N'- 3', CAST(0x0000A23A0111BB83 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (145, 24, N'110', N'Disbursement', N'- 10', CAST(0x0000A23A0111BB8C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (146, 4, N'889', N'Disbursement', N'- 5', CAST(0x0000A23A0111BB95 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (147, 17, N'87', N'Disbursement', N'- 10', CAST(0x0000A23A0111BB9D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (148, 33, N'210', N'Disbursement', N'- 20', CAST(0x0000A23A0111BBA5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (149, 25, N'99', N'Disbursement', N'- 1', CAST(0x0000A23B0113CD4E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (150, 25, N'99', N'Disbursement', N'- 0', CAST(0x0000A1F201162961 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (151, 32, N'204', N'Disbursement', N'- 1', CAST(0x0000A1F201162969 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (152, 24, N'105', N'Disbursement', N'- 5', CAST(0x0000A1F201162973 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (153, 35, N'120', N'Disbursement', N'- 10', CAST(0x0000A1F20116297B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (154, 25, N'99', N'Disbursement', N'- 0', CAST(0x0000A20001169AD3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (155, 12, N'610', N'Disbursement', N'- 15', CAST(0x0000A20001169ADB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (156, 14, N'603', N'Disbursement', N'- 7', CAST(0x0000A20001169AE4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (157, 5, N'54', N'Disbursement', N'- 20', CAST(0x0000A20001169AED AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (158, 25, N'99', N'Disbursement', N'- 0', CAST(0x0000A2000116A9FA AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (159, 25, N'27', N'Disbursement', N'- 72', CAST(0x0000A2000116BE92 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (160, 55, N'355', N'Disbursement', N'- 20', CAST(0x0000A20001174CDD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (161, 15, N'28', N'Disbursement', N'- 21', CAST(0x0000A20001174CE6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (162, 18, N'85', N'Disbursement', N'- 32', CAST(0x0000A20001174CF0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (163, 6, N'226', N'Disbursement', N'- 22', CAST(0x0000A20001174CFA AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (164, 19, N'95', N'Disbursement', N'- 10', CAST(0x0000A20001174D03 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (165, 13, N'610', N'Disbursement', N'- 10', CAST(0x0000A20001174D0D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (166, 8, N'605', N'Disbursement', N'- 15', CAST(0x0000A2000117CD88 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (167, 1, N'264', N'Disbursement', N'- 20', CAST(0x0000A2000117CD92 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (168, 2, N'470', N'Disbursement', N'- 24', CAST(0x0000A2000117CD9B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (169, 16, N'28', N'Disbursement', N'- 9', CAST(0x0000A2000117CDA5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (170, 32, N'354', N'Supplier - ALPHA Office Suppliers', N'+150', CAST(0x0000A1DD0122ADA6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (171, 84, N'503', N'Disbursement', N'- 2', CAST(0x0000A1E4012BC927 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (172, 67, N'68', N'Disbursement', N'- 2', CAST(0x0000A1E4012BC938 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (173, 75, N'108', N'Disbursement', N'- 2', CAST(0x0000A1E4012BC945 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (174, 40, N'46', N'Disbursement', N'- 4', CAST(0x0000A1E4012BC953 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (175, 77, N'129', N'Disbursement', N'- 1', CAST(0x0000A1E4012BC961 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (176, 10, N'622', N'Disbursement', N'- 2', CAST(0x0000A1E4012BC96E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (177, 4, N'887', N'Disbursement', N'- 2', CAST(0x0000A1E4012BC97C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (178, 20, N'122', N'Disbursement', N'- 3', CAST(0x0000A1E4012BC98A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (179, 5, N'54', N'Disbursement', N'- 0', CAST(0x0000A1E4012BC997 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (180, 6, N'226', N'Disbursement', N'- 0', CAST(0x0000A1E4012BC9A5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (181, 26, N'215', N'Disbursement', N'- 2', CAST(0x0000A1E4012BC9B3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (182, 17, N'84', N'Disbursement', N'- 3', CAST(0x0000A1E4012BC9C0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (183, 32, N'350', N'Disbursement', N'- 4', CAST(0x0000A1E4012BC9CF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (184, 1, N'262', N'Disbursement', N'- 2', CAST(0x0000A1E4012BC9DD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (185, 60, N'119', N'Disbursement', N'- 1', CAST(0x0000A1E4012BC9EA AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (186, 19, N'92', N'Disbursement', N'- 3', CAST(0x0000A1E4012BC9F8 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (187, 42, N'113', N'Disbursement', N'- 2', CAST(0x0000A1E4012BCA06 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (188, 26, N'212', N'Disbursement', N'- 3', CAST(0x0000A1E4012BE4F8 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (189, 18, N'83', N'Disbursement', N'- 2', CAST(0x0000A1E4012BE506 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (190, 22, N'104', N'Disbursement', N'- 1', CAST(0x0000A1E4012BE514 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (191, 40, N'43', N'Disbursement', N'- 3', CAST(0x0000A1E4012BE522 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (192, 3, N'299', N'Disbursement', N'- 2', CAST(0x0000A1E4012BE52F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (193, 5, N'54', N'Disbursement', N'- 0', CAST(0x0000A1E4012BE53D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (194, 19, N'90', N'Disbursement', N'- 2', CAST(0x0000A1E4012BE54A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (195, 2, N'469', N'Disbursement', N'- 1', CAST(0x0000A1E4012BE558 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (196, 21, N'128', N'Disbursement', N'- 2', CAST(0x0000A1E4012BE565 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (197, 17, N'81', N'Disbursement', N'- 3', CAST(0x0000A1E4012BE573 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (198, 32, N'349', N'Disbursement', N'- 1', CAST(0x0000A1E4012BE581 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (199, 8, N'600', N'Disbursement', N'- 5', CAST(0x0000A1E4012BE58F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (200, 74, N'108', N'Disbursement', N'- 2', CAST(0x0000A1E4012BE59E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (201, 88, N'599', N'Disbursement', N'- 1', CAST(0x0000A1E4012BE5AB AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (202, 68, N'68', N'Disbursement', N'- 2', CAST(0x0000A1E4012BE5B9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (203, 14, N'601', N'Disbursement', N'- 2', CAST(0x0000A1E4012BE5C7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (204, 41, N'129', N'Disbursement', N'- 1', CAST(0x0000A1E4012BE5D4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (205, 17, N'80', N'Disbursement', N'- 1', CAST(0x0000A1E4012BF79D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (206, 7, N'607', N'Disbursement', N'- 3', CAST(0x0000A1E4012BF7B3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (207, 76, N'723', N'Disbursement', N'- 2', CAST(0x0000A1E4012BF7C8 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (208, 14, N'599', N'Disbursement', N'- 2', CAST(0x0000A1E4012BF7DE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (209, 12, N'608', N'Disbursement', N'- 2', CAST(0x0000A1E4012BF7F5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (210, 23, N'254', N'Disbursement', N'- 1', CAST(0x0000A1E4012BF806 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (211, 75, N'106', N'Disbursement', N'- 2', CAST(0x0000A1E4012BF815 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (212, 68, N'66', N'Disbursement', N'- 2', CAST(0x0000A1E4012BF825 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (213, 41, N'126', N'Disbursement', N'- 3', CAST(0x0000A1E4012BF832 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (214, 44, N'118', N'Disbursement', N'- 2', CAST(0x0000A1E4012BF840 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (215, 19, N'85', N'Disbursement', N'- 5', CAST(0x0000A1E4012BF84D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (216, 46, N'168', N'Disbursement', N'- 2', CAST(0x0000A1E4012BF85B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (217, 67, N'66', N'Disbursement', N'- 2', CAST(0x0000A1E4012BF86A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (218, 43, N'119', N'Disbursement', N'- 1', CAST(0x0000A1E4012BF877 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (219, 11, N'696', N'Disbursement', N'- 4', CAST(0x0000A1E4012BF885 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (220, 38, N'55', N'Disbursement', N'- 0', CAST(0x0000A1E4012BF893 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (221, 48, N'504', N'Disbursement', N'- 1', CAST(0x0000A1E4012BF8A1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (222, 18, N'82', N'Disbursement', N'- 1', CAST(0x0000A1E4012C03B0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (223, 3, N'296', N'Disbursement', N'- 3', CAST(0x0000A1E4012C03FA AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (224, 20, N'117', N'Disbursement', N'- 5', CAST(0x0000A1E4012C0407 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (225, 47, N'116', N'Disbursement', N'- 4', CAST(0x0000A1E4012C0413 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (226, 13, N'608', N'Disbursement', N'- 2', CAST(0x0000A1E4012C0421 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (227, 73, N'109', N'Disbursement', N'- 1', CAST(0x0000A1E4012C042D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (228, 8, N'599', N'Disbursement', N'- 1', CAST(0x0000A1E4012C043A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (229, 75, N'103', N'Disbursement', N'- 3', CAST(0x0000A1E4012C0446 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (230, 39, N'55', N'Disbursement', N'- 3', CAST(0x0000A1E4012C0454 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (231, 17, N'78', N'Disbursement', N'- 2', CAST(0x0000A1E4012C0460 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (232, 79, N'88', N'Disbursement', N'- 2', CAST(0x0000A1E4012C046D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (233, 23, N'251', N'Disbursement', N'- 3', CAST(0x0000A1E4012C0479 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (234, 10, N'620', N'Disbursement', N'- 2', CAST(0x0000A1E4012C0485 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (235, 77, N'127', N'Disbursement', N'- 2', CAST(0x0000A1E4012C0491 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (236, 42, N'112', N'Disbursement', N'- 1', CAST(0x0000A1E4012C049D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (237, 6, N'276', N'Supplier - BANES Shop ', N'+50', CAST(0x0000A1E4012C38D4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (238, 6, N'326', N'Supplier - ALPHA Office Suppliers', N'+50', CAST(0x0000A1E4012C38DC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (239, 6, N'376', N'Supplier - BANES Shop ', N'+50', CAST(0x0000A1E4012C38E4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (240, 55, N'455', N'Supplier - ALPHA Office Suppliers', N'+100', CAST(0x0000A1E4012C38EC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (241, 6, N'426', N'Supplier - BANES Shop ', N'+50', CAST(0x0000A1E4012C38F4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (242, 15, N'48', N'Supplier - Cheap Stationer', N'+20', CAST(0x0000A1E4012C38FC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (243, 5, N'84', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1E4012C4A4D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (244, 5, N'114', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1E4012C5F6A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (245, 7, N'1007', N'Supplier - Cheap Stationer', N'+400', CAST(0x0000A1E4012CF2AB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (246, 7, N'1407', N'Supplier - Cheap Stationer', N'+400', CAST(0x0000A1E4012CF2B3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (247, 8, N'999', N'Supplier - OMEGA Stationery Supplier', N'+400', CAST(0x0000A1E4012E0CBD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (248, 15, N'68', N'Supplier - Cheap Stationer', N'+20', CAST(0x0000A1E4012E0CC5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (249, 8, N'1399', N'Supplier - OMEGA Stationery Supplier', N'+400', CAST(0x0000A1E4012E0CCA AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (250, 8, N'1799', N'Supplier - OMEGA Stationery Supplier', N'+400', CAST(0x0000A1E4012E0CCF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (251, 15, N'88', N'Supplier - Cheap Stationer', N'+20', CAST(0x0000A1E4012E0CD5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (252, 13, N'1008', N'Supplier - Cheap Stationer', N'+400', CAST(0x0000A1E4012E2903 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (253, 14, N'999', N'Supplier - Cheap Stationer', N'+400', CAST(0x0000A1E4012E7A82 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (254, 16, N'48', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1E4012E7A87 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (255, 20, N'113', N'Disbursement', N'- 4', CAST(0x0000A1E4012EA556 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (256, 13, N'1003', N'Disbursement', N'- 5', CAST(0x0000A1E4012EA565 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (257, 21, N'127', N'Disbursement', N'- 1', CAST(0x0000A1E4012EA570 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (258, 22, N'103', N'Disbursement', N'- 1', CAST(0x0000A1E4012EA57A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (259, 11, N'687', N'Disbursement', N'- 9', CAST(0x0000A1E4012EA584 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (260, 77, N'123', N'Disbursement', N'- 4', CAST(0x0000A1E4012EA58F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (261, 18, N'76', N'Disbursement', N'- 6', CAST(0x0000A1E4012EA599 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (262, 67, N'63', N'Disbursement', N'- 3', CAST(0x0000A1E4012EA5A5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (263, 8, N'1796', N'Disbursement', N'- 3', CAST(0x0000A1E4012EA5B0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (264, 76, N'720', N'Disbursement', N'- 3', CAST(0x0000A1E4012EA5BA AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (265, 78, N'77', N'Disbursement', N'- 3', CAST(0x0000A1E4012EA5C4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (266, 43, N'116', N'Disbursement', N'- 3', CAST(0x0000A1E4012EA5CF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (267, 7, N'1402', N'Disbursement', N'- 5', CAST(0x0000A1E4012EA5D9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (268, 75, N'101', N'Disbursement', N'- 2', CAST(0x0000A1E4012EA5E4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (269, 63, N'128', N'Disbursement', N'- 2', CAST(0x0000A1E4012EA5EE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (270, 3, N'293', N'Disbursement', N'- 3', CAST(0x0000A1E4012EA5F9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (271, 2, N'467', N'Disbursement', N'- 2', CAST(0x0000A1E4012EA603 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (272, 17, N'76', N'Disbursement', N'- 2', CAST(0x0000A1E4012EA60D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (273, 19, N'83', N'Disbursement', N'- 2', CAST(0x0000A1E4012EA618 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (274, 56, N'119', N'Disbursement', N'- 1', CAST(0x0000A1E4012EA623 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (275, 38, N'55', N'Disbursement', N'- 0', CAST(0x0000A1E4012EA62C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (276, 74, N'107', N'Disbursement', N'- 1', CAST(0x0000A1E4012EA637 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (277, 40, N'41', N'Disbursement', N'- 2', CAST(0x0000A1E4012EA642 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (278, 6, N'426', N'Disbursement', N'- 0', CAST(0x0000A1E4012EA64C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (279, 4, N'886', N'Disbursement', N'- 1', CAST(0x0000A1E4012EA656 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (280, 15, N'86', N'Disbursement', N'- 2', CAST(0x0000A1E4012EA661 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (281, 16, N'46', N'Disbursement', N'- 2', CAST(0x0000A1E4012EA66D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (282, 5, N'114', N'Disbursement', N'- 0', CAST(0x0000A1E4012EA677 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (283, 28, N'234', N'Disbursement', N'- 1', CAST(0x0000A1E4012EA681 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (284, 5, N'60', N'Disbursement', N'- 54', CAST(0x0000A1E4012EBA86 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (285, 22, N'101', N'Disbursement', N'- 2', CAST(0x0000A1E4012EBA8E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (286, 13, N'998', N'Disbursement', N'- 5', CAST(0x0000A1E4012EBA97 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (287, 25, N'0', N'Disbursement', N'- 27', CAST(0x0000A1E4012EBA9F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (288, 7, N'1395', N'Disbursement', N'- 7', CAST(0x0000A1E4012EBAA9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (289, 16, N'39', N'Disbursement', N'- 7', CAST(0x0000A1E4012EBAB1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (290, 6, N'200', N'Disbursement', N'- 226', CAST(0x0000A1E4012EBAB9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (291, 71, N'0', N'Disbursement', N'- 70', CAST(0x0000A1E4012EBAC1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (292, 32, N'144', N'Disbursement', N'- 205', CAST(0x0000A1E4012EBAC9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (293, 27, N'222', N'Disbursement', N'- 1', CAST(0x0000A1E4012EBAD2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (294, 4, N'768', N'Disbursement', N'- 118', CAST(0x0000A1E4012EBADA AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (295, 49, N'507', N'Disbursement', N'- 3', CAST(0x0000A1E4012EBAE3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (296, 64, N'126', N'Disbursement', N'- 4', CAST(0x0000A1E4012EBAEC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (297, 62, N'129', N'Disbursement', N'- 1', CAST(0x0000A1E4012EBAF5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (298, 37, N'129', N'Disbursement', N'- 1', CAST(0x0000A1E4012EBAFD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (299, 82, N'15', N'Disbursement', N'- 5', CAST(0x0000A1E4012EBB06 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (300, 29, N'232', N'Disbursement', N'- 8', CAST(0x0000A1E4012EBB0E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (301, 33, N'209', N'Disbursement', N'- 1', CAST(0x0000A1E4012EBB18 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (302, 3, N'292', N'Disbursement', N'- 1', CAST(0x0000A1E4012EBB20 AS DateTime))
GO
print 'Processed 300 total records'
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (303, 41, N'125', N'Disbursement', N'- 1', CAST(0x0000A1E4012EBB29 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (304, 77, N'120', N'Disbursement', N'- 3', CAST(0x0000A1E4012EBB31 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (305, 1, N'159', N'Disbursement', N'- 103', CAST(0x0000A1E4012EBB3A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (306, 15, N'79', N'Disbursement', N'- 7', CAST(0x0000A1E4012EBB43 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (307, 39, N'53', N'Disbursement', N'- 2', CAST(0x0000A1E4012EBB4B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (308, 30, N'19', N'Disbursement', N'- 101', CAST(0x0000A1E4012EBB55 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (309, 10, N'609', N'Disbursement', N'- 11', CAST(0x0000A1E4012EBB5E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (310, 17, N'63', N'Disbursement', N'- 13', CAST(0x0000A1E4012EBB66 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (311, 26, N'207', N'Disbursement', N'- 5', CAST(0x0000A1E4012EBB6F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (312, 57, N'106', N'Disbursement', N'- 8', CAST(0x0000A1E4012EBB77 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (313, 55, N'410', N'Disbursement', N'- 45', CAST(0x0000A1E4012EBB80 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (314, 20, N'111', N'Disbursement', N'- 2', CAST(0x0000A1E4012EBB89 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (315, 76, N'719', N'Disbursement', N'- 1', CAST(0x0000A1E4012EBB91 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (316, 38, N'0', N'Disbursement', N'- 55', CAST(0x0000A1E4012EBB9A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (317, 19, N'81', N'Disbursement', N'- 2', CAST(0x0000A1E4012EBBA2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (318, 24, N'104', N'Disbursement', N'- 1', CAST(0x0000A1E4012EBBAB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (319, 42, N'111', N'Disbursement', N'- 1', CAST(0x0000A1E4012EBBB4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (320, 35, N'119', N'Disbursement', N'- 1', CAST(0x0000A1E4012EBBBD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (321, 43, N'115', N'Disbursement', N'- 1', CAST(0x0000A1E4012EBBC6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (322, 48, N'503', N'Disbursement', N'- 1', CAST(0x0000A1E4012EBBCF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (323, 88, N'598', N'Disbursement', N'- 1', CAST(0x0000A1E4012EBBD7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (324, 68, N'63', N'Disbursement', N'- 3', CAST(0x0000A1E4012EBBE0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (325, 45, N'259', N'Disbursement', N'- 1', CAST(0x0000A1E4012EBBE9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (326, 54, N'129', N'Disbursement', N'- 1', CAST(0x0000A1E4012EBBF2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (327, 65, N'117', N'Disbursement', N'- 3', CAST(0x0000A1E4012EBBFB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (328, 81, N'28', N'Disbursement', N'- 2', CAST(0x0000A1E4012EBC04 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (329, 75, N'98', N'Disbursement', N'- 3', CAST(0x0000A1E4012EBC0D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (330, 9, N'609', N'Disbursement', N'- 1', CAST(0x0000A1E4012EBC16 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (331, 16, N'59', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1E4012ED2D7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (332, 17, N'113', N'Supplier - BANES Shop ', N'+50', CAST(0x0000A1E4012ED2DE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (333, 19, N'131', N'Supplier - BANES Shop ', N'+50', CAST(0x0000A1E4012ED2E5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (334, 18, N'126', N'Supplier - BANES Shop ', N'+50', CAST(0x0000A1E4012F1C07 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (335, 25, N'100', N'Supplier - BANES Shop ', N'+100', CAST(0x0000A1E4012F5D6A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (336, 25, N'200', N'Supplier - BANES Shop ', N'+100', CAST(0x0000A1E4012F5D72 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (337, 30, N'169', N'Supplier - ALPHA Office Suppliers', N'+150', CAST(0x0000A1E4012F5D7A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (338, 32, N'294', N'Supplier - ALPHA Office Suppliers', N'+150', CAST(0x0000A1E4012F5D81 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (339, 38, N'20', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1E4012F5D89 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (340, 40, N'61', N'Supplier - BANES Shop ', N'+20', CAST(0x0000A1E4012F5D91 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (341, 71, N'20', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1E4012F5D99 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (342, 75, N'178', N'Supplier - Cheap Stationer', N'+80', CAST(0x0000A1E4012F5DA1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (343, 71, N'40', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1E4012F8497 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (344, 38, N'40', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1E4012F849F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (345, 30, N'319', N'Supplier - ALPHA Office Suppliers', N'+150', CAST(0x0000A1E4012F84A7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (346, 25, N'300', N'Supplier - BANES Shop ', N'+100', CAST(0x0000A1E4012F84AF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (347, 5, N'60', N'Disbursement', N'- 0', CAST(0x0000A1E4012FC338 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (348, 25, N'300', N'Disbursement', N'- 0', CAST(0x0000A1E4012FC345 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (349, 6, N'200', N'Disbursement', N'- 0', CAST(0x0000A1E4012FC34D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (350, 71, N'40', N'Disbursement', N'- 0', CAST(0x0000A1E4012FC356 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (351, 32, N'294', N'Disbursement', N'- 0', CAST(0x0000A1E4012FC35F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (352, 38, N'40', N'Disbursement', N'- 0', CAST(0x0000A1E4012FC368 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (353, 7, N'1389', N'Disbursement', N'- 6', CAST(0x0000A1E4012FE6D1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (354, 28, N'219', N'Disbursement', N'- 15', CAST(0x0000A1E4012FE6E0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (355, 61, N'129', N'Disbursement', N'- 1', CAST(0x0000A1E4012FE6EF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (356, 36, N'127', N'Disbursement', N'- 3', CAST(0x0000A1E4012FE6FD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (357, 13, N'996', N'Disbursement', N'- 2', CAST(0x0000A1E4012FE70B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (358, 4, N'767', N'Disbursement', N'- 1', CAST(0x0000A1E4012FE718 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (359, 88, N'594', N'Disbursement', N'- 4', CAST(0x0000A1E4012FE726 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (360, 25, N'300', N'Disbursement', N'- 0', CAST(0x0000A1E4012FE733 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (361, 34, N'148', N'Disbursement', N'- 2', CAST(0x0000A1E4012FE741 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (362, 62, N'126', N'Disbursement', N'- 3', CAST(0x0000A1E4012FE74E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (363, 58, N'108', N'Disbursement', N'- 2', CAST(0x0000A1E4012FE75D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (364, 17, N'112', N'Disbursement', N'- 1', CAST(0x0000A1E4012FE76A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (365, 51, N'108', N'Disbursement', N'- 2', CAST(0x0000A1E4012FE778 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (366, 30, N'317', N'Disbursement', N'- 2', CAST(0x0000A1E4012FE785 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (367, 24, N'103', N'Disbursement', N'- 1', CAST(0x0000A1E4012FE792 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (368, 38, N'60', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1E4013002C9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (369, 71, N'60', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1E4013002D2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (370, 5, N'57', N'Disbursement', N'- 3', CAST(0x0000A1F20133A8FA AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (371, 6, N'197', N'Disbursement', N'- 3', CAST(0x0000A1F20133A905 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (372, 84, N'501', N'Disbursement', N'- 2', CAST(0x0000A1F20133A90F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (373, 67, N'59', N'Disbursement', N'- 4', CAST(0x0000A1F20133A918 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (374, 75, N'175', N'Disbursement', N'- 3', CAST(0x0000A1F20133A922 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (375, 40, N'55', N'Disbursement', N'- 6', CAST(0x0000A1F20133A92B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (376, 77, N'118', N'Disbursement', N'- 2', CAST(0x0000A1F20133A934 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (377, 10, N'606', N'Disbursement', N'- 3', CAST(0x0000A1F20133A93D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (378, 4, N'764', N'Disbursement', N'- 3', CAST(0x0000A1F20133A946 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (379, 20, N'108', N'Disbursement', N'- 3', CAST(0x0000A1F20133A94F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (380, 26, N'206', N'Disbursement', N'- 1', CAST(0x0000A1F20133A958 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (381, 17, N'106', N'Disbursement', N'- 6', CAST(0x0000A1F20133A961 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (382, 32, N'293', N'Disbursement', N'- 1', CAST(0x0000A1F20133A96A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (383, 1, N'158', N'Disbursement', N'- 1', CAST(0x0000A1F20133A973 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (384, 60, N'116', N'Disbursement', N'- 3', CAST(0x0000A1F20133A97C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (385, 19, N'129', N'Disbursement', N'- 2', CAST(0x0000A1F20133A985 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (386, 42, N'110', N'Disbursement', N'- 1', CAST(0x0000A1F20133A98E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (387, 5, N'56', N'Disbursement', N'- 1', CAST(0x0000A1F20133BC38 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (388, 26, N'201', N'Disbursement', N'- 5', CAST(0x0000A1F20133BC41 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (389, 18, N'123', N'Disbursement', N'- 3', CAST(0x0000A1F20133BC4A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (390, 22, N'100', N'Disbursement', N'- 1', CAST(0x0000A1F20133BC54 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (391, 40, N'53', N'Disbursement', N'- 2', CAST(0x0000A1F20133BC5D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (392, 3, N'289', N'Disbursement', N'- 3', CAST(0x0000A1F20133BC66 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (393, 19, N'126', N'Disbursement', N'- 3', CAST(0x0000A1F20133BC6F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (394, 2, N'464', N'Disbursement', N'- 3', CAST(0x0000A1F20133BC77 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (395, 21, N'124', N'Disbursement', N'- 3', CAST(0x0000A1F20133BC80 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (396, 17, N'102', N'Disbursement', N'- 4', CAST(0x0000A1F20133BC89 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (397, 32, N'292', N'Disbursement', N'- 1', CAST(0x0000A1F20133BC92 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (398, 8, N'1792', N'Disbursement', N'- 4', CAST(0x0000A1F20133BC9B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (399, 74, N'105', N'Disbursement', N'- 2', CAST(0x0000A1F20133BCA4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (400, 88, N'593', N'Disbursement', N'- 1', CAST(0x0000A1F20133BCB5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (401, 68, N'60', N'Disbursement', N'- 3', CAST(0x0000A1F20133BCBE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (402, 14, N'996', N'Disbursement', N'- 3', CAST(0x0000A1F20133BCC7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (403, 41, N'122', N'Disbursement', N'- 3', CAST(0x0000A1F20133BCD0 AS DateTime))
GO
print 'Processed 400 total records'
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (404, 38, N'59', N'Disbursement', N'- 1', CAST(0x0000A1F20133C737 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (405, 17, N'100', N'Disbursement', N'- 2', CAST(0x0000A1F20133C741 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (406, 7, N'1387', N'Disbursement', N'- 2', CAST(0x0000A1F20133C758 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (407, 76, N'718', N'Disbursement', N'- 1', CAST(0x0000A1F20133C761 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (408, 14, N'993', N'Disbursement', N'- 3', CAST(0x0000A1F20133C76A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (409, 12, N'607', N'Disbursement', N'- 1', CAST(0x0000A1F20133C772 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (410, 23, N'249', N'Disbursement', N'- 2', CAST(0x0000A1F20133C77B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (411, 75, N'173', N'Disbursement', N'- 2', CAST(0x0000A1F20133C784 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (412, 68, N'57', N'Disbursement', N'- 3', CAST(0x0000A1F20133C78C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (413, 41, N'120', N'Disbursement', N'- 2', CAST(0x0000A1F20133C795 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (414, 44, N'116', N'Disbursement', N'- 2', CAST(0x0000A1F20133C79E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (415, 19, N'121', N'Disbursement', N'- 5', CAST(0x0000A1F20133C7A7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (416, 46, N'166', N'Disbursement', N'- 2', CAST(0x0000A1F20133C7B1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (417, 67, N'58', N'Disbursement', N'- 1', CAST(0x0000A1F20133C7BA AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (418, 43, N'114', N'Disbursement', N'- 1', CAST(0x0000A1F20133C7C2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (419, 11, N'686', N'Disbursement', N'- 1', CAST(0x0000A1F20133C7CC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (420, 48, N'501', N'Disbursement', N'- 2', CAST(0x0000A1F20133C7D5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (421, 18, N'122', N'Disbursement', N'- 1', CAST(0x0000A1F20133D231 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (422, 3, N'288', N'Disbursement', N'- 1', CAST(0x0000A1F20133D23F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (423, 20, N'100', N'Disbursement', N'- 8', CAST(0x0000A1F20133D24D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (424, 47, N'111', N'Disbursement', N'- 5', CAST(0x0000A1F20133D25C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (425, 13, N'993', N'Disbursement', N'- 3', CAST(0x0000A1F20133D26A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (426, 73, N'108', N'Disbursement', N'- 1', CAST(0x0000A1F20133D276 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (427, 8, N'1789', N'Disbursement', N'- 3', CAST(0x0000A1F20133D284 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (428, 75, N'171', N'Disbursement', N'- 2', CAST(0x0000A1F20133D291 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (429, 39, N'51', N'Disbursement', N'- 2', CAST(0x0000A1F20133D29E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (430, 17, N'99', N'Disbursement', N'- 1', CAST(0x0000A1F20133D2AC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (431, 79, N'87', N'Disbursement', N'- 1', CAST(0x0000A1F20133D2B9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (432, 23, N'242', N'Disbursement', N'- 7', CAST(0x0000A1F20133D2C7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (433, 10, N'605', N'Disbursement', N'- 1', CAST(0x0000A1F20133D2D5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (434, 77, N'117', N'Disbursement', N'- 1', CAST(0x0000A1F20133D2E3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (435, 42, N'108', N'Disbursement', N'- 2', CAST(0x0000A1F20133D2F0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (436, 38, N'57', N'Disbursement', N'- 2', CAST(0x0000A1F20133DDBC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (437, 6, N'195', N'Disbursement', N'- 2', CAST(0x0000A1F20133DDC5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (438, 5, N'55', N'Disbursement', N'- 1', CAST(0x0000A1F20133DDCF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (439, 21, N'120', N'Disbursement', N'- 4', CAST(0x0000A1F20133DDD9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (440, 22, N'99', N'Disbursement', N'- 1', CAST(0x0000A1F20133DDE3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (441, 11, N'677', N'Disbursement', N'- 9', CAST(0x0000A1F20133DDEC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (442, 77, N'113', N'Disbursement', N'- 4', CAST(0x0000A1F20133DDF6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (443, 18, N'116', N'Disbursement', N'- 6', CAST(0x0000A1F20133DDFF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (444, 67, N'55', N'Disbursement', N'- 3', CAST(0x0000A1F20133DE0A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (445, 8, N'1786', N'Disbursement', N'- 3', CAST(0x0000A1F20133DE13 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (446, 76, N'715', N'Disbursement', N'- 3', CAST(0x0000A1F20133DE1C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (447, 78, N'74', N'Disbursement', N'- 3', CAST(0x0000A1F20133DE24 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (448, 43, N'111', N'Disbursement', N'- 3', CAST(0x0000A1F20133DE2E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (449, 7, N'1382', N'Disbursement', N'- 5', CAST(0x0000A1F20133DE36 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (450, 75, N'169', N'Disbursement', N'- 2', CAST(0x0000A1F20133DE40 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (451, 63, N'126', N'Disbursement', N'- 2', CAST(0x0000A1F20133DE48 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (452, 3, N'285', N'Disbursement', N'- 3', CAST(0x0000A1F20133DE52 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (453, 2, N'462', N'Disbursement', N'- 2', CAST(0x0000A1F20133DE5B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (454, 17, N'97', N'Disbursement', N'- 2', CAST(0x0000A1F20133DE64 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (455, 13, N'989', N'Disbursement', N'- 4', CAST(0x0000A1F20133DE6D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (456, 19, N'119', N'Disbursement', N'- 2', CAST(0x0000A1F20133DE77 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (457, 56, N'118', N'Disbursement', N'- 1', CAST(0x0000A1F20133DE7F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (458, 74, N'104', N'Disbursement', N'- 1', CAST(0x0000A1F20133DE89 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (459, 40, N'51', N'Disbursement', N'- 2', CAST(0x0000A1F20133DE91 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (460, 4, N'763', N'Disbursement', N'- 1', CAST(0x0000A1F20133DE9A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (461, 15, N'77', N'Disbursement', N'- 2', CAST(0x0000A1F20133DEA3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (462, 16, N'57', N'Disbursement', N'- 2', CAST(0x0000A1F20133DEAC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (463, 28, N'218', N'Disbursement', N'- 1', CAST(0x0000A1F20133DEB5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (464, 20, N'94', N'Disbursement', N'- 6', CAST(0x0000A1F20133DECB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (465, 38, N'55', N'Disbursement', N'- 2', CAST(0x0000A1F20133F4BB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (466, 6, N'193', N'Disbursement', N'- 2', CAST(0x0000A1F20133F4C9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (467, 5, N'54', N'Disbursement', N'- 1', CAST(0x0000A1F20133F4D7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (468, 5, N'50', N'Disbursement', N'- 4', CAST(0x0000A1F20133FE5B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (469, 25, N'291', N'Disbursement', N'- 9', CAST(0x0000A1F20133FE65 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (470, 6, N'193', N'Disbursement', N'- 0', CAST(0x0000A1F20133FE6F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (471, 71, N'60', N'Disbursement', N'- 0', CAST(0x0000A1F20133FE79 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (472, 32, N'292', N'Disbursement', N'- 0', CAST(0x0000A1F20133FE83 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (473, 38, N'55', N'Disbursement', N'- 0', CAST(0x0000A1F20133FE8C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (474, 1, N'157', N'Disbursement', N'- 1', CAST(0x0000A1F20133FE94 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (475, 15, N'70', N'Disbursement', N'- 7', CAST(0x0000A1F20133FE9D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (476, 77, N'110', N'Disbursement', N'- 3', CAST(0x0000A1F20133FEA7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (477, 24, N'102', N'Disbursement', N'- 1', CAST(0x0000A1F20133FEB0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (478, 42, N'107', N'Disbursement', N'- 1', CAST(0x0000A1F20133FEB9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (479, 35, N'118', N'Disbursement', N'- 1', CAST(0x0000A1F20133FEC2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (480, 30, N'316', N'Disbursement', N'- 1', CAST(0x0000A1F20133FECC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (481, 39, N'50', N'Disbursement', N'- 1', CAST(0x0000A1F20133FED5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (482, 43, N'110', N'Disbursement', N'- 1', CAST(0x0000A1F20133FEDD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (483, 48, N'500', N'Disbursement', N'- 1', CAST(0x0000A1F20133FEE6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (484, 88, N'592', N'Disbursement', N'- 1', CAST(0x0000A1F20133FEEF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (485, 68, N'54', N'Disbursement', N'- 3', CAST(0x0000A1F20133FEF8 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (486, 45, N'258', N'Disbursement', N'- 1', CAST(0x0000A1F20133FF01 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (487, 82, N'11', N'Disbursement', N'- 4', CAST(0x0000A1F20133FF0A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (488, 54, N'128', N'Disbursement', N'- 1', CAST(0x0000A1F20133FF13 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (489, 65, N'114', N'Disbursement', N'- 3', CAST(0x0000A1F20133FF1C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (490, 19, N'118', N'Disbursement', N'- 1', CAST(0x0000A1F20133FF25 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (491, 81, N'26', N'Disbursement', N'- 2', CAST(0x0000A1F20133FF2F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (492, 75, N'166', N'Disbursement', N'- 3', CAST(0x0000A1F20133FF38 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (493, 64, N'124', N'Disbursement', N'- 2', CAST(0x0000A1F20133FF41 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (494, 10, N'600', N'Disbursement', N'- 5', CAST(0x0000A1F20133FF4A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (495, 9, N'608', N'Disbursement', N'- 1', CAST(0x0000A1F20133FF53 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (496, 29, N'229', N'Disbursement', N'- 3', CAST(0x0000A1F20133FF5C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (497, 5, N'80', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F201344F6F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (498, 5, N'110', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F201344F74 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (499, 10, N'1000', N'Supplier - ALPHA Office Suppliers', N'+400', CAST(0x0000A1F201344F7A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (500, 5, N'140', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F201344F7F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (501, 17, N'147', N'Supplier - BANES Shop ', N'+50', CAST(0x0000A1F201344F86 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (502, 5, N'170', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F201344F8C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (503, 20, N'144', N'Supplier - ALPHA Office Suppliers', N'+50', CAST(0x0000A1F201344F92 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (504, 5, N'200', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F201344F96 AS DateTime))
GO
print 'Processed 500 total records'
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (505, 5, N'230', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F201344F9A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (506, 22, N'149', N'Supplier - ALPHA Office Suppliers', N'+50', CAST(0x0000A1F201344F9E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (507, 5, N'260', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F2013453A6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (508, 39, N'70', N'Supplier - Cheap Stationer', N'+20', CAST(0x0000A1F2013453AE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (509, 5, N'290', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F2013453B6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (510, 48, N'1000', N'Supplier - Cheap Stationer', N'+500', CAST(0x0000A1F2013453BE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (511, 5, N'320', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F2013453C7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (512, 5, N'350', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F2013453CE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (513, 5, N'380', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F2013453D7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (514, 10, N'1400', N'Supplier - ALPHA Office Suppliers', N'+400', CAST(0x0000A1F201345867 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (515, 5, N'0', N'Disbursement', N'- 380', CAST(0x0000A1F201348892 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (516, 25, N'51', N'Disbursement', N'- 240', CAST(0x0000A1F2013488A1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (517, 6, N'110', N'Disbursement', N'- 83', CAST(0x0000A1F2013488AF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (518, 71, N'0', N'Disbursement', N'- 60', CAST(0x0000A1F2013488BD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (519, 32, N'0', N'Disbursement', N'- 292', CAST(0x0000A1F2013488CE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (520, 38, N'0', N'Disbursement', N'- 55', CAST(0x0000A1F2013488DB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (521, 25, N'49', N'Disbursement', N'- 2', CAST(0x0000A1F20134BDD2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (522, 61, N'128', N'Disbursement', N'- 1', CAST(0x0000A1F20134BDE1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (523, 36, N'124', N'Disbursement', N'- 3', CAST(0x0000A1F20134BDF0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (524, 13, N'987', N'Disbursement', N'- 2', CAST(0x0000A1F20134BDFF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (525, 4, N'762', N'Disbursement', N'- 1', CAST(0x0000A1F20134BE0D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (526, 88, N'588', N'Disbursement', N'- 4', CAST(0x0000A1F20134BE1C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (527, 28, N'216', N'Disbursement', N'- 2', CAST(0x0000A1F20134BE2A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (528, 34, N'146', N'Disbursement', N'- 2', CAST(0x0000A1F20134BE38 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (529, 7, N'1381', N'Disbursement', N'- 1', CAST(0x0000A1F20134BE46 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (530, 62, N'123', N'Disbursement', N'- 3', CAST(0x0000A1F20134BE55 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (531, 58, N'106', N'Disbursement', N'- 2', CAST(0x0000A1F20134BE63 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (532, 17, N'146', N'Disbursement', N'- 1', CAST(0x0000A1F20134BE71 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (533, 51, N'106', N'Disbursement', N'- 2', CAST(0x0000A1F20134BE80 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (534, 30, N'314', N'Disbursement', N'- 2', CAST(0x0000A1F20134BE8E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (535, 24, N'101', N'Disbursement', N'- 1', CAST(0x0000A1F20134BE9C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (536, 48, N'1500', N'Supplier - Cheap Stationer', N'+500', CAST(0x0000A1F20134C7EC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (537, 5, N'30', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F20134C7F4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (538, 25, N'149', N'Supplier - BANES Shop ', N'+100', CAST(0x0000A1F20134C7FC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (539, 32, N'150', N'Supplier - ALPHA Office Suppliers', N'+150', CAST(0x0000A1F20134C804 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (540, 38, N'20', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1F20134C80C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (541, 71, N'20', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1F20134C814 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (542, 5, N'60', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F20134F861 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (543, 25, N'249', N'Supplier - BANES Shop ', N'+100', CAST(0x0000A1F20134F86A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (544, 5, N'90', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F20134F872 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (545, 5, N'120', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F20134F878 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (546, 71, N'40', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1F20134F87E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (547, 5, N'150', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F20134F8AC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (548, 5, N'180', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F20134F8B5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (549, 38, N'40', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1F20134F8BB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (550, 5, N'210', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F20134F8C2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (551, 32, N'300', N'Supplier - ALPHA Office Suppliers', N'+150', CAST(0x0000A1F20134F8C9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (552, 5, N'240', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F20134FDC2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (553, 5, N'270', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F20134FDCA AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (554, 5, N'300', N'Supplier - ALPHA Office Suppliers', N'+30', CAST(0x0000A1F20134FDD3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (555, 38, N'60', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1F2013511D5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (556, 71, N'60', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1F2013511DD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (557, 5, N'300', N'Disbursement', N'- 0', CAST(0x0000A1F2013524EF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (558, 6, N'110', N'Disbursement', N'- 0', CAST(0x0000A1F2013524FB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (559, 5, N'298', N'Disbursement', N'- 2', CAST(0x0000A1F201352F35 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (560, 6, N'109', N'Disbursement', N'- 1', CAST(0x0000A1F201352F42 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (561, 5, N'297', N'Disbursement', N'- 1', CAST(0x0000A1F201353F7C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (562, 5, N'0', N'Disbursement', N'- 297', CAST(0x0000A1F201355502 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (563, 71, N'0', N'Disbursement', N'- 60', CAST(0x0000A1F201355529 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (564, 32, N'276', N'Disbursement', N'- 24', CAST(0x0000A1F20135553F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (565, 38, N'0', N'Disbursement', N'- 60', CAST(0x0000A1F201355554 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (566, 5, N'100', N'Supplier - ALPHA Office Suppliers', N'+100', CAST(0x0000A1F201359914 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (567, 5, N'200', N'Supplier - ALPHA Office Suppliers', N'+100', CAST(0x0000A1F20135991B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (568, 5, N'300', N'Supplier - ALPHA Office Suppliers', N'+100', CAST(0x0000A1F201359921 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (569, 5, N'400', N'Supplier - ALPHA Office Suppliers', N'+100', CAST(0x0000A1F201359926 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (570, 5, N'500', N'Supplier - ALPHA Office Suppliers', N'+100', CAST(0x0000A1F20135992E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (571, 5, N'600', N'Supplier - ALPHA Office Suppliers', N'+100', CAST(0x0000A1F201359934 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (572, 38, N'20', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1F20135993A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (573, 38, N'40', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1F20135993F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (574, 38, N'60', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1F201359945 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (575, 38, N'80', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1F20135994A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (576, 71, N'20', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1F201359C2A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (577, 71, N'40', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1F201359C30 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (578, 71, N'60', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A1F201359C36 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (579, 84, N'499', N'Disbursement', N'- 2', CAST(0x0000A1F20136DCBA AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (580, 67, N'52', N'Disbursement', N'- 3', CAST(0x0000A1F20136DCCE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (581, 75, N'164', N'Disbursement', N'- 2', CAST(0x0000A1F20136DCDE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (582, 40, N'47', N'Disbursement', N'- 4', CAST(0x0000A1F20136DCED AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (583, 77, N'109', N'Disbursement', N'- 1', CAST(0x0000A1F20136DCFC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (584, 10, N'1399', N'Disbursement', N'- 1', CAST(0x0000A1F20136DD0B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (585, 4, N'761', N'Disbursement', N'- 1', CAST(0x0000A1F20136DD19 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (586, 20, N'142', N'Disbursement', N'- 2', CAST(0x0000A1F20136DD2D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (587, 5, N'599', N'Disbursement', N'- 1', CAST(0x0000A1F20136DD36 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (588, 6, N'108', N'Disbursement', N'- 1', CAST(0x0000A1F20136DD3E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (589, 26, N'200', N'Disbursement', N'- 1', CAST(0x0000A1F20136DD47 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (590, 17, N'143', N'Disbursement', N'- 3', CAST(0x0000A1F20136DD50 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (591, 32, N'275', N'Disbursement', N'- 1', CAST(0x0000A1F20136DD59 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (592, 1, N'155', N'Disbursement', N'- 2', CAST(0x0000A1F20136DD62 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (593, 60, N'114', N'Disbursement', N'- 2', CAST(0x0000A1F20136DD6C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (594, 19, N'116', N'Disbursement', N'- 2', CAST(0x0000A1F20136DD76 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (595, 42, N'105', N'Disbursement', N'- 2', CAST(0x0000A1F20136DD7F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (596, 26, N'196', N'Disbursement', N'- 4', CAST(0x0000A1F20136E5B6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (597, 18, N'114', N'Disbursement', N'- 2', CAST(0x0000A1F20136E5C6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (598, 22, N'148', N'Disbursement', N'- 1', CAST(0x0000A1F20136E5D4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (599, 40, N'46', N'Disbursement', N'- 1', CAST(0x0000A1F20136E5E3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (600, 3, N'284', N'Disbursement', N'- 1', CAST(0x0000A1F20136E5F1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (601, 5, N'597', N'Disbursement', N'- 2', CAST(0x0000A1F20136E602 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (602, 19, N'115', N'Disbursement', N'- 1', CAST(0x0000A1F20136E621 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (603, 2, N'461', N'Disbursement', N'- 1', CAST(0x0000A1F20136E637 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (604, 21, N'118', N'Disbursement', N'- 2', CAST(0x0000A1F20136E64D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (605, 17, N'141', N'Disbursement', N'- 2', CAST(0x0000A1F20136E662 AS DateTime))
GO
print 'Processed 600 total records'
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (606, 32, N'274', N'Disbursement', N'- 1', CAST(0x0000A1F20136E678 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (607, 8, N'1783', N'Disbursement', N'- 3', CAST(0x0000A1F20136E68D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (608, 74, N'103', N'Disbursement', N'- 1', CAST(0x0000A1F20136E6A3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (609, 88, N'586', N'Disbursement', N'- 2', CAST(0x0000A1F20136E6B9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (610, 68, N'53', N'Disbursement', N'- 1', CAST(0x0000A1F20136E6CE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (611, 14, N'992', N'Disbursement', N'- 1', CAST(0x0000A1F20136E6E4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (612, 41, N'118', N'Disbursement', N'- 2', CAST(0x0000A1F20136E6F1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (613, 38, N'79', N'Disbursement', N'- 1', CAST(0x0000A1F20136F480 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (614, 17, N'140', N'Disbursement', N'- 1', CAST(0x0000A1F20136F48B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (615, 7, N'1380', N'Disbursement', N'- 1', CAST(0x0000A1F20136F494 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (616, 76, N'714', N'Disbursement', N'- 1', CAST(0x0000A1F20136F49D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (617, 14, N'991', N'Disbursement', N'- 1', CAST(0x0000A1F20136F4A6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (618, 12, N'606', N'Disbursement', N'- 1', CAST(0x0000A1F20136F4AF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (619, 23, N'240', N'Disbursement', N'- 2', CAST(0x0000A1F20136F4B7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (620, 75, N'162', N'Disbursement', N'- 2', CAST(0x0000A1F20136F4C0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (621, 68, N'52', N'Disbursement', N'- 1', CAST(0x0000A1F20136F4C8 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (622, 41, N'115', N'Disbursement', N'- 3', CAST(0x0000A1F20136F4D0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (623, 44, N'114', N'Disbursement', N'- 2', CAST(0x0000A1F20136F4D9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (624, 19, N'111', N'Disbursement', N'- 4', CAST(0x0000A1F20136F4E2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (625, 46, N'165', N'Disbursement', N'- 1', CAST(0x0000A1F20136F4EB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (626, 67, N'51', N'Disbursement', N'- 1', CAST(0x0000A1F20136F4F3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (627, 43, N'108', N'Disbursement', N'- 2', CAST(0x0000A1F20136F4FC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (628, 11, N'675', N'Disbursement', N'- 2', CAST(0x0000A1F20136F504 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (629, 48, N'1498', N'Disbursement', N'- 2', CAST(0x0000A1F20136F50D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (630, 18, N'112', N'Disbursement', N'- 2', CAST(0x0000A1F201370109 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (631, 3, N'282', N'Disbursement', N'- 2', CAST(0x0000A1F201370112 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (632, 20, N'137', N'Disbursement', N'- 5', CAST(0x0000A1F20137011C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (633, 47, N'107', N'Disbursement', N'- 4', CAST(0x0000A1F201370126 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (634, 13, N'985', N'Disbursement', N'- 2', CAST(0x0000A1F201370130 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (635, 73, N'106', N'Disbursement', N'- 2', CAST(0x0000A1F201370139 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (636, 8, N'1782', N'Disbursement', N'- 1', CAST(0x0000A1F201370142 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (637, 75, N'160', N'Disbursement', N'- 2', CAST(0x0000A1F20137014A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (638, 39, N'68', N'Disbursement', N'- 2', CAST(0x0000A1F201370153 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (639, 17, N'139', N'Disbursement', N'- 1', CAST(0x0000A1F20137015B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (640, 79, N'86', N'Disbursement', N'- 1', CAST(0x0000A1F201370163 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (641, 23, N'237', N'Disbursement', N'- 3', CAST(0x0000A1F20137016C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (642, 10, N'1397', N'Disbursement', N'- 2', CAST(0x0000A1F201370175 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (643, 77, N'108', N'Disbursement', N'- 1', CAST(0x0000A1F20137017D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (644, 42, N'103', N'Disbursement', N'- 2', CAST(0x0000A1F201370186 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (645, 21, N'116', N'Disbursement', N'- 2', CAST(0x0000A1F201370A5C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (646, 22, N'147', N'Disbursement', N'- 1', CAST(0x0000A1F201370A66 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (647, 11, N'670', N'Disbursement', N'- 5', CAST(0x0000A1F201370A70 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (648, 77, N'104', N'Disbursement', N'- 4', CAST(0x0000A1F201370A7A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (649, 18, N'106', N'Disbursement', N'- 6', CAST(0x0000A1F201370A84 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (650, 67, N'48', N'Disbursement', N'- 3', CAST(0x0000A1F201370A8E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (651, 8, N'1780', N'Disbursement', N'- 2', CAST(0x0000A1F201370A97 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (652, 76, N'713', N'Disbursement', N'- 1', CAST(0x0000A1F201370AA0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (653, 78, N'70', N'Disbursement', N'- 4', CAST(0x0000A1F201370AA8 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (654, 43, N'106', N'Disbursement', N'- 2', CAST(0x0000A1F201370AB1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (655, 7, N'1377', N'Disbursement', N'- 3', CAST(0x0000A1F201370ABA AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (656, 75, N'158', N'Disbursement', N'- 2', CAST(0x0000A1F201370AC3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (657, 63, N'125', N'Disbursement', N'- 1', CAST(0x0000A1F201370ACC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (658, 3, N'278', N'Disbursement', N'- 4', CAST(0x0000A1F201370AD7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (659, 2, N'459', N'Disbursement', N'- 2', CAST(0x0000A1F201370AE0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (660, 17, N'137', N'Disbursement', N'- 2', CAST(0x0000A1F201370AE8 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (661, 13, N'982', N'Disbursement', N'- 3', CAST(0x0000A1F201370AF2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (662, 19, N'109', N'Disbursement', N'- 2', CAST(0x0000A1F201370AFB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (663, 56, N'116', N'Disbursement', N'- 2', CAST(0x0000A1F201370B03 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (664, 38, N'77', N'Disbursement', N'- 2', CAST(0x0000A1F201370B0D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (665, 74, N'101', N'Disbursement', N'- 2', CAST(0x0000A1F201370B15 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (666, 40, N'44', N'Disbursement', N'- 2', CAST(0x0000A1F201370B1E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (667, 6, N'107', N'Disbursement', N'- 1', CAST(0x0000A1F201370B27 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (668, 4, N'760', N'Disbursement', N'- 1', CAST(0x0000A1F201370B30 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (669, 15, N'68', N'Disbursement', N'- 2', CAST(0x0000A1F201370B39 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (670, 16, N'55', N'Disbursement', N'- 2', CAST(0x0000A1F201370B42 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (671, 5, N'595', N'Disbursement', N'- 2', CAST(0x0000A1F201370B4B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (672, 28, N'215', N'Disbursement', N'- 1', CAST(0x0000A1F201370B54 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (673, 20, N'134', N'Disbursement', N'- 3', CAST(0x0000A1F201370B5C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (674, 5, N'593', N'Disbursement', N'- 2', CAST(0x0000A1F201371447 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (675, 71, N'60', N'Disbursement', N'- 0', CAST(0x0000A1F201371451 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (676, 38, N'77', N'Disbursement', N'- 0', CAST(0x0000A1F20137145A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (677, 24, N'100', N'Disbursement', N'- 1', CAST(0x0000A1F201371464 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (678, 42, N'101', N'Disbursement', N'- 2', CAST(0x0000A1F20137146D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (679, 77, N'103', N'Disbursement', N'- 1', CAST(0x0000A1F201371477 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (680, 35, N'117', N'Disbursement', N'- 1', CAST(0x0000A1F201371480 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (681, 30, N'312', N'Disbursement', N'- 2', CAST(0x0000A1F201371488 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (682, 39, N'66', N'Disbursement', N'- 2', CAST(0x0000A1F201371491 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (683, 25, N'243', N'Disbursement', N'- 6', CAST(0x0000A1F20137149A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (684, 43, N'104', N'Disbursement', N'- 2', CAST(0x0000A1F2013714A3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (685, 48, N'1496', N'Disbursement', N'- 2', CAST(0x0000A1F2013714AC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (686, 88, N'585', N'Disbursement', N'- 1', CAST(0x0000A1F2013714B4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (687, 68, N'50', N'Disbursement', N'- 2', CAST(0x0000A1F2013714BD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (688, 45, N'256', N'Disbursement', N'- 2', CAST(0x0000A1F2013714C5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (689, 82, N'10', N'Disbursement', N'- 1', CAST(0x0000A1F2013714CD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (690, 54, N'126', N'Disbursement', N'- 2', CAST(0x0000A1F2013714D6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (691, 65, N'113', N'Disbursement', N'- 1', CAST(0x0000A1F2013714DF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (692, 19, N'107', N'Disbursement', N'- 2', CAST(0x0000A1F2013714E8 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (693, 81, N'25', N'Disbursement', N'- 1', CAST(0x0000A1F2013714F1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (694, 75, N'156', N'Disbursement', N'- 2', CAST(0x0000A1F2013714FB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (695, 15, N'66', N'Disbursement', N'- 2', CAST(0x0000A1F201371504 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (696, 64, N'123', N'Disbursement', N'- 1', CAST(0x0000A1F20137150D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (697, 10, N'1396', N'Disbursement', N'- 1', CAST(0x0000A1F201371516 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (698, 9, N'607', N'Disbursement', N'- 1', CAST(0x0000A1F20137151F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (699, 29, N'227', N'Disbursement', N'- 2', CAST(0x0000A1F201371528 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (700, 25, N'241', N'Disbursement', N'- 2', CAST(0x0000A1F201372445 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (701, 61, N'126', N'Disbursement', N'- 2', CAST(0x0000A1F201372451 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (702, 36, N'123', N'Disbursement', N'- 1', CAST(0x0000A1F20137245B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (703, 13, N'980', N'Disbursement', N'- 2', CAST(0x0000A1F201372464 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (704, 4, N'759', N'Disbursement', N'- 1', CAST(0x0000A1F20137246D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (705, 88, N'584', N'Disbursement', N'- 1', CAST(0x0000A1F201372476 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (706, 28, N'214', N'Disbursement', N'- 1', CAST(0x0000A1F20137247E AS DateTime))
GO
print 'Processed 700 total records'
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (707, 34, N'145', N'Disbursement', N'- 1', CAST(0x0000A1F201372487 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (708, 7, N'1376', N'Disbursement', N'- 1', CAST(0x0000A1F20137248F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (709, 62, N'121', N'Disbursement', N'- 2', CAST(0x0000A1F2013724BC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (710, 58, N'105', N'Disbursement', N'- 1', CAST(0x0000A1F2013724CF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (711, 17, N'135', N'Disbursement', N'- 2', CAST(0x0000A1F2013724E2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (712, 51, N'105', N'Disbursement', N'- 1', CAST(0x0000A1F2013724F5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (713, 30, N'310', N'Disbursement', N'- 2', CAST(0x0000A1F201372508 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (714, 24, N'99', N'Disbursement', N'- 1', CAST(0x0000A1F20137251B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (715, 84, N'498', N'Disbursement', N'- 1', CAST(0x0000A21C01398CD5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (716, 67, N'45', N'Disbursement', N'- 3', CAST(0x0000A21C01398CE1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (717, 75, N'154', N'Disbursement', N'- 2', CAST(0x0000A21C01398CEB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (718, 40, N'41', N'Disbursement', N'- 3', CAST(0x0000A21C01398CF4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (719, 77, N'102', N'Disbursement', N'- 1', CAST(0x0000A21C01398CFD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (720, 10, N'1395', N'Disbursement', N'- 1', CAST(0x0000A21C01398D05 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (721, 4, N'758', N'Disbursement', N'- 1', CAST(0x0000A21C01398D0E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (722, 20, N'132', N'Disbursement', N'- 2', CAST(0x0000A21C01398D17 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (723, 5, N'592', N'Disbursement', N'- 1', CAST(0x0000A21C01398D28 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (724, 6, N'105', N'Disbursement', N'- 2', CAST(0x0000A21C01398D31 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (725, 26, N'195', N'Disbursement', N'- 1', CAST(0x0000A21C01398D3A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (726, 17, N'131', N'Disbursement', N'- 4', CAST(0x0000A21C01398D43 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (727, 32, N'272', N'Disbursement', N'- 2', CAST(0x0000A21C01398D4C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (728, 1, N'154', N'Disbursement', N'- 1', CAST(0x0000A21C01398D55 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (729, 60, N'113', N'Disbursement', N'- 1', CAST(0x0000A21C01398D5E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (730, 19, N'105', N'Disbursement', N'- 2', CAST(0x0000A21C01398D67 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (731, 42, N'99', N'Disbursement', N'- 2', CAST(0x0000A21C01398D70 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (732, 26, N'192', N'Disbursement', N'- 3', CAST(0x0000A21C0139962C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (733, 18, N'104', N'Disbursement', N'- 2', CAST(0x0000A21C0139963B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (734, 22, N'146', N'Disbursement', N'- 1', CAST(0x0000A21C0139964B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (735, 40, N'40', N'Disbursement', N'- 1', CAST(0x0000A21C0139965A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (736, 3, N'276', N'Disbursement', N'- 2', CAST(0x0000A21C01399668 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (737, 5, N'590', N'Disbursement', N'- 2', CAST(0x0000A21C01399676 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (738, 19, N'104', N'Disbursement', N'- 1', CAST(0x0000A21C01399684 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (739, 2, N'457', N'Disbursement', N'- 2', CAST(0x0000A21C01399693 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (740, 21, N'115', N'Disbursement', N'- 1', CAST(0x0000A21C013996A0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (741, 17, N'128', N'Disbursement', N'- 3', CAST(0x0000A21C013996A8 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (742, 32, N'270', N'Disbursement', N'- 2', CAST(0x0000A21C013996B2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (743, 8, N'1777', N'Disbursement', N'- 3', CAST(0x0000A21C013996BB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (744, 74, N'99', N'Disbursement', N'- 2', CAST(0x0000A21C013996C4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (745, 88, N'583', N'Disbursement', N'- 1', CAST(0x0000A21C013996CD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (746, 68, N'48', N'Disbursement', N'- 2', CAST(0x0000A21C013996D6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (747, 14, N'990', N'Disbursement', N'- 1', CAST(0x0000A21C013996E0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (748, 41, N'114', N'Disbursement', N'- 1', CAST(0x0000A21C013996E9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (749, 38, N'75', N'Disbursement', N'- 2', CAST(0x0000A21C0139A006 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (750, 17, N'127', N'Disbursement', N'- 1', CAST(0x0000A21C0139A019 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (751, 7, N'1374', N'Disbursement', N'- 2', CAST(0x0000A21C0139A027 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (752, 76, N'711', N'Disbursement', N'- 2', CAST(0x0000A21C0139A035 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (753, 14, N'988', N'Disbursement', N'- 2', CAST(0x0000A21C0139A043 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (754, 12, N'605', N'Disbursement', N'- 1', CAST(0x0000A21C0139A051 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (755, 23, N'235', N'Disbursement', N'- 2', CAST(0x0000A21C0139A060 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (756, 75, N'152', N'Disbursement', N'- 2', CAST(0x0000A21C0139A06E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (757, 68, N'46', N'Disbursement', N'- 2', CAST(0x0000A21C0139A07D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (758, 41, N'111', N'Disbursement', N'- 3', CAST(0x0000A21C0139A08B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (759, 44, N'113', N'Disbursement', N'- 1', CAST(0x0000A21C0139A09A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (760, 19, N'99', N'Disbursement', N'- 5', CAST(0x0000A21C0139A0A8 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (761, 46, N'163', N'Disbursement', N'- 2', CAST(0x0000A21C0139A0B7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (762, 67, N'44', N'Disbursement', N'- 1', CAST(0x0000A21C0139A0C6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (763, 43, N'103', N'Disbursement', N'- 1', CAST(0x0000A21C0139A0D4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (764, 11, N'668', N'Disbursement', N'- 2', CAST(0x0000A21C0139A0E2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (765, 48, N'1494', N'Disbursement', N'- 2', CAST(0x0000A21C0139A0F0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (766, 18, N'102', N'Disbursement', N'- 2', CAST(0x0000A21C0139A9F9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (767, 3, N'275', N'Disbursement', N'- 1', CAST(0x0000A21C0139AA04 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (768, 20, N'127', N'Disbursement', N'- 5', CAST(0x0000A21C0139AA0E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (769, 47, N'104', N'Disbursement', N'- 3', CAST(0x0000A21C0139AA18 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (770, 13, N'978', N'Disbursement', N'- 2', CAST(0x0000A21C0139AA21 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (771, 73, N'104', N'Disbursement', N'- 2', CAST(0x0000A21C0139AA2B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (772, 8, N'1775', N'Disbursement', N'- 2', CAST(0x0000A21C0139AA34 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (773, 75, N'151', N'Disbursement', N'- 1', CAST(0x0000A21C0139AA3D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (774, 39, N'64', N'Disbursement', N'- 2', CAST(0x0000A21C0139AA46 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (775, 17, N'126', N'Disbursement', N'- 1', CAST(0x0000A21C0139AA4F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (776, 79, N'85', N'Disbursement', N'- 1', CAST(0x0000A21C0139AA58 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (777, 23, N'231', N'Disbursement', N'- 4', CAST(0x0000A21C0139AA61 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (778, 10, N'1394', N'Disbursement', N'- 1', CAST(0x0000A21C0139AA6B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (779, 77, N'101', N'Disbursement', N'- 1', CAST(0x0000A21C0139AA74 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (780, 42, N'98', N'Disbursement', N'- 1', CAST(0x0000A21C0139AA7D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (781, 20, N'123', N'Disbursement', N'- 4', CAST(0x0000A21C0139B30E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (782, 13, N'976', N'Disbursement', N'- 2', CAST(0x0000A21C0139B31D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (783, 21, N'113', N'Disbursement', N'- 2', CAST(0x0000A21C0139B32C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (784, 22, N'145', N'Disbursement', N'- 1', CAST(0x0000A21C0139B33A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (785, 11, N'666', N'Disbursement', N'- 2', CAST(0x0000A21C0139B347 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (786, 77, N'100', N'Disbursement', N'- 1', CAST(0x0000A21C0139B355 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (787, 18, N'101', N'Disbursement', N'- 1', CAST(0x0000A21C0139B362 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (788, 5, N'590', N'Disbursement', N'- 0', CAST(0x0000A21C0139D77D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (789, 71, N'60', N'Disbursement', N'- 0', CAST(0x0000A21C0139D78B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (790, 38, N'75', N'Disbursement', N'- 0', CAST(0x0000A21C0139D798 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (791, 25, N'240', N'Disbursement', N'- 1', CAST(0x0000A21C0139D7A6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (792, 5, N'188', N'Disbursement', N'- 402', CAST(0x0000A21C0139E604 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (793, 71, N'0', N'Disbursement', N'- 60', CAST(0x0000A21C0139E613 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (794, 38, N'0', N'Disbursement', N'- 75', CAST(0x0000A21C0139E621 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (795, 71, N'20', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A21C013AC770 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (796, 19, N'149', N'Supplier - BANES Shop ', N'+50', CAST(0x0000A21C013AC776 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (797, 24, N'149', N'Supplier - ALPHA Office Suppliers', N'+50', CAST(0x0000A21C013AC77A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (798, 26, N'292', N'Supplier - ALPHA Office Suppliers', N'+100', CAST(0x0000A21C013AC77E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (799, 38, N'20', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A21C013AC782 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (800, 38, N'40', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A21C013AC786 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (801, 40, N'60', N'Supplier - BANES Shop ', N'+20', CAST(0x0000A21C013AC78A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (802, 42, N'158', N'Supplier - ALPHA Office Suppliers', N'+60', CAST(0x0000A21C013AC78E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (803, 67, N'64', N'Supplier - OMEGA Stationery Supplier', N'+20', CAST(0x0000A21C013AC792 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (804, 68, N'66', N'Supplier - Cheap Stationer', N'+20', CAST(0x0000A21C013AC796 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (805, 71, N'40', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A21C013ACAA5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (806, 42, N'218', N'Supplier - ALPHA Office Suppliers', N'+60', CAST(0x0000A21C013ACAAA AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (807, 67, N'84', N'Supplier - OMEGA Stationery Supplier', N'+20', CAST(0x0000A21C013ACAB0 AS DateTime))
GO
print 'Processed 800 total records'
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (808, 71, N'60', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A21C013ACAB6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (809, 74, N'179', N'Supplier - ALPHA Office Suppliers', N'+80', CAST(0x0000A21C013ACABB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (810, 82, N'20', N'Supplier - BANES Shop ', N'+10', CAST(0x0000A21C013ACAC0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (811, 84, N'898', N'Supplier - Cheap Stationer', N'+400', CAST(0x0000A21C013ACAC6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (812, 71, N'0', N'Disbursement', N'- 60', CAST(0x0000A21C013ADF10 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (813, 38, N'0', N'Disbursement', N'- 40', CAST(0x0000A21C013ADF1A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (814, 82, N'19', N'Disbursement', N'- 1', CAST(0x0000A21C013ADF24 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (815, 54, N'124', N'Disbursement', N'- 2', CAST(0x0000A21C013ADF2E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (816, 65, N'111', N'Disbursement', N'- 2', CAST(0x0000A21C013ADF37 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (817, 19, N'148', N'Disbursement', N'- 1', CAST(0x0000A21C013ADF3F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (818, 81, N'24', N'Disbursement', N'- 1', CAST(0x0000A21C013ADF49 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (819, 75, N'149', N'Disbursement', N'- 2', CAST(0x0000A21C013ADF52 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (820, 15, N'65', N'Disbursement', N'- 1', CAST(0x0000A21C013ADF5C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (821, 64, N'122', N'Disbursement', N'- 1', CAST(0x0000A21C013ADF69 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (822, 10, N'1393', N'Disbursement', N'- 1', CAST(0x0000A21C013ADF72 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (823, 9, N'605', N'Disbursement', N'- 2', CAST(0x0000A21C013ADF7B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (824, 25, N'238', N'Disbursement', N'- 2', CAST(0x0000A21C013AF12B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (825, 61, N'125', N'Disbursement', N'- 1', CAST(0x0000A21C013AF13B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (826, 36, N'121', N'Disbursement', N'- 2', CAST(0x0000A21C013AF14A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (827, 13, N'975', N'Disbursement', N'- 1', CAST(0x0000A21C013AF158 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (828, 4, N'756', N'Disbursement', N'- 2', CAST(0x0000A21C013AF165 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (829, 88, N'582', N'Disbursement', N'- 1', CAST(0x0000A21C013AF172 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (830, 28, N'213', N'Disbursement', N'- 1', CAST(0x0000A21C013AF180 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (831, 34, N'143', N'Disbursement', N'- 2', CAST(0x0000A21C013AF18D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (832, 7, N'1373', N'Disbursement', N'- 1', CAST(0x0000A21C013AF19B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (833, 25, N'236', N'Disbursement', N'- 2', CAST(0x0000A21C013B01DF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (834, 38, N'20', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013CDEE8 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (835, 38, N'40', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013CDEF4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (836, 38, N'60', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013CDEFC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (837, 38, N'80', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013CDF05 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (838, 38, N'100', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013CDF0D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (839, 71, N'20', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013CDF15 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (840, 38, N'120', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013CDF1D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (841, 71, N'40', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013CDF26 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (842, 71, N'60', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013CDF2E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (843, 38, N'140', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013CDF37 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (844, 84, N'896', N'Disbursement', N'- 2', CAST(0x0000A231013DEA06 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (845, 67, N'81', N'Disbursement', N'- 3', CAST(0x0000A231013DEA17 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (846, 75, N'148', N'Disbursement', N'- 1', CAST(0x0000A231013DEA25 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (847, 40, N'57', N'Disbursement', N'- 3', CAST(0x0000A231013DEA33 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (848, 77, N'98', N'Disbursement', N'- 2', CAST(0x0000A231013DEA40 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (849, 10, N'1391', N'Disbursement', N'- 2', CAST(0x0000A231013DEA4F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (850, 4, N'754', N'Disbursement', N'- 2', CAST(0x0000A231013DEA5C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (851, 20, N'121', N'Disbursement', N'- 2', CAST(0x0000A231013DEA6A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (852, 5, N'186', N'Disbursement', N'- 2', CAST(0x0000A231013DEA8E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (853, 6, N'104', N'Disbursement', N'- 1', CAST(0x0000A231013DEAA2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (854, 26, N'291', N'Disbursement', N'- 1', CAST(0x0000A231013DEAB5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (855, 17, N'123', N'Disbursement', N'- 3', CAST(0x0000A231013DEAC9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (856, 32, N'269', N'Disbursement', N'- 1', CAST(0x0000A231013DEADC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (857, 1, N'152', N'Disbursement', N'- 2', CAST(0x0000A231013DEAEE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (858, 60, N'111', N'Disbursement', N'- 2', CAST(0x0000A231013DEB02 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (859, 19, N'146', N'Disbursement', N'- 2', CAST(0x0000A231013DEB17 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (860, 42, N'216', N'Disbursement', N'- 2', CAST(0x0000A231013DEB2B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (861, 26, N'288', N'Disbursement', N'- 3', CAST(0x0000A231013E0A78 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (862, 18, N'99', N'Disbursement', N'- 2', CAST(0x0000A231013E0A82 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (863, 22, N'144', N'Disbursement', N'- 1', CAST(0x0000A231013E0A8C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (864, 40, N'55', N'Disbursement', N'- 2', CAST(0x0000A231013E0A96 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (865, 3, N'274', N'Disbursement', N'- 1', CAST(0x0000A231013E0A9F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (866, 5, N'184', N'Disbursement', N'- 2', CAST(0x0000A231013E0AA9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (867, 19, N'145', N'Disbursement', N'- 1', CAST(0x0000A231013E0AB4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (868, 2, N'456', N'Disbursement', N'- 1', CAST(0x0000A231013E0ABE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (869, 21, N'112', N'Disbursement', N'- 1', CAST(0x0000A231013E0AC7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (870, 17, N'121', N'Disbursement', N'- 2', CAST(0x0000A231013E0AD1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (871, 32, N'268', N'Disbursement', N'- 1', CAST(0x0000A231013E0ADB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (872, 8, N'1771', N'Disbursement', N'- 4', CAST(0x0000A231013E0AE4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (873, 74, N'177', N'Disbursement', N'- 2', CAST(0x0000A231013E0AEE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (874, 88, N'580', N'Disbursement', N'- 2', CAST(0x0000A231013E0AF7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (875, 68, N'65', N'Disbursement', N'- 1', CAST(0x0000A231013E0B01 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (876, 14, N'986', N'Disbursement', N'- 2', CAST(0x0000A231013E0B0A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (877, 41, N'109', N'Disbursement', N'- 2', CAST(0x0000A231013E0B13 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (878, 38, N'138', N'Disbursement', N'- 2', CAST(0x0000A231013E14AB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (879, 17, N'119', N'Disbursement', N'- 2', CAST(0x0000A231013E14B4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (880, 7, N'1372', N'Disbursement', N'- 1', CAST(0x0000A231013E14BD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (881, 76, N'710', N'Disbursement', N'- 1', CAST(0x0000A231013E14C5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (882, 14, N'984', N'Disbursement', N'- 2', CAST(0x0000A231013E14CE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (883, 12, N'604', N'Disbursement', N'- 1', CAST(0x0000A231013E14D6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (884, 23, N'230', N'Disbursement', N'- 1', CAST(0x0000A231013E14DE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (885, 75, N'147', N'Disbursement', N'- 1', CAST(0x0000A231013E14E7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (886, 68, N'63', N'Disbursement', N'- 2', CAST(0x0000A231013E14EF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (887, 41, N'105', N'Disbursement', N'- 4', CAST(0x0000A231013E14F7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (888, 44, N'112', N'Disbursement', N'- 1', CAST(0x0000A231013E1500 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (889, 19, N'139', N'Disbursement', N'- 6', CAST(0x0000A231013E1508 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (890, 46, N'162', N'Disbursement', N'- 1', CAST(0x0000A231013E1511 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (891, 67, N'80', N'Disbursement', N'- 1', CAST(0x0000A231013E151A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (892, 43, N'102', N'Disbursement', N'- 1', CAST(0x0000A231013E1522 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (893, 11, N'664', N'Disbursement', N'- 2', CAST(0x0000A231013E152B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (894, 48, N'1493', N'Disbursement', N'- 1', CAST(0x0000A231013E1534 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (895, 18, N'97', N'Disbursement', N'- 2', CAST(0x0000A231013E29BE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (896, 3, N'273', N'Disbursement', N'- 1', CAST(0x0000A231013E29C7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (897, 20, N'118', N'Disbursement', N'- 3', CAST(0x0000A231013E29D0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (898, 47, N'100', N'Disbursement', N'- 4', CAST(0x0000A231013E29D9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (899, 13, N'973', N'Disbursement', N'- 2', CAST(0x0000A231013E29E3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (900, 73, N'103', N'Disbursement', N'- 1', CAST(0x0000A231013E29EB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (901, 8, N'1769', N'Disbursement', N'- 2', CAST(0x0000A231013E29F4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (902, 75, N'146', N'Disbursement', N'- 1', CAST(0x0000A231013E29FD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (903, 39, N'62', N'Disbursement', N'- 2', CAST(0x0000A231013E2A06 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (904, 17, N'117', N'Disbursement', N'- 2', CAST(0x0000A231013E2A0F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (905, 79, N'83', N'Disbursement', N'- 2', CAST(0x0000A231013E2A17 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (906, 23, N'226', N'Disbursement', N'- 4', CAST(0x0000A231013E2A20 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (907, 10, N'1390', N'Disbursement', N'- 1', CAST(0x0000A231013E2A2A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (908, 77, N'96', N'Disbursement', N'- 2', CAST(0x0000A231013E2A32 AS DateTime))
GO
print 'Processed 900 total records'
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (909, 42, N'214', N'Disbursement', N'- 2', CAST(0x0000A231013E2A3B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (910, 20, N'114', N'Disbursement', N'- 4', CAST(0x0000A231013E384A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (911, 13, N'971', N'Disbursement', N'- 2', CAST(0x0000A231013E3858 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (912, 21, N'110', N'Disbursement', N'- 2', CAST(0x0000A231013E3867 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (913, 71, N'0', N'Disbursement', N'- 60', CAST(0x0000A231013E4BD2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (914, 38, N'0', N'Disbursement', N'- 138', CAST(0x0000A231013E4BE0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (915, 25, N'234', N'Disbursement', N'- 2', CAST(0x0000A231013E4BF0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (916, 38, N'20', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013EF0B2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (917, 38, N'40', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013EF0B8 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (918, 38, N'60', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013EF0CA AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (919, 38, N'80', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013EF0D0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (920, 38, N'100', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013EF0D6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (921, 38, N'120', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013EF0DB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (922, 38, N'140', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013EF0E1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (923, 38, N'160', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013EF0E6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (924, 38, N'180', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013EF0EC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (925, 38, N'200', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013EF0F1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (926, 38, N'220', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013EF46A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (927, 38, N'240', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013EF471 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (928, 38, N'260', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013EF477 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (929, 38, N'280', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013EF47C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (930, 71, N'20', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013F21FB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (931, 71, N'40', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A231013F2200 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (932, 71, N'40', N'Disbursement', N'- 0', CAST(0x0000A231013F340A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (933, 38, N'0', N'Disbursement', N'- 280', CAST(0x0000A231013F3416 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (934, 71, N'0', N'Disbursement', N'- 40', CAST(0x0000A1DD015649D5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (935, 38, N'0', N'Disbursement', N'- 0', CAST(0x0000A1DD015649E5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (936, 27, N'227', N'Present from promotion (Supplier BANES Shop )', N'+5', CAST(0x0000A23A0180EA0B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (937, 6, N'102', N'Disbursement', N'- 2', CAST(0x0000A22A0186E8E3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (938, 3, N'265', N'Disbursement', N'- 8', CAST(0x0000A22A0186E8EE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (939, 1, N'149', N'Disbursement', N'- 3', CAST(0x0000A22A0186E8F7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (940, 24, N'132', N'Disbursement', N'- 17', CAST(0x0000A22A0186E900 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (941, 4, N'749', N'Disbursement', N'- 5', CAST(0x0000A22A0186E909 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (942, 17, N'107', N'Disbursement', N'- 10', CAST(0x0000A22A0186E912 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (943, 33, N'189', N'Disbursement', N'- 20', CAST(0x0000A22A0186E919 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (944, 53, N'100', N'Disbursement', N'- 5', CAST(0x0000A22A0186E921 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (945, 15, N'51', N'Disbursement', N'- 14', CAST(0x0000A22A0186E929 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (946, 55, N'390', N'Disbursement', N'- 20', CAST(0x0000A22A0186E931 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (947, 18, N'82', N'Disbursement', N'- 15', CAST(0x0000A22A0186E939 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (948, 6, N'92', N'Disbursement', N'- 10', CAST(0x0000A23B00ED9E3B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (949, 38, N'20', N'Supplier - Cheap Stationer', N'+20', CAST(0x0000A23B0119A915 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (950, 38, N'40', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A23B0119CA69 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (951, 6, N'94', N'present from bane (Supplier BANES Shop )', N'+2', CAST(0x0000A23B011A0738 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (952, 24, N'130', N'Wet', N'-2', CAST(0x0000A23B011A4D61 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (953, 71, N'0', N'Disbursement', N'- 0', CAST(0x0000A23B011C32A3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (954, 38, N'0', N'Disbursement', N'- 40', CAST(0x0000A23B011C32AC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (955, 1, N'147', N'Disbursement', N'- 2', CAST(0x0000A23B011C32B5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (956, 25, N'231', N'Disbursement', N'- 3', CAST(0x0000A23B011C32BE AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (957, 5, N'184', N'Disbursement', N'- 0', CAST(0x0000A23B011C32C7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (958, 6, N'85', N'Disbursement', N'- 9', CAST(0x0000A23B011C32D0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (959, 4, N'748', N'Disbursement', N'- 1', CAST(0x0000A23B011C32D9 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (960, 71, N'20', N'Supplier - ALPHA Office Suppliers', N'+20', CAST(0x0000A23B011C7702 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (961, 71, N'10', N'Disbursement', N'- 10', CAST(0x0000A23B011D2B1A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (962, 38, N'0', N'Disbursement', N'- 0', CAST(0x0000A23B011D2B30 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (963, 5, N'184', N'Disbursement', N'- 0', CAST(0x0000A23B011D2B3D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (964, 5, N'183', N'broke ', N'-1', CAST(0x0000A23B011D8B0A AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (965, 20, N'112', N'Wet due to heavy rain.', N'-2', CAST(0x0000A23B017FE71D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (966, 5, N'181', N'Broken', N'-2', CAST(0x0000A23B018009BD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (967, 27, N'225', N'Broken', N'-2', CAST(0x0000A23B01801BBA AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (968, 50, N'108', N'Missing', N'-2', CAST(0x0000A23B01803229 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (969, 47, N'99', N'Missing', N'-1', CAST(0x0000A23B018042BD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (970, 13, N'968', N'Wet', N'-3', CAST(0x0000A23B018056D5 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (971, 68, N'62', N'Unusable', N'-1', CAST(0x0000A23B018068BA AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (972, 44, N'110', N'Dirty', N'-2', CAST(0x0000A23B01807F40 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (973, 87, N'109', N'Lost', N'-1', CAST(0x0000A23B0180BC33 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (974, 20, N'110', N'Wet Due to Heavy Rain', N'-2', CAST(0x0000A23C009B9DB3 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (975, 37, N'127', N'Disbursement', N'- 2', CAST(0x0000A23C00A7DC5C AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (976, 50, N'105', N'Disbursement', N'- 3', CAST(0x0000A23C00A7DC68 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (977, 23, N'224', N'Disbursement', N'- 2', CAST(0x0000A23C00B68417 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (978, 8, N'1768', N'Wet', N'-1', CAST(0x0000A23C00C9DCDC AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (979, 34, N'142', N'Lost', N'-1', CAST(0x0000A23C00C9EBC7 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (980, 31, N'227', N'Lost', N'-3', CAST(0x0000A23C00CA0489 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (981, 16, N'53', N'Dirty', N'-2', CAST(0x0000A23C00CA1327 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (982, 5, N'179', N'Broken', N'-2', CAST(0x0000A23C00CA24A1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (983, 62, N'118', N'Broken', N'-3', CAST(0x0000A23C00CA33B6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (984, 14, N'981', N'Broken', N'-3', CAST(0x0000A23C00CA5AD6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (985, 84, N'895', N'Lost', N'-1', CAST(0x0000A23C00CA7105 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (986, 35, N'113', N'Broken', N'-4', CAST(0x0000A23C00CA7CC8 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (987, 28, N'211', N'Wet', N'-2', CAST(0x0000A23C00CA9236 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (988, 38, N'0', N'Disbursement', N'- 0', CAST(0x0000A23C00CE78E2 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (989, 5, N'175', N'Disbursement', N'- 4', CAST(0x0000A23C00CE78F0 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (990, 52, N'106', N'Disbursement', N'- 4', CAST(0x0000A23C00CE78FF AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (991, 17, N'96', N'Disbursement', N'- 11', CAST(0x0000A23C00CE790D AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (992, 68, N'61', N'Disbursement', N'- 1', CAST(0x0000A23C00CE791B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (993, 56, N'106', N'Disbursement', N'- 10', CAST(0x0000A23C00CE7928 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (994, 80, N'21', N'Disbursement', N'- 1', CAST(0x0000A23C00CE7936 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (995, 32, N'266', N'Disbursement', N'- 2', CAST(0x0000A23C00CE7943 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (996, 8, N'1759', N'Disbursement', N'- 9', CAST(0x0000A23C00CE7950 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (997, 21, N'107', N'Disbursement', N'- 3', CAST(0x0000A23C00CE795E AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (998, 75, N'143', N'Disbursement', N'- 3', CAST(0x0000A23C00CE796B AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (999, 19, N'134', N'Disbursement', N'- 5', CAST(0x0000A23C00CE7979 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (1000, 15, N'48', N'Disbursement', N'- 3', CAST(0x0000A23C00CE7987 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (1001, 55, N'387', N'Disbursement', N'- 3', CAST(0x0000A23C00CE7996 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (1002, 31, N'225', N'Disbursement', N'- 2', CAST(0x0000A23C00CE79B1 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (1003, 7, N'1371', N'Disbursement', N'- 1', CAST(0x0000A23C00CE79BB AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (1004, 25, N'230', N'Disbursement', N'- 1', CAST(0x0000A23C00CE79C4 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (1005, 4, N'745', N'Disbursement', N'- 3', CAST(0x0000A23C00CE79CD AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (1006, 3, N'264', N'Disbursement', N'- 1', CAST(0x0000A23C00CE79D6 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (1007, 5, N'172', N'Disbursement', N'- 3', CAST(0x0000A23C00CE9ADA AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (1008, 38, N'0', N'Disbursement', N'- 0', CAST(0x0000A23C00D12724 AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (1009, 7, N'971', N'Disbursement', N'- 400', CAST(0x0000A23C00D12743 AS DateTime))
GO
print 'Processed 1000 total records'
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (1010, 2, N'2', N'Disbursement', N'- 454', CAST(0x0000A23C00D1276F AS DateTime))
INSERT [dbo].[StockTransaction] ([id], [stationery], [balance], [description], [quantity], [datetime_inserted]) VALUES (1011, 7, N'71', N'Damaged', N'-900', CAST(0x0000A23C00D25429 AS DateTime))
SET IDENTITY_INSERT [dbo].[StockTransaction] OFF
/****** Object:  View [dbo].[StationeryView]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[StationeryView]
AS
SELECT     dbo.StationeryCategory.category_name, dbo.Supplier.supplier_name, dbo.Stationery.id, dbo.Stationery.code, dbo.Stationery.stationery_name, 
                      dbo.Stationery.category, dbo.Stationery.price, dbo.Stationery.reorder_level, dbo.Stationery.reorder_quantity, dbo.Stationery.quantity_in_stock, 
                      dbo.Stationery.pending_quantity_to_distribute, dbo.Stationery.first_supplier, dbo.Stationery.second_supplier, dbo.Stationery.third_supplier, 
                      dbo.Stationery.unit_of_measure, dbo.Stationery.bin, dbo.Supplier.code AS supplier_code, 
                      dbo.Stationery.quantity_in_stock - dbo.Stationery.pending_quantity_to_distribute AS available_quantity
FROM         dbo.Stationery LEFT OUTER JOIN
                      dbo.StationeryCategory ON dbo.Stationery.category = dbo.StationeryCategory.id LEFT OUTER JOIN
                      dbo.Supplier ON dbo.Stationery.third_supplier = dbo.Supplier.id AND dbo.Stationery.first_supplier = dbo.Supplier.id AND 
                      dbo.Stationery.second_supplier = dbo.Supplier.id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Stationery"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 217
               Right = 278
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "StationeryCategory"
            Begin Extent = 
               Top = 5
               Left = 414
               Bottom = 93
               Right = 578
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Supplier"
            Begin Extent = 
               Top = 117
               Left = 413
               Bottom = 235
               Right = 574
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'StationeryView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'StationeryView'
GO
/****** Object:  Table [dbo].[User]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[firstname] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone_number] [nvarchar](50) NULL,
	[department] [int] NULL,
	[user_type] [int] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (2, N'david', N'726141362812145772051475542201921052', N'Mr', N'David', N'admin@logic-university.com', N'9876544321', NULL, 5)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (4, N'esther', N'726141362812145772051475542201921052', N'Esther', N'Tan', N'esther@logic-uinversity.com', N'365765398', NULL, 4)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (5, N'pamelakow', N'726141362812145772051475542201921052', N'Pamela', N'Kow', N'pamelakow@email.com', N'58690679', 3, 3)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (6, N'weekianfatt', N'726141362812145772051475542201921052', N'Wee', N'Kianfatt', N'wee123@gmail.com', N'8921456', 4, 3)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (7, N'mohdazman', N'726141362812145772051475542201921052', N'Mohd', N'Azman', N'mohd@gmail.com', N'8921256', 5, 3)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (8, N'helenho', N'726141362812145772051475542201921052', N'Hellen', N'Ho', N'hellen@gmail.com', N'8921465', 6, 3)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (9, N'petertanahmeng', N'726141362812145772051475542201921052', N'Peter', N'Tanahmeng', N'peter@gmail.com', N'8901266', 7, 3)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (10, N'swee', N'726141362812145772051475542201921052', N'Mr', N'Swee', N'team9.iss36.nus@gmail.com', N'6596543120', 9, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (11, N'yemaw', N'726141362812145772051475542201921052', N'Ye', N'Maw', N'yemaw.online@gmail.com', N'6596543120', 8, 2)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (14, N'tommy', N'726141362812145772051475542201921052', N'Mr', N'Tommy', N'ceo@logic-university.com', N'99887766', NULL, 6)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (15, N'theinthein', N'726141362812145772051475542201921052', N'Thein', N'Htike Aung', N'team9.iss36.nus@gmail.com', N'6582849293', 8, 2)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (16, N'larry', N'726141362812145772051475542201921052', N'Mr', N'Larry', N'larry@soc.com', N'6582849293', 9, 3)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (17, N'soni', N'726141362812145772051475542201921052', N'So', N'Ni', N'team9.iss36.nus@gmail.com', N'6581226418', 8, 2)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (18, N'ellen', N'726141362812145772051475542201921052', N'Ms.', N'Ellen', N'ellen@gmail.com', N'85756024', 8, 2)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (19, N'zarni', N'726141362812145772051475542201921052', N'Zar', N'Ni', N'zarni@gmail.com', N'98023977', 8, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (20, N'margus', N'726141362812145772051475542201921052', N'Mar', N'Gus', N'margus@gmail.com', N'78697088', 8, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (21, N'choon', N'726141362812145772051475542201921052', N'Mr. Liong', N'Choon', N'team9.iss36.nus@gmail.com', N'6596543120', 8, 3)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (22, N'jason', N'726141362812145772051475542201921052', N'Jason', N'Chen ', N'team9.iss36.nus@gmail.com', N'6596543120', 9, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (23, N'ramya', N'726141362812145772051475542201921052', N'Ram', N'Ya', N'team9.iss36.nus@gmail.com', N'96543120', 8, 2)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (24, N'erin', N'726141362812145772051475542201921052', N'Ms.', N'Erin', N'team9.iss36.nus@gmail.com', N'96543120', 9, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (25, N'kerin', N'726141362812145772051475542201921052', N'Ms.', N'Kerin', N'team9.iss36.nus@gmail.com', N'96543120', 9, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (26, N'sophiar', N'726141362812145772051475542201921052', N'Ms.', N'Sophiar', N'team9.iss36.nus@gmail.com', N'96543120', 9, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (27, N'lisa', N'726141362812145772051475542201921052', N'Ms.', N'Sha', N'team9.iss36.nus@gmail.com', N'96543120', 9, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (28, N'luna', N'726141362812145772051475542201921052', N'Ms.', N'luna', N'team9.iss36.nus@gmail.com', N'96543120', 9, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (29, N'peter', N'726141362812145772051475542201921052', N'Mr', N'Peter', N'team9.iss36.nus@gmail.com', N'96543120', 9, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (30, N'hellen', N'726141362812145772051475542201921052', N'Ms.', N'Hellen', N'hellen@gmail.com', N'1567898798', 3, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (31, N'ada', N'726141362812145772051475542201921052', N'Ms.', N'ada', N'ada@gmail.com', N'85756024', 3, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (32, N'bess', N'726141362812145772051475542201921052', N'Ms.', N'bess', N'bess@gmail.com', N'85756024', 4, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (33, N'carey', N'726141362812145772051475542201921052', N'Mr', N'carey', N'carey@gmail.com', N'34013434', 4, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (34, N'carl', N'726141362812145772051475542201921052', N'Mr', N'carl', N'carl@gmail.com', N'45025433', 5, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (35, N'eden', N'726141362812145772051475542201921052', N'Mr', N'eden', N'eden@gmail.com', N'34345890', 5, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (36, N'dale', N'726141362812145772051475542201921052', N'Ms.', N'dale', N'dale@gmail.com', N'34982475', 6, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (37, N'elvis', N'726141362812145772051475542201921052', N'Mr', N'elvis', N'elvis@gmail.com', N'24354353', 6, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (38, N'enoch', N'726141362812145772051475542201921052', N'Mr', N'enoch', N'enoch@gmail.com', N'34523423', 7, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (39, N'denise', N'726141362812145772051475542201921052', N'Ms.', N'denise', N'denise@gmail.com', N'3434253', 7, 1)
INSERT [dbo].[User] ([id], [username], [password], [firstname], [lastname], [email], [phone_number], [department], [user_type]) VALUES (40, N'megan', N'726141362812145772051475542201921052', N'Ms.', N'Megan', N'megan@logic-university.com', N'8978972', NULL, 4)
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[RequisitionFullfillment]    Script Date: 09/17/2013 16:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequisitionFullfillment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[department] [int] NOT NULL,
	[stationery] [int] NOT NULL,
	[requested_quantity] [int] NOT NULL,
	[fulfill_quantity] [int] NOT NULL,
	[unfulfill_quantity] [int] NOT NULL,
 CONSTRAINT [PK_Fulfillment_request] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RequisitionFullfillment] ON
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (80, 8, 38, 35, 0, 35)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (131, 5, 38, 1, 0, 1)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (644, 9, 50, 2, 2, 2)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (645, 3, 15, 2, 2, 0)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (646, 3, 13, 3, 3, 0)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (647, 3, 40, 2, 2, 0)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (648, 3, 5, 3, 3, 0)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (649, 3, 32, 3, 3, 0)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (650, 3, 43, 3, 3, 0)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (651, 3, 1, 2, 2, 0)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (652, 3, 67, 2, 2, 0)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (653, 3, 3, 1, 1, 0)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (665, 9, 89, 1, 1, 0)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (666, 9, 6, 1, 1, 0)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (667, 9, 3, 6, 6, 0)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (668, 9, 47, 1, 1, 0)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (669, 9, 10, 3, 3, 0)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (670, 9, 9, 3, 3, 0)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (671, 9, 4, 5, 5, 0)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (672, 9, 16, 2, 2, 0)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (673, 9, 2, 902, 2, 0)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (674, 9, 64, 2, 2, 0)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (675, 8, 7, 600, 0, 600)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (676, 8, 2, 546, 0, 546)
INSERT [dbo].[RequisitionFullfillment] ([id], [department], [stationery], [requested_quantity], [fulfill_quantity], [unfulfill_quantity]) VALUES (677, 9, 7, 900, 871, 0)
SET IDENTITY_INSERT [dbo].[RequisitionFullfillment] OFF
/****** Object:  Table [dbo].[Disbursement]    Script Date: 09/17/2013 16:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disbursement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[department] [int] NOT NULL,
	[department_rept] [nvarchar](50) NOT NULL,
	[distributed_date] [date] NOT NULL,
 CONSTRAINT [PK_Disbursement] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Disbursement] ON
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (1, 8, N'Mandy', CAST(0x90370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (2, 9, N'Cherry', CAST(0x95370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (3, 8, N'Mandy', CAST(0x95370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (4, 8, N'Mandy', CAST(0x96370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (5, 8, N'Mandy', CAST(0x4D370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (6, 8, N'Mandy', CAST(0x5B370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (7, 9, N'Cherry', CAST(0x5B370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (8, 3, N'Mr Tan Jon Ei', CAST(0x3F370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (9, 4, N'Mr Jiong Kui', CAST(0x3F370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (10, 5, N'Ms Chenn  Lee', CAST(0x3F370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (11, 6, N'Mr Wong Jengmee', CAST(0x3F370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (12, 7, N'Mr Lee Xun', CAST(0x3F370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (13, 8, N'Mandy', CAST(0x3F370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (14, 9, N'Cherry', CAST(0x3F370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (15, 3, N'Mr Tan Jon Ei', CAST(0x4D370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (16, 4, N'Mr Jiong Kui', CAST(0x4D370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (17, 5, N'Ms Chenn  Lee', CAST(0x4D370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (18, 6, N'Mr Wong Jengmee', CAST(0x4D370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (19, 7, N'Mr Lee Xun', CAST(0x4D370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (20, 9, N'Cherry', CAST(0x4D370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (21, 3, N'Mr Tan Jon Ei', CAST(0x77370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (22, 4, N'Mr Jiong Kui', CAST(0x77370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (23, 5, N'Ms Chenn  Lee', CAST(0x77370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (24, 6, N'Mr Wong Jengmee', CAST(0x77370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (25, 7, N'Mr Lee Xun', CAST(0x77370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (26, 8, N'Mandy', CAST(0x77370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (27, 9, N'Cherry', CAST(0x77370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (28, 3, N'Mr Tan Jon Ei', CAST(0x8C370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (29, 4, N'Mr Jiong Kui', CAST(0x8C370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (30, 5, N'Ms Chenn  Lee', CAST(0x8C370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (31, 6, N'Mr Wong Jengmee', CAST(0x8C370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (32, 7, N'Mr Lee Xun', CAST(0x8C370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (33, 8, N'Mandy', CAST(0x8C370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (34, 8, N'Mandy', CAST(0x38370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (35, 9, N'Cherry', CAST(0x85370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (36, 9, N'Cherry', CAST(0x97370B00 AS Date))
INSERT [dbo].[Disbursement] ([id], [department], [department_rept], [distributed_date]) VALUES (37, 8, N'Mandy', CAST(0x97370B00 AS Date))
SET IDENTITY_INSERT [dbo].[Disbursement] OFF
/****** Object:  View [dbo].[GetDepartmentForFulfillment]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[GetDepartmentForFulfillment]
AS
SELECT     dbo.Department.id, dbo.Department.department_name, dbo.Department.representative_name, dbo.CollectionPoint.name
FROM         dbo.CollectionPoint INNER JOIN
                      dbo.Department ON dbo.CollectionPoint.id = dbo.Department.collection_point
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CollectionPoint"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 94
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Department"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 124
               Right = 428
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GetDepartmentForFulfillment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GetDepartmentForFulfillment'
GO
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 09/17/2013 16:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrder](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[po_stationery] [int] NOT NULL,
	[po_quantity_in_hand] [int] NOT NULL,
	[po_reorder_level] [int] NOT NULL,
	[po_reordered_quantity] [int] NOT NULL,
	[po_supplier] [int] NOT NULL,
	[po_reorder_date] [datetime] NOT NULL,
	[po_status] [int] NOT NULL,
 CONSTRAINT [PK_PurchaseOrder] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PurchaseOrder] ON
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (1, 6, 48, 50, 20, 3, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (2, 6, 48, 50, 20, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (3, 55, 75, 50, 30, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (4, 6, 48, 50, 20, 3, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (5, 55, 75, 50, 30, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (6, 6, 48, 50, 20, 3, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (7, 25, 0, 50, 40, 3, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (8, 15, 49, 50, 20, 2, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (9, 32, 0, 200, 30, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (10, 5, 0, 50, 30, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (11, 5, 30, 50, 30, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (12, 7, 80, 60, 20, 2, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (13, 7, 80, 60, 20, 2, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (14, 8, 80, 60, 20, 4, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (15, 15, 39, 60, 20, 2, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (16, 8, 60, 60, 30, 4, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (17, 8, 60, 60, 30, 4, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (18, 15, 60, 60, 20, 2, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (19, 13, 60, 50, 30, 2, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (20, 14, 60, 50, 30, 2, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (21, 16, 19, 50, 20, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (22, 16, 39, 50, 20, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (23, 17, 62, 100, 50, 3, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (24, 19, 81, 100, 50, 3, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (25, 18, 76, 100, 50, 3, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (26, 25, 0, 200, 50, 3, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (27, 25, 0, 60, 50, 3, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (28, 30, 17, 60, 50, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (29, 32, 144, 60, 50, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (30, 38, 0, 50, 20, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (31, 40, 41, 50, 30, 3, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (32, 71, 0, 50, 20, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (33, 75, 98, 100, 60, 2, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (34, 71, 20, 50, 20, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (35, 38, 20, 50, 20, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (36, 30, 60, 100, 50, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (37, 25, 60, 100, 30, 3, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (38, 38, 40, 50, 20, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (39, 71, 40, 50, 20, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (40, 5, 50, 50, 30, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (41, 5, 50, 50, 30, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (42, 10, 70, 80, 40, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (43, 5, 50, 50, 30, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (44, 17, 96, 100, 50, 3, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (45, 5, 50, 50, 30, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (46, 20, 94, 100, 50, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (47, 5, 50, 50, 20, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (48, 5, 50, 50, 20, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (49, 22, 99, 100, 50, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (50, 5, 50, 50, 30, 1, CAST(0x0000A1DD01416112 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (51, 39, 50, 50, 20, 2, CAST(0x0000A1F2013442F4 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (52, 5, 50, 50, 30, 1, CAST(0x0000A1F201344431 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (53, 48, 500, 500, 40, 2, CAST(0x0000A1F201344604 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (54, 5, 50, 50, 30, 1, CAST(0x0000A1F201344750 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (55, 5, 50, 50, 30, 1, CAST(0x0000A1F201344A6C AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (56, 5, 50, 50, 30, 1, CAST(0x0000A1F201344DE3 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (57, 10, 80, 40, 40, 1, CAST(0x0000A1F2013451E8 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (58, 48, 80, 40, 50, 2, CAST(0x0000A1F201345CB5 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (59, 5, 0, 50, 30, 1, CAST(0x0000A1F20134B1BE AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (60, 25, 49, 200, 40, 3, CAST(0x0000A1F20134B585 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (61, 32, 0, 200, 40, 1, CAST(0x0000A1F20134B91E AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (62, 38, 0, 50, 20, 1, CAST(0x0000A1F20134BD5F AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (63, 71, 0, 50, 20, 1, CAST(0x0000A1F20134C0CC AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (64, 5, 30, 50, 30, 1, CAST(0x0000A1F20134CF1E AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (65, 25, 150, 200, 40, 3, CAST(0x0000A1F20134D320 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (66, 5, 30, 50, 20, 1, CAST(0x0000A1F20134D6E0 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (67, 5, 30, 50, 20, 1, CAST(0x0000A1F20134DAC0 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (68, 71, 20, 50, 20, 1, CAST(0x0000A1F20134DEAA AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (69, 5, 30, 50, 30, 1, CAST(0x0000A1F20134DF59 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (70, 5, 30, 50, 30, 1, CAST(0x0000A1F20134E2EE AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (71, 38, 20, 50, 20, 1, CAST(0x0000A1F20134E44B AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (72, 5, 30, 50, 30, 1, CAST(0x0000A1F20134E5BA AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (73, 32, 50, 50, 30, 1, CAST(0x0000A1F20134E7E2 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (74, 5, 30, 50, 30, 1, CAST(0x0000A1F20134E8BD AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (75, 5, 30, 50, 30, 1, CAST(0x0000A1F20134EBCD AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (76, 5, 30, 50, 30, 1, CAST(0x0000A1F20134EBFB AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (77, 38, 40, 50, 20, 1, CAST(0x0000A1F201350616 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (78, 71, 40, 50, 20, 1, CAST(0x0000A1F201350A31 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (79, 5, 0, 120, 10, 1, CAST(0x0000A1F201356532 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (80, 5, 0, 120, 10, 1, CAST(0x0000A1F201356892 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (81, 5, 0, 120, 10, 1, CAST(0x0000A1F201356B6F AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (82, 5, 0, 120, 10, 1, CAST(0x0000A1F201356E44 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (83, 5, 0, 120, 20, 1, CAST(0x0000A1F20135716A AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (84, 5, 0, 120, 10, 1, CAST(0x0000A1F20135755B AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (85, 38, 0, 50, 20, 1, CAST(0x0000A1F201357EB9 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (86, 38, 0, 50, 20, 1, CAST(0x0000A1F2013581C7 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (87, 38, 0, 50, 20, 1, CAST(0x0000A1F2013584B8 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (88, 38, 0, 50, 20, 1, CAST(0x0000A1F201358783 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (89, 71, 0, 50, 20, 1, CAST(0x0000A1F201358AAC AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (90, 71, 0, 50, 20, 1, CAST(0x0000A1F201358DE9 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (91, 71, 0, 50, 20, 1, CAST(0x0000A1F20135908F AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (92, 71, 0, 50, 20, 1, CAST(0x0000A21C013A7382 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (93, 19, 98, 100, 50, 3, CAST(0x0000A21C013A780F AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (94, 24, 99, 100, 50, 1, CAST(0x0000A21C013A7ADB AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (95, 26, 192, 50, 50, 1, CAST(0x0000A21C013A7DA0 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (96, 38, 0, 50, 20, 1, CAST(0x0000A21C013A80C2 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (97, 38, 0, 50, 20, 1, CAST(0x0000A21C013A838A AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (98, 40, 40, 50, 20, 3, CAST(0x0000A21C013A8674 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (99, 42, 98, 60, 60, 1, CAST(0x0000A21C013A8927 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (100, 67, 44, 50, 20, 4, CAST(0x0000A21C013A8C9B AS DateTime), 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (101, 68, 46, 50, 20, 2, CAST(0x0000A21C013A911C AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (102, 71, 0, 50, 20, 1, CAST(0x0000A21C013A96A1 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (103, 42, 98, 100, 60, 1, CAST(0x0000A21C013A9AE5 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (104, 67, 44, 50, 20, 4, CAST(0x0000A21C013A9FEE AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (105, 71, 0, 50, 20, 1, CAST(0x0000A21C013AA5BF AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (106, 74, 99, 80, 60, 1, CAST(0x0000A21C013AA99D AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (107, 82, 9, 10, 10, 3, CAST(0x0000A21C013AB141 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (108, 84, 498, 50, 30, 2, CAST(0x0000A21C013AB8D2 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (109, 38, 0, 50, 20, 1, CAST(0x0000A21C013B17CC AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (110, 38, 0, 50, 20, 1, CAST(0x0000A21C013B1CBE AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (111, 38, 0, 50, 20, 1, CAST(0x0000A21C013B209D AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (112, 38, 0, 50, 20, 1, CAST(0x0000A21C013B24EC AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (113, 38, 0, 50, 20, 1, CAST(0x0000A21C013B2778 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (114, 71, 0, 50, 20, 1, CAST(0x0000A21C013B2B0D AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (115, 38, 0, 50, 20, 1, CAST(0x0000A21C013B2DD5 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (116, 71, 0, 50, 20, 1, CAST(0x0000A21C013B30C6 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (117, 71, 0, 50, 20, 1, CAST(0x0000A231013CD370 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (118, 38, 0, 50, 20, 1, CAST(0x0000A231013CD759 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (119, 38, 0, 50, 20, 1, CAST(0x0000A231013E66D9 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (120, 38, 0, 50, 20, 1, CAST(0x0000A231013E6BAF AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (121, 38, 0, 50, 20, 1, CAST(0x0000A231013E6EC1 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (122, 38, 0, 50, 20, 1, CAST(0x0000A231013E71BD AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (123, 38, 0, 50, 20, 1, CAST(0x0000A231013E747F AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (124, 38, 0, 50, 20, 1, CAST(0x0000A231013E773C AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (125, 38, 0, 50, 20, 1, CAST(0x0000A231013E7A72 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (126, 38, 0, 50, 20, 1, CAST(0x0000A231013E7D1E AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (127, 38, 0, 50, 20, 1, CAST(0x0000A231013E808E AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (128, 38, 0, 50, 20, 1, CAST(0x0000A231013E84AE AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (129, 38, 0, 50, 20, 1, CAST(0x0000A231013E88B5 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (130, 38, 0, 50, 20, 1, CAST(0x0000A231013E96AF AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (131, 38, 0, 50, 20, 1, CAST(0x0000A231013E9A5D AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (132, 38, 0, 50, 20, 1, CAST(0x0000A231013E9E3A AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (133, 71, 0, 50, 20, 1, CAST(0x0000A231013F17B9 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (134, 71, 0, 50, 20, 1, CAST(0x0000A231013F1B9B AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (135, 18, 97, 100, 50, 3, CAST(0x0000A23A017F931A AS DateTime), 0)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (136, 38, 0, 50, 20, 1, CAST(0x0000A23A017FA410 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (137, 47, 100, 100, 60, 2, CAST(0x0000A23A017FA6CF AS DateTime), 0)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (138, 71, 0, 50, 20, 1, CAST(0x0000A23A017FA9DE AS DateTime), 0)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (139, 38, 0, 50, 20, 2, CAST(0x0000A23B0119971D AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (140, 71, 0, 50, 20, 1, CAST(0x0000A23B011C6D71 AS DateTime), 1)
INSERT [dbo].[PurchaseOrder] ([id], [po_stationery], [po_quantity_in_hand], [po_reorder_level], [po_reordered_quantity], [po_supplier], [po_reorder_date], [po_status]) VALUES (141, 18, 82, 100, 50, 3, CAST(0x0000A23C009B748F AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[PurchaseOrder] OFF
/****** Object:  Table [dbo].[Discrepancy]    Script Date: 09/17/2013 16:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discrepancy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stationery] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[remark] [nvarchar](200) NULL,
	[datetime_reported] [date] NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_Discrepancy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Discrepancy] ON
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (1, 2, 3, N'Broken', CAST(0x90370B00 AS Date), 1)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (2, 6, 3, N'Wet', CAST(0x91370B00 AS Date), 1)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (3, 9, 6, N'Wet', CAST(0x91370B00 AS Date), 1)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (4, 20, 500, N'Wet Due to Heavy Rain', CAST(0x91370B00 AS Date), 1)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (5, 18, 3, N'Wet', CAST(0x91370B00 AS Date), 1)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (6, 15, 2, N'Dirty', CAST(0x91370B00 AS Date), 1)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (7, 2, 3, N'Broken', CAST(0x91370B00 AS Date), 1)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (8, 1, 1, N'broke', CAST(0x92370B00 AS Date), 1)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (9, 24, 2, N'Wet', CAST(0x96370B00 AS Date), 1)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (10, 5, 1, N'broke ', CAST(0x96370B00 AS Date), 1)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (11, 20, 2, N'Wet due to heavy rain.', CAST(0x96370B00 AS Date), 1)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (12, 5, 2, N'Broken', CAST(0x96370B00 AS Date), 1)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (13, 27, 2, N'Broken', CAST(0x96370B00 AS Date), 1)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (14, 50, 2, N'Missing', CAST(0x96370B00 AS Date), 1)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (15, 47, 1, N'Missing', CAST(0x96370B00 AS Date), 1)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (16, 13, 3, N'Wet', CAST(0x96370B00 AS Date), 1)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (17, 68, 1, N'Unusable', CAST(0x96370B00 AS Date), 1)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (18, 44, 2, N'Dirty', CAST(0x96370B00 AS Date), 1)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (19, 87, 1, N'Lost', CAST(0x96370B00 AS Date), 0)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (20, 20, 2, N'Wet Due to Heavy Rain', CAST(0x97370B00 AS Date), 0)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (21, 8, 1, N'Wet', CAST(0x97370B00 AS Date), 0)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (22, 34, 1, N'Lost', CAST(0x97370B00 AS Date), 0)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (23, 31, 3, N'Lost', CAST(0x97370B00 AS Date), 0)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (24, 16, 2, N'Dirty', CAST(0x97370B00 AS Date), 0)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (25, 5, 2, N'Broken', CAST(0x97370B00 AS Date), 0)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (26, 62, 3, N'Broken', CAST(0x97370B00 AS Date), 0)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (27, 14, 3, N'Broken', CAST(0x97370B00 AS Date), 0)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (28, 84, 1, N'Lost', CAST(0x97370B00 AS Date), 0)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (29, 35, 4, N'Broken', CAST(0x97370B00 AS Date), 0)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (30, 28, 2, N'Wet', CAST(0x97370B00 AS Date), 0)
INSERT [dbo].[Discrepancy] ([id], [stationery], [quantity], [remark], [datetime_reported], [status]) VALUES (31, 7, 900, N'Damaged', CAST(0x97370B00 AS Date), 0)
SET IDENTITY_INSERT [dbo].[Discrepancy] OFF
/****** Object:  View [dbo].[UserView]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[UserView]
AS
SELECT     dbo.[User].id, dbo.[User].username, dbo.[User].password, dbo.[User].firstname, dbo.[User].lastname, dbo.[User].email, dbo.[User].phone_number, 
                      dbo.[User].department, dbo.[User].user_type, dbo.UserType.type, dbo.Department.department_name, dbo.Department.id AS Expr1, dbo.UserType.id AS Expr2
FROM         dbo.Department RIGHT OUTER JOIN
                      dbo.[User] ON dbo.Department.id = dbo.[User].department LEFT OUTER JOIN
                      dbo.UserType ON dbo.[User].user_type = dbo.UserType.id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Department"
            Begin Extent = 
               Top = 103
               Left = 607
               Bottom = 221
               Right = 799
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "User"
            Begin Extent = 
               Top = 54
               Left = 330
               Bottom = 172
               Right = 491
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserType"
            Begin Extent = 
               Top = 0
               Left = 608
               Bottom = 88
               Right = 768
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 14
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UserView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UserView'
GO
/****** Object:  Table [dbo].[DisbursementDetails]    Script Date: 09/17/2013 16:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DisbursementDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[disbursement] [int] NOT NULL,
	[stationery] [int] NOT NULL,
	[requested_quantity] [int] NOT NULL,
	[fulfilled_quantity] [int] NOT NULL,
	[previous_unfulfilled_quantity] [int] NOT NULL,
 CONSTRAINT [PK_Disbursement_details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DisbursementDetails] ON
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (1, 1, 6, 4, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (2, 1, 55, 45, 45, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (3, 2, 53, 5, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (4, 2, 28, 5, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (5, 2, 40, 10, 10, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (6, 2, 15, 8, 8, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (7, 2, 19, 9, 9, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (8, 2, 3, 7, 7, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (9, 3, 19, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (10, 3, 20, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (11, 3, 5, 6, 6, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (12, 3, 15, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (13, 3, 39, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (14, 3, 1, 215, 215, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (15, 3, 30, 100, 100, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (16, 3, 25, 508, 435, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (17, 3, 10, 6, 6, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (18, 3, 17, 18, 18, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (19, 3, 26, 20, 20, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (20, 3, 57, 16, 16, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (21, 3, 4, 6, 6, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (22, 3, 16, 23, 23, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (23, 3, 9, 14, 14, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (24, 3, 32, 25, 25, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (25, 2, 26, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (26, 2, 24, 10, 10, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (27, 2, 4, 5, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (28, 2, 17, 10, 10, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (29, 2, 33, 20, 20, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (30, 4, 25, 73, 4, 73)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (31, 5, 25, 72, 255, 72)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (32, 5, 32, 1, 317, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (33, 5, 24, 5, 7, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (34, 5, 35, 10, 12, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (35, 6, 25, 72, 72, 72)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (36, 6, 12, 15, 15, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (37, 6, 14, 7, 7, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (38, 6, 5, 20, 20, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (39, 7, 55, 20, 20, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (40, 7, 15, 21, 21, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (41, 7, 18, 32, 32, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (42, 7, 6, 22, 22, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (43, 7, 19, 10, 10, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (44, 7, 13, 10, 10, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (45, 7, 8, 15, 15, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (46, 7, 1, 20, 20, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (47, 7, 2, 24, 24, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (48, 7, 16, 9, 9, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (49, 8, 84, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (50, 8, 67, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (51, 8, 75, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (52, 8, 40, 4, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (53, 8, 77, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (54, 8, 10, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (55, 8, 4, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (56, 8, 20, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (57, 8, 5, 2, 0, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (58, 8, 6, 1, 0, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (59, 8, 26, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (60, 8, 17, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (61, 8, 32, 4, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (62, 8, 1, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (63, 8, 60, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (64, 8, 19, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (65, 8, 42, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (66, 9, 26, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (67, 9, 18, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (68, 9, 22, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (69, 9, 40, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (70, 9, 3, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (71, 9, 5, 1, 0, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (72, 9, 19, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (73, 9, 2, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (74, 9, 21, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (75, 9, 17, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (76, 9, 32, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (77, 9, 8, 5, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (78, 9, 74, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (79, 9, 88, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (80, 9, 68, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (81, 9, 14, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (82, 9, 41, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (83, 10, 17, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (84, 10, 7, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (85, 10, 76, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (86, 10, 14, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (87, 10, 12, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (88, 10, 23, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (89, 10, 75, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (90, 10, 68, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (91, 10, 41, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (92, 10, 44, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (93, 10, 19, 5, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (94, 10, 46, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (95, 10, 67, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (96, 10, 43, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (97, 10, 11, 4, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (98, 10, 38, 1, 0, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (99, 10, 48, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (100, 11, 18, 1, 1, 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (101, 11, 3, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (102, 11, 20, 5, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (103, 11, 47, 4, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (104, 11, 13, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (105, 11, 73, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (106, 11, 8, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (107, 11, 75, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (108, 11, 39, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (109, 11, 17, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (110, 11, 79, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (111, 11, 23, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (112, 11, 10, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (113, 11, 77, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (114, 11, 42, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (115, 12, 20, 4, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (116, 12, 13, 5, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (117, 12, 21, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (118, 12, 22, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (119, 12, 11, 9, 9, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (120, 12, 77, 4, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (121, 12, 18, 6, 6, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (122, 12, 67, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (123, 12, 8, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (124, 12, 76, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (125, 12, 78, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (126, 12, 43, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (127, 12, 7, 5, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (128, 12, 75, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (129, 12, 63, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (130, 12, 3, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (131, 12, 2, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (132, 12, 17, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (133, 12, 19, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (134, 12, 56, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (135, 12, 38, 2, 0, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (136, 12, 74, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (137, 12, 40, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (138, 12, 6, 2, 0, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (139, 12, 4, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (140, 12, 15, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (141, 12, 16, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (142, 12, 5, 1, 0, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (143, 12, 28, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (144, 13, 5, 1133, 54, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (145, 13, 22, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (146, 13, 13, 5, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (147, 13, 25, 267, 27, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (148, 13, 7, 7, 7, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (149, 13, 16, 7, 7, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (150, 13, 6, 309, 226, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (151, 13, 71, 420, 70, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (152, 13, 32, 521, 205, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (153, 13, 27, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (154, 13, 4, 118, 118, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (155, 13, 49, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (156, 13, 64, 4, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (157, 13, 62, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (158, 13, 37, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (159, 13, 82, 5, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (160, 13, 29, 8, 8, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (161, 13, 33, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (162, 13, 3, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (163, 13, 41, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (164, 13, 77, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (165, 13, 1, 103, 103, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (166, 13, 15, 7, 7, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (167, 13, 39, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (168, 13, 30, 101, 101, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (169, 13, 10, 11, 11, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (170, 13, 17, 13, 13, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (171, 13, 26, 5, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (172, 13, 57, 8, 8, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (173, 13, 55, 45, 45, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (174, 13, 20, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (175, 13, 76, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (176, 13, 38, 778, 55, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (177, 13, 19, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (178, 13, 24, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (179, 13, 42, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (180, 13, 35, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (181, 13, 43, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (182, 13, 48, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (183, 13, 88, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (184, 13, 68, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (185, 13, 45, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (186, 13, 54, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (187, 13, 65, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (188, 13, 81, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (189, 13, 75, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (190, 13, 9, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (191, 14, 7, 6, 6, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (192, 14, 28, 15, 15, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (193, 14, 61, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (194, 14, 36, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (195, 14, 13, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (196, 14, 4, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (197, 14, 88, 4, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (198, 14, 25, 2, 0, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (199, 14, 34, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (200, 14, 62, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (201, 14, 58, 2, 2, 0)
GO
print 'Processed 200 total records'
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (202, 14, 17, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (203, 14, 51, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (204, 14, 30, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (205, 14, 24, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (206, 15, 5, 5, 6, 2)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (207, 15, 6, 4, 5, 1)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (208, 15, 84, 2, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (209, 15, 67, 4, 7, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (210, 15, 75, 3, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (211, 15, 40, 6, 10, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (212, 15, 77, 2, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (213, 15, 10, 3, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (214, 15, 4, 3, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (215, 15, 20, 3, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (216, 15, 26, 1, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (217, 15, 17, 6, 9, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (218, 15, 32, 1, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (219, 15, 1, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (220, 15, 60, 3, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (221, 15, 19, 2, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (222, 15, 42, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (223, 16, 5, 2, 4, 1)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (224, 16, 26, 5, 9, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (225, 16, 18, 3, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (226, 16, 22, 1, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (227, 16, 40, 2, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (228, 16, 3, 3, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (229, 16, 19, 3, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (230, 16, 2, 3, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (231, 16, 21, 3, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (232, 16, 17, 4, 6, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (233, 16, 32, 1, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (234, 16, 8, 4, 7, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (235, 16, 74, 2, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (236, 16, 88, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (237, 16, 68, 3, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (238, 16, 14, 3, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (239, 16, 41, 3, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (240, 17, 38, 2, 2, 1)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (241, 17, 17, 2, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (242, 17, 7, 2, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (243, 17, 76, 1, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (244, 17, 14, 3, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (245, 17, 12, 1, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (246, 17, 23, 2, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (247, 17, 75, 2, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (248, 17, 68, 3, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (249, 17, 41, 2, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (250, 17, 44, 2, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (251, 17, 19, 5, 9, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (252, 17, 46, 2, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (253, 17, 67, 1, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (254, 17, 43, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (255, 17, 11, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (256, 17, 48, 2, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (257, 18, 18, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (258, 18, 3, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (259, 18, 20, 8, 13, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (260, 18, 47, 5, 9, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (261, 18, 13, 3, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (262, 18, 73, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (263, 18, 8, 3, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (264, 18, 75, 2, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (265, 18, 39, 2, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (266, 18, 17, 1, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (267, 18, 79, 1, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (268, 18, 23, 7, 10, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (269, 18, 10, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (270, 18, 77, 1, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (271, 18, 42, 2, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (272, 19, 38, 4, 6, 2)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (273, 19, 6, 4, 5, 2)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (274, 19, 5, 2, 4, 1)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (275, 19, 21, 4, 6, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (276, 19, 22, 1, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (277, 19, 11, 9, 14, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (278, 19, 77, 4, 8, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (279, 19, 18, 6, 12, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (280, 19, 67, 3, 6, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (281, 19, 8, 3, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (282, 19, 76, 3, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (283, 19, 78, 3, 7, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (284, 19, 43, 3, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (285, 19, 7, 5, 8, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (286, 19, 75, 2, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (287, 19, 63, 2, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (288, 19, 3, 3, 7, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (289, 19, 2, 2, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (290, 19, 17, 2, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (291, 19, 13, 4, 7, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (292, 19, 19, 2, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (293, 19, 56, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (294, 19, 74, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (295, 19, 40, 2, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (296, 19, 4, 1, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (297, 19, 15, 2, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (298, 19, 16, 2, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (299, 19, 28, 1, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (300, 19, 20, 6, 9, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (301, 5, 5, 1083, 683, 1079)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (302, 5, 6, 83, 83, 83)
GO
print 'Processed 300 total records'
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (303, 5, 71, 350, 120, 350)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (304, 5, 38, 723, 115, 723)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (305, 5, 1, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (306, 5, 15, 7, 9, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (307, 5, 77, 3, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (308, 5, 42, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (309, 5, 30, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (310, 5, 39, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (311, 5, 43, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (312, 5, 48, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (313, 5, 88, 1, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (314, 5, 68, 3, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (315, 5, 45, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (316, 5, 82, 4, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (317, 5, 54, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (318, 5, 65, 3, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (319, 5, 19, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (320, 5, 81, 2, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (321, 5, 75, 3, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (322, 5, 64, 2, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (323, 5, 10, 5, 6, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (324, 5, 9, 1, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (325, 5, 29, 3, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (326, 20, 25, 4, 4, 2)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (327, 20, 61, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (328, 20, 36, 3, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (329, 20, 13, 2, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (330, 20, 4, 1, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (331, 20, 88, 4, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (332, 20, 28, 2, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (333, 20, 34, 2, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (334, 20, 7, 1, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (335, 20, 62, 3, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (336, 20, 58, 2, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (337, 20, 17, 1, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (338, 20, 51, 2, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (339, 20, 30, 2, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (340, 20, 24, 1, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (341, 21, 84, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (342, 21, 67, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (343, 21, 75, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (344, 21, 40, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (345, 21, 77, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (346, 21, 10, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (347, 21, 4, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (348, 21, 20, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (349, 21, 5, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (350, 21, 6, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (351, 21, 26, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (352, 21, 17, 4, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (353, 21, 32, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (354, 21, 1, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (355, 21, 60, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (356, 21, 19, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (357, 21, 42, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (358, 22, 26, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (359, 22, 18, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (360, 22, 22, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (361, 22, 40, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (362, 22, 3, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (363, 22, 5, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (364, 22, 19, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (365, 22, 2, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (366, 22, 21, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (367, 22, 17, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (368, 22, 32, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (369, 22, 8, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (370, 22, 74, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (371, 22, 88, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (372, 22, 68, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (373, 22, 14, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (374, 22, 41, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (375, 23, 38, 3, 2, 1)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (376, 23, 17, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (377, 23, 7, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (378, 23, 76, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (379, 23, 14, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (380, 23, 12, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (381, 23, 23, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (382, 23, 75, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (383, 23, 68, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (384, 23, 41, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (385, 23, 44, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (386, 23, 19, 5, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (387, 23, 46, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (388, 23, 67, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (389, 23, 43, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (390, 23, 11, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (391, 23, 48, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (392, 24, 18, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (393, 24, 3, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (394, 24, 20, 5, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (395, 24, 47, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (396, 24, 13, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (397, 24, 73, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (398, 24, 8, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (399, 24, 75, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (400, 24, 39, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (401, 24, 17, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (402, 24, 79, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (403, 24, 23, 4, 4, 0)
GO
print 'Processed 400 total records'
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (404, 24, 10, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (405, 24, 77, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (406, 24, 42, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (407, 25, 20, 4, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (408, 25, 13, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (409, 25, 21, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (410, 25, 22, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (411, 25, 11, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (412, 25, 77, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (413, 25, 18, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (414, 26, 5, 402, 402, 402)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (415, 26, 71, 230, 120, 230)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (416, 26, 38, 608, 115, 608)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (417, 26, 25, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (418, 26, 82, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (419, 26, 54, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (420, 26, 65, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (421, 26, 19, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (422, 26, 81, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (423, 26, 75, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (424, 26, 15, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (425, 26, 64, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (426, 26, 10, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (427, 26, 9, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (428, 27, 25, 4, 4, 2)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (429, 27, 61, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (430, 27, 36, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (431, 27, 13, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (432, 27, 4, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (433, 27, 88, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (434, 27, 28, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (435, 27, 34, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (436, 27, 7, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (437, 28, 84, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (438, 28, 67, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (439, 28, 75, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (440, 28, 40, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (441, 28, 77, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (442, 28, 10, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (443, 28, 4, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (444, 28, 20, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (445, 28, 5, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (446, 28, 6, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (447, 28, 26, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (448, 28, 17, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (449, 28, 32, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (450, 28, 1, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (451, 28, 60, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (452, 28, 19, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (453, 28, 42, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (454, 29, 26, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (455, 29, 18, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (456, 29, 22, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (457, 29, 40, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (458, 29, 3, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (459, 29, 5, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (460, 29, 19, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (461, 29, 2, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (462, 29, 21, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (463, 29, 17, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (464, 29, 32, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (465, 29, 8, 4, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (466, 29, 74, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (467, 29, 88, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (468, 29, 68, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (469, 29, 14, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (470, 29, 41, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (471, 30, 38, 3, 2, 1)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (472, 30, 17, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (473, 30, 7, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (474, 30, 76, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (475, 30, 14, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (476, 30, 12, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (477, 30, 23, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (478, 30, 75, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (479, 30, 68, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (480, 30, 41, 4, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (481, 30, 44, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (482, 30, 19, 6, 6, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (483, 30, 46, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (484, 30, 67, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (485, 30, 43, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (486, 30, 11, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (487, 30, 48, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (488, 31, 18, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (489, 31, 3, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (490, 31, 20, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (491, 31, 47, 4, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (492, 31, 13, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (493, 31, 73, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (494, 31, 8, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (495, 31, 75, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (496, 31, 39, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (497, 31, 17, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (498, 31, 79, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (499, 31, 23, 4, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (500, 31, 10, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (501, 31, 77, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (502, 31, 42, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (503, 32, 20, 4, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (504, 32, 13, 2, 2, 0)
GO
print 'Processed 500 total records'
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (505, 32, 21, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (506, 33, 71, 110, 60, 110)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (507, 33, 38, 493, 418, 493)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (508, 33, 25, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (509, 34, 71, 50, 40, 50)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (510, 34, 38, 75, 0, 75)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (511, 35, 6, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (512, 35, 3, 8, 8, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (513, 35, 1, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (514, 35, 24, 17, 17, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (515, 35, 4, 5, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (516, 35, 17, 10, 10, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (517, 35, 33, 20, 20, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (518, 35, 53, 5, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (519, 35, 15, 14, 14, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (520, 35, 55, 20, 20, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (521, 35, 18, 15, 15, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (522, 4, 6, 10, 19, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (523, 4, 71, 10, 10, 10)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (524, 4, 38, 75, 40, 75)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (525, 4, 1, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (526, 4, 5, 3, 0, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (527, 4, 4, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (528, 36, 37, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (529, 36, 50, 5, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (530, 37, 23, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (531, 37, 38, 35, 0, 35)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (532, 37, 5, 7, 7, 3)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (533, 37, 52, 4, 4, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (534, 37, 17, 11, 11, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (535, 37, 68, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (536, 37, 56, 10, 10, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (537, 37, 80, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (538, 37, 32, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (539, 37, 8, 9, 9, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (540, 37, 21, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (541, 37, 75, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (542, 37, 19, 5, 5, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (543, 37, 15, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (544, 37, 55, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (545, 37, 31, 2, 2, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (546, 37, 7, 1, 401, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (547, 37, 25, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (548, 37, 4, 3, 3, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (549, 37, 3, 1, 1, 0)
INSERT [dbo].[DisbursementDetails] ([id], [disbursement], [stationery], [requested_quantity], [fulfilled_quantity], [previous_unfulfilled_quantity]) VALUES (550, 37, 2, 1000, 454, 0)
SET IDENTITY_INSERT [dbo].[DisbursementDetails] OFF
/****** Object:  Table [dbo].[OAuth]    Script Date: 09/17/2013 16:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OAuth](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_obj] [int] NOT NULL,
	[access_token] [varchar](500) NOT NULL,
 CONSTRAINT [PK_auth] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[OAuth] ON
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (8, 2, N'M6UZZKIKOHOK6DOZHDKC')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (9, 2, N'2LB7YOVBYR95D4P7Z35D')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (10, 2, N'LXCJY9W1CURO9HVCKU8O')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (11, 11, N'NNW5TUG7MK7Q54G7RGTU')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (12, 11, N'PU3WG8Y3FN8STWRBAWST')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (13, 11, N'E0EOM20GDB04EBYWN8WJ')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (14, 10, N'I92T0FR4QBAU6ED1M2Y7')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (15, 10, N'HOEAGBNWN4LD64MDB468')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (16, 2, N'WTAUZ7ZME540P4Q8MUOX')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (24, 2, N'UGCUTYZHYC8WAXKT0AA5')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (28, 2, N'OQ9LP2G620ZCK6MTK69E')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (35, 10, N'XGYTECZEWALJEDJSYRQT')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (36, 10, N'EHSVHWTMFLJ6FCH4DNQ0')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (37, 10, N'30EDAZUG5J6B83QJGZPE')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (38, 10, N'XZDZEC2CP2FFXVZ64EDE')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (45, 10, N'WP9M1Z4C51UJ1A40F7QK')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (48, 2, N'KNDH98RNWZG3HFB50MXG')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (50, 11, N'FKV47VJ3J8BCKEKOLVLV')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (53, 11, N'91M52XEXLAHQQ8U1LSO3')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (54, 11, N'HNZ4HKC0PVHD0DHYUJ9F')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (55, 11, N'03W3WPLH6A2LJ11UNMB1')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (56, 21, N'VDG7WQVN9R5VT6SQBPA2')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (57, 21, N'GN4JYZKA9O666974UGFL')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (58, 11, N'UH1O3NN6GJAI477A30YX')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (59, 21, N'NICBBEFWUL3NBZCVVTAN')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (61, 21, N'596N21QN2EZ9IPDIS8W5')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (62, 11, N'EBEP2UPASA7GVVQM3FDY')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (65, 4, N'QDL4E6AF154P1LCVO84U')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (73, 11, N'PWU6QVV35TKW32T1Y4XQ')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (75, 4, N'G6KTX2XUBLPVOQ46M1BN')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (77, 21, N'2XROUBRJ78680PGXRQG6')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (80, 21, N'2FWV36HN7O39FUHS2KAZ')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (83, 11, N'5V3XIK2GNNW5Z4FRWS8Q')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (88, 4, N'5SKBQG9WO18G3W6LGY1C')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (89, 11, N'7I361EUM5MUSQM58QDJX')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (90, 21, N'CI2D6IJ4GRQ1ZLLW0AJ0')
INSERT [dbo].[OAuth] ([id], [user_obj], [access_token]) VALUES (92, 2, N'XRX510QCXSVO541K48EQ')
SET IDENTITY_INSERT [dbo].[OAuth] OFF
/****** Object:  View [dbo].[Inventorhy_Status_Report_View]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Inventorhy_Status_Report_View]
AS
SELECT  dbo.Stationery.code, dbo.Stationery.stationery_name, dbo.Stationery.bin, dbo.Stationery.unit_of_measure, dbo.StockTransaction.balance, dbo.Stationery.reorder_level, dbo.StockTransaction.datetime_inserted
FROM     dbo.Stationery INNER JOIN
               dbo.StockTransaction ON dbo.Stationery.id = dbo.StockTransaction.stationery
GROUP BY dbo.Stationery.code, dbo.Stationery.stationery_name, dbo.Stationery.bin, dbo.Stationery.unit_of_measure, dbo.Stationery.reorder_level, dbo.StockTransaction.datetime_inserted, dbo.StockTransaction.balance
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Stationery"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 160
               Right = 316
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "StockTransaction"
            Begin Extent = 
               Top = 6
               Left = 354
               Bottom = 160
               Right = 559
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Inventorhy_Status_Report_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Inventorhy_Status_Report_View'
GO
/****** Object:  View [dbo].[GetDepartmentInfo]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[GetDepartmentInfo]
AS
SELECT     dbo.Department.*, dbo.[User].username, dbo.CollectionPoint.name
FROM         dbo.Department LEFT OUTER JOIN
                      dbo.CollectionPoint ON dbo.Department.collection_point = dbo.CollectionPoint.id LEFT OUTER JOIN
                      dbo.[User] ON dbo.Department.department_head = dbo.[User].id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[47] 4[10] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Department"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 221
               Right = 230
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "User"
            Begin Extent = 
               Top = 1
               Left = 463
               Bottom = 119
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CollectionPoint"
            Begin Extent = 
               Top = 163
               Left = 345
               Bottom = 251
               Right = 505
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 13
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2415
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GetDepartmentInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GetDepartmentInfo'
GO
/****** Object:  View [dbo].[GetDepartmentFulfillment]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[GetDepartmentFulfillment]
AS
SELECT     dbo.Department.department_name, dbo.Department.id
FROM         dbo.RequisitionFullfillment INNER JOIN
                      dbo.Department ON dbo.RequisitionFullfillment.department = dbo.Department.id
GROUP BY dbo.Department.department_name, dbo.Department.id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RequisitionFullfillment"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 124
               Right = 238
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Department"
            Begin Extent = 
               Top = 6
               Left = 276
               Bottom = 124
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GetDepartmentFulfillment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GetDepartmentFulfillment'
GO
/****** Object:  View [dbo].[Fulfillment_View]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Fulfillment_View]
AS
SELECT     dbo.RequisitionFullfillment.id, dbo.RequisitionFullfillment.department, dbo.RequisitionFullfillment.stationery, dbo.Stationery.stationery_name, 
                      dbo.RequisitionFullfillment.requested_quantity, dbo.RequisitionFullfillment.fulfill_quantity, dbo.RequisitionFullfillment.unfulfill_quantity, 
                      dbo.Stationery.quantity_in_stock - dbo.Stationery.pending_quantity_to_distribute + dbo.RequisitionFullfillment.fulfill_quantity AS stock_control
FROM         dbo.Department INNER JOIN
                      dbo.RequisitionFullfillment ON dbo.Department.id = dbo.RequisitionFullfillment.department INNER JOIN
                      dbo.Stationery ON dbo.RequisitionFullfillment.stationery = dbo.Stationery.id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Department"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 124
               Right = 230
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RequisitionFullfillment"
            Begin Extent = 
               Top = 6
               Left = 268
               Bottom = 124
               Right = 452
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stationery"
            Begin Extent = 
               Top = 6
               Left = 490
               Bottom = 124
               Right = 730
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Fulfillment_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Fulfillment_View'
GO
/****** Object:  View [dbo].[Discrepancy_View]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Discrepancy_View]
AS
SELECT     dbo.Discrepancy.id, dbo.Discrepancy.quantity, dbo.Discrepancy.remark, dbo.Discrepancy.datetime_reported, dbo.Discrepancy.status, 
                      dbo.Stationery.stationery_name, dbo.Stationery.code, dbo.Stationery.price
FROM         dbo.Discrepancy INNER JOIN
                      dbo.Stationery ON dbo.Discrepancy.stationery = dbo.Stationery.id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Discrepancy"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 217
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Stationery"
            Begin Extent = 
               Top = 6
               Left = 255
               Bottom = 125
               Right = 495
            End
            DisplayFlags = 280
            TopColumn = 10
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Discrepancy_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Discrepancy_View'
GO
/****** Object:  Table [dbo].[Requisition]    Script Date: 09/17/2013 16:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requisition](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stationery] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[user_obj] [int] NOT NULL,
	[status] [int] NOT NULL,
	[reject_remark] [nvarchar](100) NULL,
	[datetime_requested] [datetime] NOT NULL,
	[department] [int] NOT NULL,
	[user_approved_by] [int] NULL,
 CONSTRAINT [PK_Requisitions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Requisition] ON
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (15, 1, 1, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (22, 15, 3, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (23, 39, 1, 11, 2, N'gghhhh', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (24, 30, 1, 11, 2, N'too many quantities ordered', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (25, 25, 1, 11, 2, N'order too less', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (26, 1, 2, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 17)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (27, 25, 3, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (28, 10, 6, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (29, 17, 8, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 11)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (30, 26, 5, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 10)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (31, 57, 8, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 10)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (32, 16, 3, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 10)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (33, 6, 4, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (34, 4, 3, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (35, 55, 5, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (36, 4, 3, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (37, 7, 4, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 10)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (38, 1, 1, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 10)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (39, 17, 2, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 10)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (40, 20, 2, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 10)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (41, 5, 6, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 10)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (43, 32, 1, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (44, 5, 1, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (46, 76, 1, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 10)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (47, 22, 1, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (48, 5, 9, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 10)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (49, 38, 4, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 10)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (50, 5, 8, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 10)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (51, 5, 3, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 10)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (52, 4, 2, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 10)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (53, 5, 3, 15, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (54, 6, 1, 15, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (55, 17, 3, 15, 2, N'Inappropriate amount.', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (56, 19, 1, 15, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 10)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (59, 1, 1, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 10)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (61, 6, 2, 17, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (62, 6, 1, 17, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (63, 3, 1, 17, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (64, 1, 3, 17, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (65, 24, 1, 17, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (66, 6, 1, 17, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (67, 28, 1, 17, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (68, 13, 4, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (69, 25, 3, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 10)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (70, 25, 3, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (71, 7, 3, 15, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (72, 16, 4, 15, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (73, 26, 3, 18, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (74, 16, 20, 23, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (75, 1, 13, 23, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (76, 27, 1, 23, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (77, 9, 1, 23, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (78, 26, 10, 23, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (79, 32, 25, 23, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (80, 6, 2, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (81, 6, 2, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (82, 71, 3, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (83, 32, 1, 11, 2, N'Too many quantity', CAST(0x0000A1E40125F45F AS DateTime), 8, 17)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (84, 24, 10, 24, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (85, 24, 6, 24, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (86, 4, 5, 24, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (87, 17, 10, 24, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (88, 33, 20, 24, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (89, 53, 5, 24, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (90, 29, 20, 25, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (91, 28, 5, 25, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (92, 40, 10, 25, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (93, 15, 8, 25, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (94, 19, 9, 25, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (95, 3, 7, 25, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (96, 55, 20, 26, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (97, 15, 6, 26, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (98, 18, 15, 26, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (99, 11, 10, 26, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (100, 6, 5, 26, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (101, 19, 10, 26, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (102, 13, 10, 27, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (103, 8, 15, 27, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (104, 1, 5, 27, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (105, 18, 10, 27, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (106, 24, 7, 27, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (107, 2, 9, 27, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (108, 6, 10, 28, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (109, 40, 20, 28, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (110, 18, 7, 28, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (111, 2, 5, 28, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (112, 6, 7, 28, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (113, 16, 9, 28, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (114, 2, 10, 29, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (115, 7, 5, 29, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (116, 15, 15, 29, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (117, 12, 20, 29, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (118, 1, 15, 29, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (119, 28, 13, 29, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (120, 24, 5, 23, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (121, 35, 10, 23, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (122, 12, 15, 23, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (123, 14, 7, 23, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (124, 5, 20, 23, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (125, 89, 1, 22, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 9, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (126, 27, 1, 17, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (127, 4, 2, 17, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (128, 49, 3, 17, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (129, 64, 2, 17, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (130, 62, 1, 17, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (131, 37, 1, 17, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (132, 82, 1, 17, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (133, 6, 3, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (134, 29, 8, 11, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (135, 33, 1, 18, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (136, 25, 1, 18, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (137, 3, 1, 18, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (138, 13, 1, 18, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (139, 41, 1, 18, 4, N'', CAST(0x0000A1E40125F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (140, 77, 2, 18, 4, N'', CAST(0x0000A1E4012A8CD2 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (141, 84, 2, 30, 4, N'', CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (142, 67, 1, 30, 4, N'', CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (143, 75, 2, 30, 4, N'', CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (144, 40, 1, 30, 4, N'', CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (145, 77, 1, 30, 4, N'', CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (146, 10, 2, 30, 4, N'', CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (147, 4, 2, 30, 4, N'', CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (148, 20, 3, 30, 4, N'', CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (149, 5, 2, 30, 4, N'', CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (150, 6, 1, 30, 4, N'', CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (151, 26, 2, 31, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (152, 17, 1, 31, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (153, 32, 4, 31, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (154, 1, 2, 31, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (155, 17, 2, 31, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (156, 60, 1, 31, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (157, 40, 3, 31, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (158, 19, 3, 31, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (159, 42, 2, 31, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (160, 67, 1, 31, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (161, 26, 2, 32, 0, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (162, 18, 2, 32, 0, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (163, 22, 1, 32, 0, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (164, 40, 3, 32, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (165, 3, 2, 32, 0, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (166, 5, 1, 32, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (167, 19, 2, 32, 0, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (168, 2, 1, 32, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (169, 21, 2, 32, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (170, 17, 1, 32, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (171, 26, 1, 33, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (172, 17, 2, 33, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (173, 32, 1, 33, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (174, 8, 3, 33, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (175, 74, 2, 33, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (176, 88, 1, 33, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (177, 68, 2, 33, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (178, 14, 2, 33, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (179, 8, 2, 33, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (180, 41, 1, 33, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (181, 17, 1, 34, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (182, 7, 3, 34, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (183, 76, 2, 34, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (184, 14, 2, 34, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (185, 12, 2, 34, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (186, 23, 1, 34, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (187, 75, 2, 34, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (188, 68, 2, 34, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (189, 41, 1, 34, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (190, 44, 2, 34, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (191, 19, 1, 35, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (192, 19, 3, 35, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (193, 41, 2, 35, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (194, 46, 2, 35, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (195, 67, 2, 35, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (196, 19, 1, 35, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (197, 43, 1, 35, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (198, 11, 4, 35, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (199, 38, 1, 35, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (200, 48, 1, 35, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (201, 18, 1, 36, 0, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (202, 3, 3, 36, 0, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (203, 20, 2, 36, 0, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (204, 47, 2, 36, 0, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (205, 13, 2, 36, 0, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (206, 73, 1, 36, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (207, 8, 1, 36, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (208, 75, 3, 36, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (209, 39, 3, 36, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (210, 20, 2, 36, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (211, 17, 2, 37, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (212, 47, 2, 37, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (213, 79, 2, 37, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (214, 25, 2, 11, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (215, 23, 1, 37, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (216, 10, 2, 37, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (217, 23, 1, 37, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (218, 77, 2, 37, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (219, 23, 1, 37, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (220, 42, 1, 37, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (221, 20, 1, 37, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (222, 20, 1, 38, 0, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (223, 20, 3, 38, 0, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (224, 13, 3, 38, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (225, 21, 1, 38, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (226, 22, 1, 38, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (227, 11, 3, 38, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (228, 77, 1, 38, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (229, 18, 1, 38, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (230, 67, 1, 38, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (231, 11, 4, 38, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (232, 18, 2, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (233, 8, 3, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (234, 76, 3, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (235, 78, 2, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (236, 18, 1, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (237, 43, 3, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (238, 77, 3, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (239, 7, 3, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (240, 75, 2, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (241, 63, 2, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (242, 3, 2, 38, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (243, 2, 2, 38, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (244, 7, 2, 38, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (245, 17, 2, 38, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (246, 78, 1, 38, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (247, 13, 2, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (248, 11, 2, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (249, 19, 2, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (250, 67, 2, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (251, 56, 1, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (252, 38, 2, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (253, 74, 1, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (254, 18, 2, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (255, 3, 1, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (256, 40, 2, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (257, 6, 2, 39, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (258, 24, 1, 11, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (259, 42, 1, 11, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (260, 4, 1, 38, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (261, 77, 1, 11, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (262, 15, 2, 38, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (263, 16, 2, 38, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (264, 5, 1, 38, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (265, 28, 1, 38, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (266, 35, 1, 11, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (267, 30, 1, 11, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (268, 39, 1, 11, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (269, 25, 2, 17, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (270, 25, 2, 17, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (271, 43, 1, 17, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (272, 48, 1, 17, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (273, 88, 1, 17, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (274, 68, 3, 17, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (275, 45, 1, 17, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (276, 82, 4, 17, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (277, 54, 1, 15, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (278, 65, 3, 15, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (279, 19, 1, 15, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (280, 81, 2, 15, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (281, 75, 3, 15, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (282, 15, 4, 15, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (283, 64, 2, 15, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (284, 10, 5, 19, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (285, 9, 1, 19, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (286, 61, 1, 29, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (287, 36, 3, 29, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (288, 13, 2, 29, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (289, 4, 1, 29, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (290, 88, 4, 29, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (291, 25, 2, 29, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (292, 28, 2, 29, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (293, 34, 2, 25, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (294, 7, 1, 25, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (295, 62, 3, 25, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (296, 58, 2, 25, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (297, 17, 1, 25, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (298, 51, 2, 25, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (299, 30, 2, 25, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (300, 24, 1, 25, 4, NULL, CAST(0x0000A1E4012A8CD2 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (301, 25, 3, 11, 4, NULL, CAST(0x0000A23A0033D05A AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (302, 29, 3, 11, 4, NULL, CAST(0x0000A23A0034F439 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (303, 5, 4, 11, 4, N'rejected', CAST(0x0000A23A00369AC2 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (304, 84, 2, 30, 4, NULL, CAST(0x0000A1F2013267A1 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (305, 67, 2, 30, 4, NULL, CAST(0x0000A1F2013267A2 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (306, 75, 3, 30, 4, NULL, CAST(0x0000A1F2013267A2 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (307, 40, 3, 30, 4, NULL, CAST(0x0000A1F2013267A3 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (308, 77, 2, 30, 4, NULL, CAST(0x0000A1F2013267A4 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (309, 10, 3, 30, 4, NULL, CAST(0x0000A1F2013267A5 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (310, 4, 3, 30, 4, NULL, CAST(0x0000A1F2013267A6 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (311, 20, 3, 30, 4, NULL, CAST(0x0000A1F2013267A6 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (312, 5, 3, 30, 4, NULL, CAST(0x0000A1F2013267A7 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (313, 6, 3, 30, 4, NULL, CAST(0x0000A1F2013267A8 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (314, 26, 1, 31, 4, NULL, CAST(0x0000A1F2013267A9 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (315, 17, 3, 31, 4, NULL, CAST(0x0000A1F2013267A9 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (316, 32, 1, 31, 4, NULL, CAST(0x0000A1F2013267AA AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (317, 1, 1, 31, 4, NULL, CAST(0x0000A1F2013267AB AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (318, 17, 3, 31, 4, NULL, CAST(0x0000A1F2013267AB AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (319, 60, 3, 31, 4, NULL, CAST(0x0000A1F2013267AC AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (320, 40, 3, 31, 4, NULL, CAST(0x0000A1F2013267AD AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (321, 19, 2, 31, 4, NULL, CAST(0x0000A1F2013267AE AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (322, 42, 1, 31, 4, NULL, CAST(0x0000A1F2013267AE AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (323, 67, 2, 31, 4, NULL, CAST(0x0000A1F2013267AF AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (324, 26, 2, 32, 4, NULL, CAST(0x0000A1F2013267B0 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (325, 18, 3, 32, 4, NULL, CAST(0x0000A1F2013267B1 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (326, 22, 1, 32, 4, NULL, CAST(0x0000A1F2013267B1 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (327, 40, 2, 32, 4, NULL, CAST(0x0000A1F2013267B2 AS DateTime), 4, NULL)
GO
print 'Processed 300 total records'
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (328, 3, 3, 32, 4, NULL, CAST(0x0000A1F2013267B3 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (329, 5, 1, 32, 4, NULL, CAST(0x0000A1F2013267B3 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (330, 19, 3, 32, 4, NULL, CAST(0x0000A1F2013267B4 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (331, 2, 3, 32, 4, NULL, CAST(0x0000A1F2013267B5 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (332, 21, 3, 32, 4, NULL, CAST(0x0000A1F2013267B6 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (333, 17, 1, 32, 4, NULL, CAST(0x0000A1F2013267B6 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (334, 26, 3, 33, 4, NULL, CAST(0x0000A1F2013267B7 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (335, 17, 3, 33, 4, NULL, CAST(0x0000A1F2013267B8 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (336, 32, 1, 33, 4, NULL, CAST(0x0000A1F2013267B9 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (337, 8, 3, 33, 4, NULL, CAST(0x0000A1F2013267B9 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (338, 74, 2, 33, 4, NULL, CAST(0x0000A1F2013267BA AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (339, 88, 1, 33, 4, NULL, CAST(0x0000A1F2013267BB AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (340, 68, 3, 33, 4, NULL, CAST(0x0000A1F2013267BB AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (341, 14, 3, 33, 4, NULL, CAST(0x0000A1F2013267BC AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (342, 8, 1, 33, 4, NULL, CAST(0x0000A1F2013267BD AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (343, 41, 3, 33, 4, NULL, CAST(0x0000A1F2013267BE AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (344, 17, 2, 34, 4, NULL, CAST(0x0000A1F2013267BE AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (345, 7, 2, 34, 4, NULL, CAST(0x0000A1F2013267BF AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (346, 76, 1, 34, 4, NULL, CAST(0x0000A1F2013267C0 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (347, 14, 3, 34, 4, NULL, CAST(0x0000A1F2013267C1 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (348, 12, 1, 34, 4, NULL, CAST(0x0000A1F2013267C2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (349, 23, 2, 34, 4, NULL, CAST(0x0000A1F2013267C3 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (350, 75, 2, 34, 4, NULL, CAST(0x0000A1F2013267C3 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (351, 68, 3, 34, 4, NULL, CAST(0x0000A1F2013267C4 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (352, 41, 1, 34, 4, NULL, CAST(0x0000A1F2013267C5 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (353, 44, 2, 34, 4, NULL, CAST(0x0000A1F2013267C6 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (354, 19, 1, 35, 4, NULL, CAST(0x0000A1F2013267C7 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (355, 19, 2, 35, 4, NULL, CAST(0x0000A1F2013267C7 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (356, 41, 1, 35, 4, NULL, CAST(0x0000A1F2013267C8 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (357, 46, 2, 35, 4, NULL, CAST(0x0000A1F2013267C9 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (358, 67, 1, 35, 4, NULL, CAST(0x0000A1F2013267CA AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (359, 19, 2, 35, 4, NULL, CAST(0x0000A1F2013267CA AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (360, 43, 1, 35, 4, NULL, CAST(0x0000A1F2013267CB AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (361, 11, 1, 35, 4, NULL, CAST(0x0000A1F2013267CC AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (362, 38, 1, 35, 4, NULL, CAST(0x0000A1F2013267CD AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (363, 48, 2, 35, 4, NULL, CAST(0x0000A1F2013267CD AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (364, 18, 1, 36, 4, NULL, CAST(0x0000A1F2013267CE AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (365, 3, 1, 36, 4, NULL, CAST(0x0000A1F2013267CF AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (366, 20, 3, 36, 4, NULL, CAST(0x0000A1F2013267D0 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (367, 47, 2, 36, 4, NULL, CAST(0x0000A1F2013267D0 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (368, 13, 3, 36, 4, NULL, CAST(0x0000A1F2013267D1 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (369, 73, 1, 36, 4, NULL, CAST(0x0000A1F2013267D2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (370, 8, 3, 36, 4, NULL, CAST(0x0000A1F2013267D3 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (371, 75, 2, 36, 4, NULL, CAST(0x0000A1F2013267D3 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (372, 39, 2, 36, 4, NULL, CAST(0x0000A1F2013267D4 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (373, 20, 3, 36, 4, NULL, CAST(0x0000A1F2013267D5 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (374, 17, 1, 37, 4, NULL, CAST(0x0000A1F2013267D6 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (375, 47, 3, 37, 4, NULL, CAST(0x0000A1F2013267D6 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (376, 79, 1, 37, 4, NULL, CAST(0x0000A1F2013267D7 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (377, 25, 2, 11, 4, NULL, CAST(0x0000A1F2013267D8 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (378, 23, 3, 37, 4, NULL, CAST(0x0000A1F2013267D9 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (379, 10, 1, 37, 4, NULL, CAST(0x0000A1F2013267D9 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (380, 23, 3, 37, 4, NULL, CAST(0x0000A1F2013267DA AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (381, 77, 1, 37, 4, NULL, CAST(0x0000A1F2013267DB AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (382, 23, 1, 37, 4, NULL, CAST(0x0000A1F2013267DC AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (383, 42, 2, 37, 4, NULL, CAST(0x0000A1F2013267DC AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (384, 20, 2, 37, 4, NULL, CAST(0x0000A1F2013267DD AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (385, 20, 3, 38, 4, NULL, CAST(0x0000A1F2013267DE AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (386, 20, 3, 38, 4, NULL, CAST(0x0000A1F2013267DF AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (387, 13, 2, 38, 4, NULL, CAST(0x0000A1F2013267DF AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (388, 21, 3, 38, 4, NULL, CAST(0x0000A1F2013267E0 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (389, 21, 1, 38, 4, NULL, CAST(0x0000A1F201360C05 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (390, 22, 1, 38, 4, NULL, CAST(0x0000A1F201360C06 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (391, 11, 2, 38, 4, NULL, CAST(0x0000A1F201360C07 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (392, 77, 2, 38, 4, NULL, CAST(0x0000A1F201360C09 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (393, 18, 1, 38, 4, NULL, CAST(0x0000A1F201360C0A AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (394, 67, 2, 38, 4, NULL, CAST(0x0000A1F201360C0B AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (395, 11, 1, 38, 4, NULL, CAST(0x0000A1F201360C0D AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (396, 18, 1, 39, 4, NULL, CAST(0x0000A1F201360C0E AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (397, 8, 2, 39, 4, NULL, CAST(0x0000A1F201360C0F AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (398, 76, 1, 39, 4, NULL, CAST(0x0000A1F201360C10 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (399, 78, 2, 39, 4, NULL, CAST(0x0000A1F201360C12 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (400, 18, 2, 39, 4, NULL, CAST(0x0000A1F201360C13 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (401, 43, 2, 39, 4, NULL, CAST(0x0000A1F201360C14 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (402, 77, 2, 39, 4, NULL, CAST(0x0000A1F201360C15 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (403, 7, 1, 39, 4, NULL, CAST(0x0000A1F201360C16 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (404, 75, 2, 39, 4, NULL, CAST(0x0000A1F201360C18 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (405, 63, 1, 39, 4, NULL, CAST(0x0000A1F201360C19 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (406, 3, 2, 38, 4, NULL, CAST(0x0000A1F201360C1A AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (407, 2, 2, 38, 4, NULL, CAST(0x0000A1F201360C1C AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (408, 7, 2, 38, 4, NULL, CAST(0x0000A1F201360C1D AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (409, 17, 2, 38, 4, NULL, CAST(0x0000A1F201360C1E AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (410, 78, 2, 38, 4, NULL, CAST(0x0000A1F201360C1F AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (411, 13, 1, 39, 4, NULL, CAST(0x0000A1F201360C20 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (412, 11, 2, 39, 4, NULL, CAST(0x0000A1F201360C22 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (413, 19, 2, 39, 4, NULL, CAST(0x0000A1F201360C23 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (414, 67, 1, 39, 4, NULL, CAST(0x0000A1F201360C25 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (415, 56, 2, 39, 4, NULL, CAST(0x0000A1F201360C26 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (416, 38, 2, 39, 4, NULL, CAST(0x0000A1F201360C27 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (417, 74, 2, 39, 4, NULL, CAST(0x0000A1F201360C28 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (418, 18, 2, 39, 4, NULL, CAST(0x0000A1F201360C2A AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (419, 3, 2, 39, 4, NULL, CAST(0x0000A1F201360C2B AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (420, 40, 2, 39, 4, NULL, CAST(0x0000A1F201360C2C AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (421, 6, 1, 39, 4, NULL, CAST(0x0000A1F201360C2E AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (422, 24, 1, 11, 4, NULL, CAST(0x0000A1F201360C2F AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (423, 42, 2, 11, 4, NULL, CAST(0x0000A1F201360C30 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (424, 4, 1, 38, 4, NULL, CAST(0x0000A1F201360C32 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (425, 77, 1, 11, 4, NULL, CAST(0x0000A1F201360C33 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (426, 15, 2, 38, 4, NULL, CAST(0x0000A1F201360C34 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (427, 16, 2, 38, 4, NULL, CAST(0x0000A1F201360C35 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (428, 5, 2, 38, 4, NULL, CAST(0x0000A1F201360C37 AS DateTime), 7, NULL)
GO
print 'Processed 400 total records'
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (429, 28, 1, 38, 4, NULL, CAST(0x0000A1F201360C38 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (430, 35, 1, 11, 4, NULL, CAST(0x0000A1F201360C39 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (431, 30, 2, 11, 4, NULL, CAST(0x0000A1F201360C3A AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (432, 39, 2, 11, 4, NULL, CAST(0x0000A1F201360C3C AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (433, 25, 2, 17, 4, NULL, CAST(0x0000A1F201360C3D AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (434, 25, 1, 17, 4, NULL, CAST(0x0000A1F201360C3E AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (435, 43, 2, 17, 4, NULL, CAST(0x0000A1F201360C40 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (436, 48, 2, 17, 4, NULL, CAST(0x0000A1F201360C41 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (437, 88, 1, 17, 4, NULL, CAST(0x0000A1F201360C42 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (438, 68, 2, 17, 4, NULL, CAST(0x0000A1F201360C43 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (439, 45, 2, 17, 4, NULL, CAST(0x0000A1F201360C45 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (440, 82, 1, 17, 4, NULL, CAST(0x0000A1F201360C46 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (441, 54, 2, 15, 4, NULL, CAST(0x0000A1F201360C47 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (442, 65, 1, 15, 4, NULL, CAST(0x0000A1F201360C49 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (443, 19, 2, 15, 4, NULL, CAST(0x0000A1F201360C4A AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (444, 81, 1, 15, 4, NULL, CAST(0x0000A1F201360C4B AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (445, 75, 2, 15, 4, NULL, CAST(0x0000A1F201360C4D AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (446, 15, 2, 15, 4, NULL, CAST(0x0000A1F201360C4E AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (447, 64, 1, 15, 4, NULL, CAST(0x0000A1F201360C4F AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (448, 10, 1, 19, 4, NULL, CAST(0x0000A1F201360C50 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (449, 9, 1, 19, 4, NULL, CAST(0x0000A1F201360C52 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (450, 61, 2, 29, 4, NULL, CAST(0x0000A1F201360C53 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (451, 36, 1, 29, 4, NULL, CAST(0x0000A1F201360C55 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (452, 13, 2, 29, 4, NULL, CAST(0x0000A1F201360C56 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (453, 4, 1, 29, 4, NULL, CAST(0x0000A1F201360C57 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (454, 88, 1, 29, 4, NULL, CAST(0x0000A1F201360C58 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (455, 25, 2, 29, 4, NULL, CAST(0x0000A1F201360C59 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (456, 28, 1, 29, 4, NULL, CAST(0x0000A1F201360C5B AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (457, 34, 1, 25, 4, NULL, CAST(0x0000A1F201360C5C AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (458, 7, 1, 25, 4, NULL, CAST(0x0000A1F201360C5E AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (459, 62, 2, 25, 4, NULL, CAST(0x0000A1F201360C5F AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (460, 58, 1, 25, 4, NULL, CAST(0x0000A1F201360C60 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (461, 17, 2, 25, 4, NULL, CAST(0x0000A1F201360C61 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (462, 51, 1, 25, 4, NULL, CAST(0x0000A1F201360C63 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (463, 30, 2, 25, 4, NULL, CAST(0x0000A1F201360C64 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (464, 24, 1, 25, 4, NULL, CAST(0x0000A1F201360C65 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (465, 25, 1, 11, 4, NULL, CAST(0x0000A1F201360C67 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (466, 29, 2, 11, 4, NULL, CAST(0x0000A1F201360C68 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (467, 5, 2, 11, 4, NULL, CAST(0x0000A1F201360C69 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (468, 84, 2, 30, 4, NULL, CAST(0x0000A1F201360C6B AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (469, 67, 1, 30, 4, NULL, CAST(0x0000A1F201360C6C AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (470, 75, 2, 30, 4, NULL, CAST(0x0000A1F201360C6D AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (471, 40, 2, 30, 4, NULL, CAST(0x0000A1F201360C6F AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (472, 77, 1, 30, 4, NULL, CAST(0x0000A1F201360C70 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (473, 10, 1, 30, 4, NULL, CAST(0x0000A1F201360C71 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (474, 4, 1, 30, 4, NULL, CAST(0x0000A1F201360C72 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (475, 20, 2, 30, 4, NULL, CAST(0x0000A1F201360C74 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (476, 5, 1, 30, 4, NULL, CAST(0x0000A1F201360C75 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (477, 6, 1, 30, 4, NULL, CAST(0x0000A1F201360C76 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (478, 26, 1, 31, 4, NULL, CAST(0x0000A1F201360C77 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (479, 17, 1, 31, 4, NULL, CAST(0x0000A1F201360C79 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (480, 32, 1, 31, 4, NULL, CAST(0x0000A1F201360C7A AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (481, 1, 2, 31, 4, NULL, CAST(0x0000A1F201360C7B AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (482, 17, 2, 31, 4, NULL, CAST(0x0000A1F201360C7C AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (483, 60, 2, 31, 4, NULL, CAST(0x0000A1F201360C7E AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (484, 40, 2, 31, 4, NULL, CAST(0x0000A1F201360C7F AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (485, 19, 2, 31, 4, NULL, CAST(0x0000A1F201360C80 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (486, 42, 2, 31, 4, NULL, CAST(0x0000A1F201360C82 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (487, 67, 2, 31, 4, NULL, CAST(0x0000A1F201360C83 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (488, 26, 2, 32, 4, NULL, CAST(0x0000A1F201360C85 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (489, 18, 2, 32, 4, NULL, CAST(0x0000A1F201360C86 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (490, 22, 1, 32, 4, NULL, CAST(0x0000A1F201360C87 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (491, 40, 1, 32, 4, NULL, CAST(0x0000A1F201360C88 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (492, 3, 1, 32, 4, NULL, CAST(0x0000A1F201360C8A AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (493, 5, 2, 32, 4, NULL, CAST(0x0000A1F201360C8B AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (494, 19, 1, 32, 4, NULL, CAST(0x0000A1F201360C8C AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (495, 2, 1, 32, 4, NULL, CAST(0x0000A1F201360C8E AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (496, 21, 2, 32, 4, NULL, CAST(0x0000A1F201360C8F AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (497, 17, 1, 32, 4, NULL, CAST(0x0000A1F201360C90 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (498, 26, 2, 33, 4, NULL, CAST(0x0000A1F201360C91 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (499, 17, 1, 33, 4, NULL, CAST(0x0000A1F201360C92 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (500, 32, 1, 33, 4, NULL, CAST(0x0000A1F201360C94 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (501, 8, 1, 33, 4, NULL, CAST(0x0000A1F201360C95 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (502, 74, 1, 33, 4, NULL, CAST(0x0000A1F201360C96 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (503, 88, 2, 33, 4, NULL, CAST(0x0000A1F201360C97 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (504, 68, 1, 33, 4, NULL, CAST(0x0000A1F201360C99 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (505, 14, 1, 33, 4, NULL, CAST(0x0000A1F201360C9A AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (506, 8, 2, 33, 4, NULL, CAST(0x0000A1F201360CA4 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (507, 41, 2, 33, 4, NULL, CAST(0x0000A1F201360CA5 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (508, 17, 1, 34, 4, NULL, CAST(0x0000A1F201360CA6 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (509, 7, 1, 34, 4, NULL, CAST(0x0000A1F201360CA7 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (510, 76, 1, 34, 4, NULL, CAST(0x0000A1F201360CA7 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (511, 14, 1, 34, 4, NULL, CAST(0x0000A1F201360CA8 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (512, 12, 1, 34, 4, NULL, CAST(0x0000A1F201360CA9 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (513, 23, 2, 34, 4, NULL, CAST(0x0000A1F201360CAA AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (514, 75, 2, 34, 4, NULL, CAST(0x0000A1F201360CAA AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (515, 68, 1, 34, 4, NULL, CAST(0x0000A1F201360CAB AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (516, 41, 1, 34, 4, NULL, CAST(0x0000A1F201360CAC AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (517, 44, 2, 34, 4, NULL, CAST(0x0000A1F201360CAD AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (518, 19, 2, 35, 4, NULL, CAST(0x0000A1F201360CAD AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (519, 19, 1, 35, 4, NULL, CAST(0x0000A1F201360CAE AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (520, 41, 2, 35, 4, NULL, CAST(0x0000A1F201360CAF AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (521, 46, 1, 35, 4, NULL, CAST(0x0000A1F201360CB0 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (522, 67, 1, 35, 4, NULL, CAST(0x0000A1F201360CB1 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (523, 19, 1, 35, 4, NULL, CAST(0x0000A1F201360CB1 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (524, 43, 2, 35, 4, NULL, CAST(0x0000A1F201360CB2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (525, 11, 2, 35, 4, NULL, CAST(0x0000A1F201360CB3 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (526, 38, 1, 35, 4, NULL, CAST(0x0000A1F201360CB4 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (527, 48, 2, 35, 4, NULL, CAST(0x0000A1F201360CB4 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (528, 18, 2, 36, 4, NULL, CAST(0x0000A1F201360CB5 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (529, 3, 2, 36, 4, NULL, CAST(0x0000A1F201360CB6 AS DateTime), 6, NULL)
GO
print 'Processed 500 total records'
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (530, 20, 1, 36, 4, NULL, CAST(0x0000A1F201360CB7 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (531, 47, 2, 36, 4, NULL, CAST(0x0000A1F201360CB8 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (532, 13, 2, 36, 4, NULL, CAST(0x0000A1F201360CB8 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (533, 73, 2, 36, 4, NULL, CAST(0x0000A1F201360CBA AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (534, 8, 1, 36, 4, NULL, CAST(0x0000A1F201360CBB AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (535, 75, 2, 36, 4, NULL, CAST(0x0000A1F201360CBB AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (536, 39, 2, 36, 4, NULL, CAST(0x0000A1F201360CBC AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (537, 20, 2, 36, 4, NULL, CAST(0x0000A1F201360CBD AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (538, 17, 1, 37, 4, NULL, CAST(0x0000A1F201360CBE AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (539, 47, 2, 37, 4, NULL, CAST(0x0000A1F201360CBE AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (540, 79, 1, 37, 4, NULL, CAST(0x0000A1F201360CBF AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (541, 25, 2, 11, 4, NULL, CAST(0x0000A1F201360CC0 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (542, 23, 1, 37, 4, NULL, CAST(0x0000A1F201360CC1 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (543, 10, 2, 37, 4, NULL, CAST(0x0000A1F201360CC1 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (544, 23, 1, 37, 4, NULL, CAST(0x0000A1F201360CC2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (545, 77, 1, 37, 4, NULL, CAST(0x0000A1F201360CC3 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (546, 23, 1, 37, 4, NULL, CAST(0x0000A1F201360CC4 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (547, 42, 2, 37, 4, NULL, CAST(0x0000A1F201360CC5 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (548, 20, 2, 37, 4, NULL, CAST(0x0000A1F201360CC5 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (549, 20, 1, 38, 4, NULL, CAST(0x0000A1F201360CC6 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (550, 20, 2, 38, 4, NULL, CAST(0x0000A1F201360CC7 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (551, 13, 2, 38, 4, NULL, CAST(0x0000A1F201360CC8 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (552, 21, 1, 38, 4, NULL, CAST(0x0000A1F201360CC9 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (553, 84, 1, 30, 4, NULL, CAST(0x0000A21C01393AB7 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (554, 67, 1, 30, 4, NULL, CAST(0x0000A21C01393AB7 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (555, 75, 2, 30, 4, NULL, CAST(0x0000A21C01393AB8 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (556, 40, 2, 30, 4, NULL, CAST(0x0000A21C01393AB9 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (557, 77, 1, 30, 4, NULL, CAST(0x0000A21C01393ABA AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (558, 10, 1, 30, 4, NULL, CAST(0x0000A21C01393ABB AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (559, 4, 1, 30, 4, NULL, CAST(0x0000A21C01393ABB AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (560, 20, 2, 30, 4, NULL, CAST(0x0000A21C01393ABC AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (561, 5, 1, 30, 4, NULL, CAST(0x0000A21C01393ABD AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (562, 6, 2, 30, 4, NULL, CAST(0x0000A21C01393ABD AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (563, 26, 1, 31, 4, NULL, CAST(0x0000A21C01393ABE AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (564, 17, 2, 31, 4, NULL, CAST(0x0000A21C01393ABF AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (565, 32, 2, 31, 4, NULL, CAST(0x0000A21C01393AC0 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (566, 1, 1, 31, 4, NULL, CAST(0x0000A21C01393AC1 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (567, 17, 2, 31, 4, NULL, CAST(0x0000A21C01393AC1 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (568, 60, 1, 31, 4, NULL, CAST(0x0000A21C01393AC2 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (569, 40, 1, 31, 4, NULL, CAST(0x0000A21C01393AC3 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (570, 19, 2, 31, 4, NULL, CAST(0x0000A21C01393AC3 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (571, 42, 2, 31, 4, NULL, CAST(0x0000A21C01393AC4 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (572, 67, 2, 31, 4, NULL, CAST(0x0000A21C01393AC5 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (573, 26, 1, 32, 4, NULL, CAST(0x0000A21C01393AC6 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (574, 18, 2, 32, 4, NULL, CAST(0x0000A21C01393AC7 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (575, 22, 1, 32, 4, NULL, CAST(0x0000A21C01393AC7 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (576, 40, 1, 32, 4, NULL, CAST(0x0000A21C01393AC8 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (577, 3, 2, 32, 4, NULL, CAST(0x0000A21C01393AC9 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (578, 5, 2, 32, 4, NULL, CAST(0x0000A21C01393AC9 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (579, 19, 1, 32, 4, NULL, CAST(0x0000A21C01393ACA AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (580, 2, 2, 32, 4, NULL, CAST(0x0000A21C01393ACB AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (581, 21, 1, 32, 4, NULL, CAST(0x0000A21C01393ACC AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (582, 17, 1, 32, 4, NULL, CAST(0x0000A21C01393ACC AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (583, 26, 2, 33, 4, NULL, CAST(0x0000A21C01393ACD AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (584, 17, 2, 33, 4, NULL, CAST(0x0000A21C01393ACE AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (585, 32, 2, 33, 4, NULL, CAST(0x0000A21C01393ACF AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (586, 8, 1, 33, 4, NULL, CAST(0x0000A21C01393ACF AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (587, 74, 2, 33, 4, NULL, CAST(0x0000A21C01393AD0 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (588, 88, 1, 33, 4, NULL, CAST(0x0000A21C01393AD1 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (589, 68, 2, 33, 4, NULL, CAST(0x0000A21C01393AD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (590, 14, 1, 33, 4, NULL, CAST(0x0000A21C01393AD2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (591, 8, 2, 33, 4, NULL, CAST(0x0000A21C01393AD3 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (592, 41, 1, 33, 4, NULL, CAST(0x0000A21C01393AD4 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (593, 17, 1, 34, 4, NULL, CAST(0x0000A21C01393AD5 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (594, 7, 2, 34, 4, NULL, CAST(0x0000A21C01393AD6 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (595, 76, 2, 34, 4, NULL, CAST(0x0000A21C01393AD6 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (596, 14, 2, 34, 4, NULL, CAST(0x0000A21C01393AD7 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (597, 12, 1, 34, 4, NULL, CAST(0x0000A21C01393AD8 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (598, 23, 2, 34, 4, NULL, CAST(0x0000A21C01393AD9 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (599, 75, 2, 34, 4, NULL, CAST(0x0000A21C01393AD9 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (600, 68, 2, 34, 4, NULL, CAST(0x0000A21C01393ADA AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (601, 41, 1, 34, 4, NULL, CAST(0x0000A21C01393ADB AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (602, 44, 1, 34, 4, NULL, CAST(0x0000A21C01393ADC AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (603, 19, 1, 35, 4, NULL, CAST(0x0000A21C01393ADD AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (604, 19, 2, 35, 4, NULL, CAST(0x0000A21C01393ADD AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (605, 41, 2, 35, 4, NULL, CAST(0x0000A21C01393ADE AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (606, 46, 2, 35, 4, NULL, CAST(0x0000A21C01393ADF AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (607, 67, 1, 35, 4, NULL, CAST(0x0000A21C01393AE0 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (608, 19, 2, 35, 4, NULL, CAST(0x0000A21C01393AE0 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (609, 43, 1, 35, 4, NULL, CAST(0x0000A21C01393AE1 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (610, 11, 2, 35, 4, NULL, CAST(0x0000A21C01393AE2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (611, 38, 2, 35, 4, NULL, CAST(0x0000A21C01393AE2 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (612, 48, 2, 35, 4, NULL, CAST(0x0000A21C01393AE3 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (613, 18, 2, 36, 4, NULL, CAST(0x0000A21C01393AE4 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (614, 3, 1, 36, 4, NULL, CAST(0x0000A21C01393AF0 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (615, 20, 2, 36, 4, NULL, CAST(0x0000A21C01393AF1 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (616, 47, 1, 36, 4, NULL, CAST(0x0000A21C01393AF2 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (617, 13, 2, 36, 4, NULL, CAST(0x0000A21C01393AF3 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (618, 73, 2, 36, 4, NULL, CAST(0x0000A21C01393AF3 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (619, 8, 2, 36, 4, NULL, CAST(0x0000A21C01393AF4 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (620, 75, 1, 36, 4, NULL, CAST(0x0000A21C01393AF5 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (621, 39, 2, 36, 4, NULL, CAST(0x0000A21C01393AF6 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (622, 20, 1, 36, 4, NULL, CAST(0x0000A21C01393AF7 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (623, 17, 1, 37, 4, NULL, CAST(0x0000A21C01393AF8 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (624, 47, 2, 37, 4, NULL, CAST(0x0000A21C01393AF9 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (625, 79, 1, 37, 4, NULL, CAST(0x0000A21C01393AF9 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (626, 25, 1, 11, 4, NULL, CAST(0x0000A21C01393AFA AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (627, 23, 2, 37, 4, NULL, CAST(0x0000A21C01393AFB AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (628, 10, 1, 37, 4, NULL, CAST(0x0000A21C01393AFC AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (629, 23, 1, 37, 4, NULL, CAST(0x0000A21C01393AFC AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (630, 77, 1, 37, 4, NULL, CAST(0x0000A21C01393AFD AS DateTime), 6, NULL)
GO
print 'Processed 600 total records'
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (631, 23, 1, 37, 4, NULL, CAST(0x0000A21C01393AFE AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (632, 42, 1, 37, 4, NULL, CAST(0x0000A21C01393AFF AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (633, 20, 2, 37, 4, NULL, CAST(0x0000A21C01393AFF AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (634, 20, 2, 38, 4, NULL, CAST(0x0000A21C01393B00 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (635, 20, 2, 38, 4, NULL, CAST(0x0000A21C01393B01 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (636, 13, 2, 38, 4, NULL, CAST(0x0000A21C01393B02 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (637, 21, 2, 38, 4, NULL, CAST(0x0000A21C01393B02 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (638, 22, 1, 38, 4, NULL, CAST(0x0000A21C01393B03 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (639, 11, 2, 38, 4, NULL, CAST(0x0000A21C01393B04 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (640, 77, 1, 38, 4, NULL, CAST(0x0000A21C01393B05 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (641, 18, 1, 38, 4, NULL, CAST(0x0000A21C01393B05 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (642, 82, 1, 17, 4, NULL, CAST(0x0000A21C013A47C7 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (643, 54, 2, 15, 4, NULL, CAST(0x0000A21C013A47C8 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (644, 65, 2, 15, 4, NULL, CAST(0x0000A21C013A47C9 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (645, 19, 1, 15, 4, NULL, CAST(0x0000A21C013A47CA AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (646, 81, 1, 15, 4, NULL, CAST(0x0000A21C013A47CA AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (647, 75, 2, 15, 4, NULL, CAST(0x0000A21C013A47CB AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (648, 15, 1, 15, 4, NULL, CAST(0x0000A21C013A47CC AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (649, 64, 1, 15, 4, NULL, CAST(0x0000A21C013A47CD AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (650, 10, 1, 19, 4, NULL, CAST(0x0000A21C013A47CD AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (651, 9, 2, 19, 4, NULL, CAST(0x0000A21C013A47CE AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (652, 61, 1, 29, 4, NULL, CAST(0x0000A21C013A47CF AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (653, 36, 2, 29, 4, NULL, CAST(0x0000A21C013A47D0 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (654, 13, 1, 29, 4, NULL, CAST(0x0000A21C013A47D0 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (655, 4, 2, 29, 4, NULL, CAST(0x0000A21C013A47D1 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (656, 88, 1, 29, 4, NULL, CAST(0x0000A21C013A47D2 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (657, 25, 2, 29, 4, NULL, CAST(0x0000A21C013A47D3 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (658, 28, 1, 29, 4, NULL, CAST(0x0000A21C013A47D4 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (659, 34, 2, 25, 4, NULL, CAST(0x0000A21C013A47D4 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (660, 7, 1, 25, 4, NULL, CAST(0x0000A21C013A47D5 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (661, 84, 2, 30, 4, NULL, CAST(0x0000A231013D9CD9 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (662, 67, 2, 30, 4, NULL, CAST(0x0000A231013D9CDA AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (663, 75, 1, 30, 4, NULL, CAST(0x0000A231013D9CDB AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (664, 40, 1, 30, 4, NULL, CAST(0x0000A231013D9CDB AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (665, 77, 2, 30, 4, NULL, CAST(0x0000A231013D9CDC AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (666, 10, 2, 30, 4, NULL, CAST(0x0000A231013D9CDD AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (667, 4, 2, 30, 4, NULL, CAST(0x0000A231013D9CDE AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (668, 20, 2, 30, 4, NULL, CAST(0x0000A231013D9CDF AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (669, 5, 2, 30, 4, NULL, CAST(0x0000A231013D9CE0 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (670, 6, 1, 30, 4, NULL, CAST(0x0000A231013D9CE1 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (671, 26, 1, 31, 4, NULL, CAST(0x0000A231013D9CE1 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (672, 17, 2, 31, 4, NULL, CAST(0x0000A231013D9CE2 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (673, 32, 1, 31, 4, NULL, CAST(0x0000A231013D9CE3 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (674, 1, 2, 31, 4, NULL, CAST(0x0000A231013D9CE4 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (675, 17, 1, 31, 4, NULL, CAST(0x0000A231013D9CE5 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (676, 60, 2, 31, 4, NULL, CAST(0x0000A231013D9CE6 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (677, 40, 2, 31, 4, NULL, CAST(0x0000A231013D9CE7 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (678, 19, 2, 31, 4, NULL, CAST(0x0000A231013D9CE7 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (679, 42, 2, 31, 4, NULL, CAST(0x0000A231013D9CE9 AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (680, 67, 1, 31, 4, NULL, CAST(0x0000A231013D9CEA AS DateTime), 3, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (681, 26, 2, 32, 4, NULL, CAST(0x0000A231013D9CEA AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (682, 18, 2, 32, 4, NULL, CAST(0x0000A231013D9CEB AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (683, 22, 1, 32, 4, NULL, CAST(0x0000A231013D9CEC AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (684, 40, 2, 32, 4, NULL, CAST(0x0000A231013D9CED AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (685, 3, 1, 32, 4, NULL, CAST(0x0000A231013D9CEE AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (686, 5, 2, 32, 4, NULL, CAST(0x0000A231013D9CEF AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (687, 19, 1, 32, 4, NULL, CAST(0x0000A231013D9CF0 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (688, 2, 1, 32, 4, NULL, CAST(0x0000A231013D9CF0 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (689, 21, 1, 32, 4, NULL, CAST(0x0000A231013D9CF1 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (690, 17, 1, 32, 4, NULL, CAST(0x0000A231013D9CF2 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (691, 26, 1, 33, 4, NULL, CAST(0x0000A231013D9CF3 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (692, 17, 1, 33, 4, NULL, CAST(0x0000A231013D9CF4 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (693, 32, 1, 33, 4, NULL, CAST(0x0000A231013D9CF4 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (694, 8, 2, 33, 4, NULL, CAST(0x0000A231013D9CF5 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (695, 74, 2, 33, 4, NULL, CAST(0x0000A231013D9CF6 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (696, 88, 2, 33, 4, NULL, CAST(0x0000A231013D9CF7 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (697, 68, 1, 33, 4, NULL, CAST(0x0000A231013D9CF8 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (698, 14, 2, 33, 4, NULL, CAST(0x0000A231013D9CF9 AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (699, 8, 2, 33, 4, NULL, CAST(0x0000A231013D9CFA AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (700, 41, 2, 33, 4, NULL, CAST(0x0000A231013D9CFB AS DateTime), 4, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (701, 17, 2, 34, 4, NULL, CAST(0x0000A231013D9CFC AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (702, 7, 1, 34, 4, NULL, CAST(0x0000A231013D9CFC AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (703, 76, 1, 34, 4, NULL, CAST(0x0000A231013D9CFD AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (704, 14, 2, 34, 4, NULL, CAST(0x0000A231013D9CFE AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (705, 12, 1, 34, 4, NULL, CAST(0x0000A231013D9CFF AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (706, 23, 1, 34, 4, NULL, CAST(0x0000A231013D9CFF AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (707, 75, 1, 34, 4, NULL, CAST(0x0000A231013D9D00 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (708, 68, 2, 34, 4, NULL, CAST(0x0000A231013D9D01 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (709, 41, 2, 34, 4, NULL, CAST(0x0000A231013D9D02 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (710, 44, 1, 34, 4, NULL, CAST(0x0000A231013D9D03 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (711, 19, 2, 35, 4, NULL, CAST(0x0000A231013D9D04 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (712, 19, 2, 35, 4, NULL, CAST(0x0000A231013D9D05 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (713, 41, 2, 35, 4, NULL, CAST(0x0000A231013D9D06 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (714, 46, 1, 35, 4, NULL, CAST(0x0000A231013D9D07 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (715, 67, 1, 35, 4, NULL, CAST(0x0000A231013D9D08 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (716, 19, 2, 35, 4, NULL, CAST(0x0000A231013D9D08 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (717, 43, 1, 35, 4, NULL, CAST(0x0000A231013D9D09 AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (718, 11, 2, 35, 4, NULL, CAST(0x0000A231013D9D0A AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (719, 38, 2, 35, 4, NULL, CAST(0x0000A231013D9D0B AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (720, 48, 1, 35, 4, NULL, CAST(0x0000A231013D9D0C AS DateTime), 5, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (721, 18, 2, 36, 4, NULL, CAST(0x0000A231013D9D0E AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (722, 3, 1, 36, 4, NULL, CAST(0x0000A231013D9D0E AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (723, 20, 1, 36, 4, NULL, CAST(0x0000A231013D9D0F AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (724, 47, 2, 36, 4, NULL, CAST(0x0000A231013D9D10 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (725, 13, 2, 36, 4, NULL, CAST(0x0000A231013D9D11 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (726, 73, 1, 36, 4, NULL, CAST(0x0000A231013D9D12 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (727, 8, 2, 36, 4, NULL, CAST(0x0000A231013D9D13 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (728, 75, 1, 36, 4, NULL, CAST(0x0000A231013D9D14 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (729, 39, 2, 36, 4, NULL, CAST(0x0000A231013D9D15 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (730, 20, 1, 36, 4, NULL, CAST(0x0000A231013D9D16 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (731, 17, 2, 37, 4, NULL, CAST(0x0000A231013D9D17 AS DateTime), 6, NULL)
GO
print 'Processed 700 total records'
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (732, 47, 2, 37, 4, NULL, CAST(0x0000A231013D9D18 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (733, 79, 2, 37, 4, NULL, CAST(0x0000A231013D9D19 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (734, 25, 2, 11, 4, NULL, CAST(0x0000A231013D9D1A AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (735, 23, 2, 37, 4, NULL, CAST(0x0000A231013D9D1B AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (736, 10, 1, 37, 4, NULL, CAST(0x0000A231013D9D1C AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (737, 23, 1, 37, 4, NULL, CAST(0x0000A231013D9D1D AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (738, 77, 2, 37, 4, NULL, CAST(0x0000A231013D9D1E AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (739, 23, 1, 37, 4, NULL, CAST(0x0000A231013D9D1F AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (740, 42, 2, 37, 4, NULL, CAST(0x0000A231013D9D20 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (741, 20, 1, 37, 4, NULL, CAST(0x0000A231013D9D21 AS DateTime), 6, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (742, 20, 2, 38, 4, NULL, CAST(0x0000A231013D9D22 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (743, 20, 2, 38, 4, NULL, CAST(0x0000A231013D9D23 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (744, 13, 2, 38, 4, NULL, CAST(0x0000A231013D9D24 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (745, 21, 2, 38, 4, NULL, CAST(0x0000A231013D9D25 AS DateTime), 7, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (746, 6, 10, 11, 4, NULL, CAST(0x0000A23A006F8340 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (747, 6, 8, 11, 4, NULL, CAST(0x0000A23A01462C29 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (748, 4, 1, 18, 4, NULL, CAST(0x0000A23B01063058 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (749, 52, 2, 17, 4, NULL, CAST(0x0000A23B0114A733 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (750, 51, 2, 11, 2, N'too much qty', CAST(0x0000A23B0117A412 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (751, 17, 1, 18, 4, NULL, CAST(0x0000A23B01229954 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (752, 37, 2, 22, 4, NULL, CAST(0x0000A23B0123F1BB AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (753, 89, 1, 22, 3, NULL, CAST(0x0000A23B01240C90 AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (754, 6, 1, 22, 3, NULL, CAST(0x0000A23B01242895 AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (755, 80, 1, 17, 4, NULL, CAST(0x0000A23B0129700F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (756, 68, 1, 11, 4, NULL, CAST(0x0000A23B0129AA35 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (757, 56, 1, 11, 4, NULL, CAST(0x0000A23B01814596 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (758, 32, 2, 17, 4, NULL, CAST(0x0000A23C0097C5B9 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (759, 56, 3, 17, 4, NULL, CAST(0x0000A23C0097F45F AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (760, 23, 2, 17, 4, NULL, CAST(0x0000A23C009820DD AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (761, 8, 3, 18, 4, NULL, CAST(0x0000A23C009842D5 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (762, 21, 3, 18, 4, NULL, CAST(0x0000A23C00985421 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (763, 52, 2, 18, 4, NULL, CAST(0x0000A23C009861ED AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (764, 49, 5, 18, 0, NULL, CAST(0x0000A23C009883F1 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (765, 24, 4, 15, 2, N'too many orders', CAST(0x0000A23C0098A431 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (766, 75, 3, 15, 4, NULL, CAST(0x0000A23C0098B2D1 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (767, 89, 4, 15, 0, NULL, CAST(0x0000A23C0098C7BA AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (768, 19, 5, 19, 4, NULL, CAST(0x0000A23C0098EBB3 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (769, 15, 3, 19, 4, NULL, CAST(0x0000A23C0098F6C9 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (770, 30, 2, 19, 0, NULL, CAST(0x0000A23C00990310 AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (771, 3, 3, 24, 3, NULL, CAST(0x0000A23C00991CD3 AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (772, 17, 4, 24, 0, NULL, CAST(0x0000A23C009928FF AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (773, 40, 3, 24, 2, N'Unappropriate request', CAST(0x0000A23C00993794 AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (774, 47, 1, 24, 3, NULL, CAST(0x0000A23C009945B0 AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (775, 10, 3, 27, 3, NULL, CAST(0x0000A23C009A319C AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (776, 16, 3, 27, 0, NULL, CAST(0x0000A23C009A3A8A AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (777, 9, 3, 27, 3, NULL, CAST(0x0000A23C009A44E8 AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (778, 4, 2, 27, 3, NULL, CAST(0x0000A23C009A51B5 AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (779, 18, 4, 23, 2, N'too less order', CAST(0x0000A23C009A6A04 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (780, 55, 3, 23, 4, NULL, CAST(0x0000A23C009A7771 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (781, 31, 2, 23, 4, NULL, CAST(0x0000A23C009A80C5 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (782, 3, 3, 25, 3, NULL, CAST(0x0000A23C009A9904 AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (783, 34, 4, 25, 0, NULL, CAST(0x0000A23C009AA603 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (784, 16, 2, 25, 3, NULL, CAST(0x0000A23C009AB2DB AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (785, 2, 2, 26, 3, NULL, CAST(0x0000A23C009ACE7C AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (786, 27, 3, 26, 0, NULL, CAST(0x0000A23C009AD909 AS DateTime), 9, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (787, 4, 3, 26, 3, NULL, CAST(0x0000A23C009AE2F6 AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (788, 15, 2, 30, 3, NULL, CAST(0x0000A23C009AFC46 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (789, 13, 3, 30, 3, NULL, CAST(0x0000A23C009B0765 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (790, 40, 2, 30, 3, NULL, CAST(0x0000A23C009B1689 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (791, 5, 3, 31, 3, NULL, CAST(0x0000A23C009B4C8F AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (792, 32, 3, 31, 3, NULL, CAST(0x0000A23C009B60E7 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (793, 17, 10, 11, 4, NULL, CAST(0x0000A23C009F77A1 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (794, 8, 1, 11, 2, N'We still have enough.', CAST(0x0000A23C009FC3E8 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (795, 56, 2, 11, 4, NULL, CAST(0x0000A23C00A233A2 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (796, 7, 1, 11, 4, NULL, CAST(0x0000A23C00A25D29 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (797, 25, 1, 11, 4, NULL, CAST(0x0000A23C00A2677E AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (798, 56, 4, 11, 4, NULL, CAST(0x0000A23C00A556A6 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (799, 50, 5, 10, 4, NULL, CAST(0x0000A23C00A6EB5A AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (800, 64, 2, 22, 3, NULL, CAST(0x0000A23C00AE9865 AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (801, 5, 4, 11, 4, NULL, CAST(0x0000A23C00B2E717 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (802, 8, 6, 11, 4, NULL, CAST(0x0000A23C00B30F9A AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (803, 4, 3, 11, 4, NULL, CAST(0x0000A23C00B6E7F5 AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (804, 3, 1, 11, 4, NULL, CAST(0x0000A23C00B84AEE AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (805, 1, 3, 11, 0, NULL, CAST(0x0000A23C00B87B5B AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (806, 43, 3, 30, 3, NULL, CAST(0x0000A23C00C815EE AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (807, 1, 2, 30, 3, NULL, CAST(0x0000A23C00C81D5F AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (808, 67, 2, 30, 3, NULL, CAST(0x0000A23C00C860D3 AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (809, 3, 1, 30, 3, NULL, CAST(0x0000A23C00C86AEB AS DateTime), 3, 5)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (810, 7, 5, 11, 0, NULL, CAST(0x0000A23C00CEB31F AS DateTime), 8, NULL)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (811, 7, 1000, 11, 4, NULL, CAST(0x0000A23C00CEEC2B AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (812, 2, 1000, 11, 4, NULL, CAST(0x0000A23C00CF03BE AS DateTime), 8, 21)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (813, 7, 900, 27, 3, NULL, CAST(0x0000A23C00CF2D4A AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (814, 2, 900, 27, 3, NULL, CAST(0x0000A23C00CF3A2C AS DateTime), 9, 16)
INSERT [dbo].[Requisition] ([id], [stationery], [quantity], [user_obj], [status], [reject_remark], [datetime_requested], [department], [user_approved_by]) VALUES (815, 6, 1, 11, 0, NULL, CAST(0x0000A23C00F6F683 AS DateTime), 8, NULL)
SET IDENTITY_INSERT [dbo].[Requisition] OFF
/****** Object:  Table [dbo].[UserDelegate]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDelegate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_to] [int] NOT NULL,
	[user_by] [int] NOT NULL,
	[date_from] [date] NOT NULL,
	[date_to] [date] NOT NULL,
	[department] [int] NOT NULL,
 CONSTRAINT [PK_delegate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Supervisor_Discrepancy_View]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Supervisor_Discrepancy_View]
AS
SELECT     dbo.Stationery.stationery_name, dbo.Discrepancy.id, dbo.Discrepancy.quantity, dbo.Discrepancy.remark, dbo.Discrepancy.datetime_reported, 
                      dbo.Discrepancy.status, dbo.Stationery.price, dbo.Stationery.price * dbo.Discrepancy.quantity AS totalprice, dbo.Discrepancy.stationery
FROM         dbo.Stationery INNER JOIN
                      dbo.Discrepancy ON dbo.Stationery.id = dbo.Discrepancy.stationery
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Stationery"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 278
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Discrepancy"
            Begin Extent = 
               Top = 6
               Left = 316
               Bottom = 125
               Right = 495
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Supervisor_Discrepancy_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Supervisor_Discrepancy_View'
GO
/****** Object:  View [dbo].[ReOrderReport_View]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ReOrderReport_View]
AS
SELECT     dbo.PurchaseOrder.id, dbo.PurchaseOrder.po_reorder_level, dbo.StationeryCategory.category_name, dbo.Stationery.stationery_name, 
                      dbo.PurchaseOrder.po_reorder_date, dbo.PurchaseOrder.po_reordered_quantity
FROM         dbo.Stationery INNER JOIN
                      dbo.StationeryCategory ON dbo.Stationery.category = dbo.StationeryCategory.id INNER JOIN
                      dbo.PurchaseOrder ON dbo.Stationery.id = dbo.PurchaseOrder.po_stationery
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "StationeryCategory"
            Begin Extent = 
               Top = 6
               Left = 316
               Bottom = 95
               Right = 480
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PurchaseOrder"
            Begin Extent = 
               Top = 6
               Left = 518
               Bottom = 125
               Right = 719
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "Stationery"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 278
            End
            DisplayFlags = 280
            TopColumn = 7
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReOrderReport_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReOrderReport_View'
GO
/****** Object:  View [dbo].[PurchaseOrderView]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PurchaseOrderView]
AS
SELECT     dbo.PurchaseOrder.*, dbo.Supplier.supplier_name, dbo.Stationery.stationery_name, dbo.Stationery.code, dbo.Stationery.category, 
                      dbo.Stationery.unit_of_measure
FROM         dbo.PurchaseOrder INNER JOIN
                      dbo.Supplier ON dbo.PurchaseOrder.po_supplier = dbo.Supplier.id INNER JOIN
                      dbo.Stationery ON dbo.PurchaseOrder.po_stationery = dbo.Stationery.id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "PurchaseOrder"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 124
               Right = 239
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Supplier"
            Begin Extent = 
               Top = 98
               Left = 312
               Bottom = 216
               Right = 473
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stationery"
            Begin Extent = 
               Top = 0
               Left = 510
               Bottom = 118
               Right = 750
            End
            DisplayFlags = 280
            TopColumn = 10
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PurchaseOrderView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PurchaseOrderView'
GO
/****** Object:  View [dbo].[RetrievelFormMaster_View]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[RetrievelFormMaster_View]
AS
SELECT     dbo.Stationery.id, dbo.Stationery.stationery_name, SUM(dbo.RequisitionFullfillment.requested_quantity) AS Needed, SUM(dbo.RequisitionFullfillment.fulfill_quantity) 
                      AS Retrieved
FROM         dbo.Stationery INNER JOIN
                      dbo.RequisitionFullfillment ON dbo.Stationery.id = dbo.RequisitionFullfillment.stationery
GROUP BY dbo.Stationery.id, dbo.Stationery.stationery_name
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Stationery"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 124
               Right = 294
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RequisitionFullfillment"
            Begin Extent = 
               Top = 6
               Left = 332
               Bottom = 124
               Right = 532
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RetrievelFormMaster_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RetrievelFormMaster_View'
GO
/****** Object:  View [dbo].[RetrievalFormDetails_View]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[RetrievalFormDetails_View]
AS
SELECT     dbo.Department.id, dbo.Department.department_name, SUM(dbo.RequisitionFullfillment.requested_quantity) AS Needed, 
                      SUM(dbo.RequisitionFullfillment.fulfill_quantity) AS Actual, dbo.RequisitionFullfillment.stationery
FROM         dbo.Department INNER JOIN
                      dbo.RequisitionFullfillment ON dbo.Department.id = dbo.RequisitionFullfillment.department
GROUP BY dbo.Department.id, dbo.Department.department_name, dbo.RequisitionFullfillment.stationery
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Department"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 124
               Right = 246
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RequisitionFullfillment"
            Begin Extent = 
               Top = 6
               Left = 284
               Bottom = 124
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RetrievalFormDetails_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RetrievalFormDetails_View'
GO
/****** Object:  View [dbo].[RequisitionView]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[RequisitionView]
AS
SELECT     dbo.Requisition.quantity, dbo.Requisition.stationery, dbo.Requisition.id AS requisition_id, dbo.Requisition.user_obj, dbo.Stationery.stationery_name, 
                      dbo.Requisition.status, dbo.Stationery.id AS stationery_id, dbo.[User].id AS user_id, dbo.[User].username, dbo.Requisition.department, dbo.[User].firstname, 
                      dbo.[User].lastname, dbo.Requisition.datetime_requested, dbo.Requisition.reject_remark, dbo.Requisition.user_approved_by
FROM         dbo.Requisition INNER JOIN
                      dbo.Stationery ON dbo.Requisition.stationery = dbo.Stationery.id INNER JOIN
                      dbo.[User] ON dbo.Requisition.user_obj = dbo.[User].id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[38] 4[4] 2[31] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Requisition"
            Begin Extent = 
               Top = 4
               Left = 330
               Bottom = 220
               Right = 516
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stationery"
            Begin Extent = 
               Top = 20
               Left = 766
               Bottom = 138
               Right = 945
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "User"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 124
               Right = 199
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1635
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RequisitionView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RequisitionView'
GO
/****** Object:  View [dbo].[Report_View]    Script Date: 09/17/2013 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Report_View]
AS
SELECT     dbo.Disbursement.department, dbo.Department.department_name, dbo.DisbursementDetails.requested_quantity, dbo.DisbursementDetails.fulfilled_quantity, 
                      dbo.Stationery.stationery_name, dbo.Stationery.price, dbo.StationeryCategory.category_name, dbo.Disbursement.distributed_date
FROM         dbo.Disbursement INNER JOIN
                      dbo.DisbursementDetails ON dbo.Disbursement.id = dbo.DisbursementDetails.disbursement INNER JOIN
                      dbo.Stationery ON dbo.DisbursementDetails.stationery = dbo.Stationery.id INNER JOIN
                      dbo.StationeryCategory ON dbo.Stationery.category = dbo.StationeryCategory.id INNER JOIN
                      dbo.Department ON dbo.Disbursement.department = dbo.Department.id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Disbursement"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 209
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DisbursementDetails"
            Begin Extent = 
               Top = 6
               Left = 247
               Bottom = 125
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stationery"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 278
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "StationeryCategory"
            Begin Extent = 
               Top = 126
               Left = 316
               Bottom = 215
               Right = 480
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Department"
            Begin Extent = 
               Top = 6
               Left = 513
               Bottom = 125
               Right = 705
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
     ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Report_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'    Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Report_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Report_View'
GO
/****** Object:  ForeignKey [FK_Department_CollectionPoint]    Script Date: 09/17/2013 16:39:34 ******/
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_CollectionPoint] FOREIGN KEY([collection_point])
REFERENCES [dbo].[CollectionPoint] ([id])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_CollectionPoint]
GO
/****** Object:  ForeignKey [FK_Disbursement_Department]    Script Date: 09/17/2013 16:39:34 ******/
ALTER TABLE [dbo].[Disbursement]  WITH CHECK ADD  CONSTRAINT [FK_Disbursement_Department] FOREIGN KEY([department])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[Disbursement] CHECK CONSTRAINT [FK_Disbursement_Department]
GO
/****** Object:  ForeignKey [FK_DisbursementDetails_Disbursement]    Script Date: 09/17/2013 16:39:34 ******/
ALTER TABLE [dbo].[DisbursementDetails]  WITH CHECK ADD  CONSTRAINT [FK_DisbursementDetails_Disbursement] FOREIGN KEY([disbursement])
REFERENCES [dbo].[Disbursement] ([id])
GO
ALTER TABLE [dbo].[DisbursementDetails] CHECK CONSTRAINT [FK_DisbursementDetails_Disbursement]
GO
/****** Object:  ForeignKey [FK_DisbursementDetails_Stationery]    Script Date: 09/17/2013 16:39:34 ******/
ALTER TABLE [dbo].[DisbursementDetails]  WITH CHECK ADD  CONSTRAINT [FK_DisbursementDetails_Stationery] FOREIGN KEY([stationery])
REFERENCES [dbo].[Stationery] ([id])
GO
ALTER TABLE [dbo].[DisbursementDetails] CHECK CONSTRAINT [FK_DisbursementDetails_Stationery]
GO
/****** Object:  ForeignKey [FK_Discrepancy_Stationery]    Script Date: 09/17/2013 16:39:34 ******/
ALTER TABLE [dbo].[Discrepancy]  WITH CHECK ADD  CONSTRAINT [FK_Discrepancy_Stationery] FOREIGN KEY([stationery])
REFERENCES [dbo].[Stationery] ([id])
GO
ALTER TABLE [dbo].[Discrepancy] CHECK CONSTRAINT [FK_Discrepancy_Stationery]
GO
/****** Object:  ForeignKey [FK_OAuth_User]    Script Date: 09/17/2013 16:39:34 ******/
ALTER TABLE [dbo].[OAuth]  WITH CHECK ADD  CONSTRAINT [FK_OAuth_User] FOREIGN KEY([user_obj])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[OAuth] CHECK CONSTRAINT [FK_OAuth_User]
GO
/****** Object:  ForeignKey [FK_PurchaseOrder_Stationery]    Script Date: 09/17/2013 16:39:34 ******/
ALTER TABLE [dbo].[PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrder_Stationery] FOREIGN KEY([po_stationery])
REFERENCES [dbo].[Stationery] ([id])
GO
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [FK_PurchaseOrder_Stationery]
GO
/****** Object:  ForeignKey [FK_PurchaseOrder_Supplier]    Script Date: 09/17/2013 16:39:34 ******/
ALTER TABLE [dbo].[PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrder_Supplier] FOREIGN KEY([po_supplier])
REFERENCES [dbo].[Supplier] ([id])
GO
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [FK_PurchaseOrder_Supplier]
GO
/****** Object:  ForeignKey [FK_Requisition_Department]    Script Date: 09/17/2013 16:39:34 ******/
ALTER TABLE [dbo].[Requisition]  WITH CHECK ADD  CONSTRAINT [FK_Requisition_Department] FOREIGN KEY([department])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[Requisition] CHECK CONSTRAINT [FK_Requisition_Department]
GO
/****** Object:  ForeignKey [FK_Requisition_Stationery]    Script Date: 09/17/2013 16:39:34 ******/
ALTER TABLE [dbo].[Requisition]  WITH CHECK ADD  CONSTRAINT [FK_Requisition_Stationery] FOREIGN KEY([stationery])
REFERENCES [dbo].[Stationery] ([id])
GO
ALTER TABLE [dbo].[Requisition] CHECK CONSTRAINT [FK_Requisition_Stationery]
GO
/****** Object:  ForeignKey [FK_Requisition_User]    Script Date: 09/17/2013 16:39:34 ******/
ALTER TABLE [dbo].[Requisition]  WITH CHECK ADD  CONSTRAINT [FK_Requisition_User] FOREIGN KEY([user_obj])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Requisition] CHECK CONSTRAINT [FK_Requisition_User]
GO
/****** Object:  ForeignKey [FK_Requisition_User_Approved_By]    Script Date: 09/17/2013 16:39:34 ******/
ALTER TABLE [dbo].[Requisition]  WITH CHECK ADD  CONSTRAINT [FK_Requisition_User_Approved_By] FOREIGN KEY([user_approved_by])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Requisition] CHECK CONSTRAINT [FK_Requisition_User_Approved_By]
GO
/****** Object:  ForeignKey [FK_RequisitionFullfillment_Department]    Script Date: 09/17/2013 16:39:34 ******/
ALTER TABLE [dbo].[RequisitionFullfillment]  WITH CHECK ADD  CONSTRAINT [FK_RequisitionFullfillment_Department] FOREIGN KEY([department])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[RequisitionFullfillment] CHECK CONSTRAINT [FK_RequisitionFullfillment_Department]
GO
/****** Object:  ForeignKey [FK_RequisitionFullfillment_Stationery]    Script Date: 09/17/2013 16:39:34 ******/
ALTER TABLE [dbo].[RequisitionFullfillment]  WITH CHECK ADD  CONSTRAINT [FK_RequisitionFullfillment_Stationery] FOREIGN KEY([stationery])
REFERENCES [dbo].[Stationery] ([id])
GO
ALTER TABLE [dbo].[RequisitionFullfillment] CHECK CONSTRAINT [FK_RequisitionFullfillment_Stationery]
GO
/****** Object:  ForeignKey [FK_Stationery_StationeryCategory]    Script Date: 09/17/2013 16:39:35 ******/
ALTER TABLE [dbo].[Stationery]  WITH CHECK ADD  CONSTRAINT [FK_Stationery_StationeryCategory] FOREIGN KEY([category])
REFERENCES [dbo].[StationeryCategory] ([id])
GO
ALTER TABLE [dbo].[Stationery] CHECK CONSTRAINT [FK_Stationery_StationeryCategory]
GO
/****** Object:  ForeignKey [FK_Stationery_Supplier1]    Script Date: 09/17/2013 16:39:35 ******/
ALTER TABLE [dbo].[Stationery]  WITH CHECK ADD  CONSTRAINT [FK_Stationery_Supplier1] FOREIGN KEY([first_supplier])
REFERENCES [dbo].[Supplier] ([id])
GO
ALTER TABLE [dbo].[Stationery] CHECK CONSTRAINT [FK_Stationery_Supplier1]
GO
/****** Object:  ForeignKey [FK_Stationery_Supplier2]    Script Date: 09/17/2013 16:39:35 ******/
ALTER TABLE [dbo].[Stationery]  WITH CHECK ADD  CONSTRAINT [FK_Stationery_Supplier2] FOREIGN KEY([second_supplier])
REFERENCES [dbo].[Supplier] ([id])
GO
ALTER TABLE [dbo].[Stationery] CHECK CONSTRAINT [FK_Stationery_Supplier2]
GO
/****** Object:  ForeignKey [FK_Stationery_Supplier3]    Script Date: 09/17/2013 16:39:35 ******/
ALTER TABLE [dbo].[Stationery]  WITH CHECK ADD  CONSTRAINT [FK_Stationery_Supplier3] FOREIGN KEY([third_supplier])
REFERENCES [dbo].[Supplier] ([id])
GO
ALTER TABLE [dbo].[Stationery] CHECK CONSTRAINT [FK_Stationery_Supplier3]
GO
/****** Object:  ForeignKey [FK_StockTransaction_Stationery]    Script Date: 09/17/2013 16:39:35 ******/
ALTER TABLE [dbo].[StockTransaction]  WITH CHECK ADD  CONSTRAINT [FK_StockTransaction_Stationery] FOREIGN KEY([stationery])
REFERENCES [dbo].[Stationery] ([id])
GO
ALTER TABLE [dbo].[StockTransaction] CHECK CONSTRAINT [FK_StockTransaction_Stationery]
GO
/****** Object:  ForeignKey [FK_User_Department]    Script Date: 09/17/2013 16:39:35 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Department] FOREIGN KEY([department])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Department]
GO
/****** Object:  ForeignKey [FK_User_UserType]    Script Date: 09/17/2013 16:39:35 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserType] FOREIGN KEY([user_type])
REFERENCES [dbo].[UserType] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserType]
GO
/****** Object:  ForeignKey [FK_UserDelegate_Department]    Script Date: 09/17/2013 16:39:35 ******/
ALTER TABLE [dbo].[UserDelegate]  WITH CHECK ADD  CONSTRAINT [FK_UserDelegate_Department] FOREIGN KEY([department])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[UserDelegate] CHECK CONSTRAINT [FK_UserDelegate_Department]
GO
/****** Object:  ForeignKey [FK_UserDelegate_User_By]    Script Date: 09/17/2013 16:39:35 ******/
ALTER TABLE [dbo].[UserDelegate]  WITH CHECK ADD  CONSTRAINT [FK_UserDelegate_User_By] FOREIGN KEY([user_by])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[UserDelegate] CHECK CONSTRAINT [FK_UserDelegate_User_By]
GO
/****** Object:  ForeignKey [FK_UserDelegate_User_To]    Script Date: 09/17/2013 16:39:35 ******/
ALTER TABLE [dbo].[UserDelegate]  WITH CHECK ADD  CONSTRAINT [FK_UserDelegate_User_To] FOREIGN KEY([user_to])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[UserDelegate] CHECK CONSTRAINT [FK_UserDelegate_User_To]
GO
