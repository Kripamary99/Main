USE [FoodDelivery]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 07/15/2018 19:23:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[LoginID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NULL,
	[Username] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[IsDeleted] [bit] NULL,
	[CreatedOn] [date] NULL,
	[IsAccepted] [bit] NULL,
	[IsRejected] [bit] NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[LoginID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Login] ON
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [IsDeleted], [CreatedOn], [IsAccepted], [IsRejected]) VALUES (1, 2, N'kfc', N'00000', 0, CAST(0xF53D0B00 AS Date), 1, 0)
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [IsDeleted], [CreatedOn], [IsAccepted], [IsRejected]) VALUES (2, 1, N'Admin', N'admin', 0, CAST(0xF53D0B00 AS Date), 1, 0)
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [IsDeleted], [CreatedOn], [IsAccepted], [IsRejected]) VALUES (3, 3, N'arjun', N'00000', 0, CAST(0xF73D0B00 AS Date), 0, 0)
INSERT [dbo].[Login] ([LoginID], [RoleID], [Username], [Password], [IsDeleted], [CreatedOn], [IsAccepted], [IsRejected]) VALUES (4, 2, N'chicking', N'00000', 0, CAST(0xF83D0B00 AS Date), 1, 0)
SET IDENTITY_INSERT [dbo].[Login] OFF
/****** Object:  Table [dbo].[Category]    Script Date: 07/15/2018 19:23:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](100) NULL,
	[ParentCategoryID] [int] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [ParentCategoryID]) VALUES (1, N'Veg', 0)
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [ParentCategoryID]) VALUES (2, N'Non-Veg', 0)
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [ParentCategoryID]) VALUES (3, N'Chicken', 2)
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [ParentCategoryID]) VALUES (4, N'Beef', 2)
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[Provider]    Script Date: 07/15/2018 19:23:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Provider](
	[ProviderID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderName] [varchar](100) NULL,
	[OwnerName] [varchar](100) NULL,
	[ContactPerson] [varchar](100) NULL,
	[Mobile] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[StartedYear] [varchar](100) NULL,
	[LoginID] [int] NULL,
 CONSTRAINT [PK_Provider] PRIMARY KEY CLUSTERED 
(
	[ProviderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Provider] ON
INSERT [dbo].[Provider] ([ProviderID], [ProviderName], [OwnerName], [ContactPerson], [Mobile], [Email], [StartedYear], [LoginID]) VALUES (1, N'KFC', N'hh cdhg ', N'mnbjj jhd', N'8529637412', N'ccnn@gmail.com', N'1964', 1)
INSERT [dbo].[Provider] ([ProviderID], [ProviderName], [OwnerName], [ContactPerson], [Mobile], [Email], [StartedYear], [LoginID]) VALUES (2, N'Chicking', N'Manoj', N'Ravi', N'8569745896', N'ravichicking@gmail.com', N'2000', 4)
SET IDENTITY_INSERT [dbo].[Provider] OFF
/****** Object:  Table [dbo].[DeliverBoy]    Script Date: 07/15/2018 19:23:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeliverBoy](
	[DeliverBoyID] [int] IDENTITY(1,1) NOT NULL,
	[LoginID] [int] NULL,
	[Name] [varchar](100) NULL,
	[Gender] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[Mobile] [varchar](100) NULL,
	[Pincode] [varchar](100) NULL,
 CONSTRAINT [PK_DeliverBoy] PRIMARY KEY CLUSTERED 
(
	[DeliverBoyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 07/15/2018 19:23:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[Gender] [varchar](100) NULL,
	[LoginID] [int] NULL,
	[Mobile] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[Customer] ([CustomerID], [Name], [Address], [Gender], [LoginID], [Mobile], [Email]) VALUES (1, N'Arjun', N'bjk', N'Male', 3, N'9567894562', N'arjun@gmail.com')
SET IDENTITY_INSERT [dbo].[Customer] OFF
/****** Object:  Table [dbo].[FoodItem]    Script Date: 07/15/2018 19:23:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FoodItem](
	[FoodItemID] [int] IDENTITY(1,1) NOT NULL,
	[FoodItemName] [varchar](100) NULL,
	[CategoryID] [int] NULL,
	[ProviderID] [int] NULL,
	[Photo] [varchar](8000) NULL,
	[IsDeleted] [bit] NULL,
	[Price] [varchar](100) NULL,
	[ItemDetail] [varchar](8000) NULL,
 CONSTRAINT [PK_FoodItem] PRIMARY KEY CLUSTERED 
(
	[FoodItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[FoodItem] ON
INSERT [dbo].[FoodItem] ([FoodItemID], [FoodItemName], [CategoryID], [ProviderID], [Photo], [IsDeleted], [Price], [ItemDetail]) VALUES (2, N'Beef Burger', 4, 1, N'../Content/FoodItem/1.jpg', 0, N'80', N'erve armesan may be added to the top of apLem ip, consectetur adipisicing elLorem ipsum adipisicing elit, sed do')
INSERT [dbo].[FoodItem] ([FoodItemID], [FoodItemName], [CategoryID], [ProviderID], [Photo], [IsDeleted], [Price], [ItemDetail]) VALUES (3, N'Salman With Tomato', 1, 1, N'../Content/FoodItem/2.jpg', 0, N'120', N'erve armesan may be added to the top of apLem ip, consectetur adipisicing elLorem ipsum adipisicing elit, sed do')
SET IDENTITY_INSERT [dbo].[FoodItem] OFF
/****** Object:  Table [dbo].[DeliverPlace]    Script Date: 07/15/2018 19:23:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliverPlace](
	[DeliverPlaceID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderID] [int] NULL,
	[Pincode] [int] NULL,
 CONSTRAINT [PK_Deliver] PRIMARY KEY CLUSTERED 
(
	[DeliverPlaceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DeliverPlace] ON
INSERT [dbo].[DeliverPlace] ([DeliverPlaceID], [ProviderID], [Pincode]) VALUES (1, 1, 968574)
INSERT [dbo].[DeliverPlace] ([DeliverPlaceID], [ProviderID], [Pincode]) VALUES (2, 1, 456321)
INSERT [dbo].[DeliverPlace] ([DeliverPlaceID], [ProviderID], [Pincode]) VALUES (3, 1, 789651)
INSERT [dbo].[DeliverPlace] ([DeliverPlaceID], [ProviderID], [Pincode]) VALUES (4, 2, 456321)
INSERT [dbo].[DeliverPlace] ([DeliverPlaceID], [ProviderID], [Pincode]) VALUES (5, 2, 124578)
INSERT [dbo].[DeliverPlace] ([DeliverPlaceID], [ProviderID], [Pincode]) VALUES (6, 2, 326598)
SET IDENTITY_INSERT [dbo].[DeliverPlace] OFF
/****** Object:  Table [dbo].[Branch]    Script Date: 07/15/2018 19:23:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Branch](
	[BranchID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderID] [int] NULL,
	[BranchName] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[Mobile] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[BranchHead] [varchar](100) NULL,
	[LandMark] [varchar](100) NULL,
	[IsAccepted] [bit] NOT NULL,
	[IsRejected] [bit] NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Branch] ON
INSERT [dbo].[Branch] ([BranchID], [ProviderID], [BranchName], [Address], [Mobile], [Email], [BranchHead], [LandMark], [IsAccepted], [IsRejected]) VALUES (1, 1, N'Pala', N'pala', N'741852964', N'kfcpala@gmail.com', NULL, NULL, 1, 0)
INSERT [dbo].[Branch] ([BranchID], [ProviderID], [BranchName], [Address], [Mobile], [Email], [BranchHead], [LandMark], [IsAccepted], [IsRejected]) VALUES (4, 1, N'Kottayam', N'kottayam', N'8529637412', N'kfckottayam@gmail.com', NULL, NULL, 0, 0)
INSERT [dbo].[Branch] ([BranchID], [ProviderID], [BranchName], [Address], [Mobile], [Email], [BranchHead], [LandMark], [IsAccepted], [IsRejected]) VALUES (5, 2, N'Kottayam Chicking', N'kottayam', N'7569871236', N'chikkingktm@gmail.com', NULL, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Branch] OFF
/****** Object:  StoredProcedure [dbo].[sp_search]    Script Date: 07/15/2018 19:23:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_search]
@Pincode	int=null,
@CategoryID	int=null
AS
BEGIN
	
	SET NOCOUNT ON;
	declare @ProviderID	int
	
	create table #TempFoodItem(ItemDetail varchar(8000),FoodItemID int,Photo varchar(8000),FoodItemName varchar(100),CategoryName varchar(100),Price varchar(100),Provider varchar(100),CategoryID int)
	
	--select distinct ProviderID from DeliverPlace  where Pincode=@Pincode
	
	declare provider_cursor cursor for select distinct ProviderID from DeliverPlace  where Pincode=@Pincode
	open provider_cursor
	fetch next from provider_cursor into @ProviderID
	while(@@FETCH_STATUS=0)
		begin
			insert into #TempFoodItem(FoodItemID,Photo,FoodItemName,CategoryName,Price,Provider,ItemDetail,CategoryID)
			select FoodItemID,Photo,FoodItemName,ca.CategoryName,Price,p.ProviderName,ItemDetail,fi.CategoryID  from FoodItem fi inner join Category ca on fi.CategoryID=ca.CategoryID inner join Provider p on fi.ProviderID=p.ProviderID
			where fi.ProviderID=@ProviderID
			fetch next from provider_cursor into @ProviderID
		end
	close provider_cursor
	deallocate provider_cursor
	
	if(@CategoryID !=null or @CategoryID !=0)
		delete #TempFoodItem where CategoryID not in(@CategoryID)
	 
	 alter table #TempFoodItem drop column CategoryID
	 select * from #TempFoodItem
	drop table #TempFoodItem

    
END
GO
/****** Object:  StoredProcedure [dbo].[SelectPincode]    Script Date: 07/15/2018 19:23:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectPincode]

AS
BEGIN
	
	SET NOCOUNT ON;
	
	select distinct dp.Pincode from DeliverPlace dp where dp.Pincode not in (select db.Pincode from DeliverBoy db)

END
GO
/****** Object:  Table [dbo].[Order]    Script Date: 07/15/2018 19:23:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[Pincode] [int] NULL,
	[FoodItemID] [int] NULL,
	[Quantity] [varchar](100) NULL,
	[IsDeliverd] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CartStatus] [bit] NULL,
	[CreatedOn] [date] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT [dbo].[Order] ([OrderID], [CustomerID], [Pincode], [FoodItemID], [Quantity], [IsDeliverd], [IsDeleted], [CartStatus], [CreatedOn]) VALUES (3, 1, 968574, 2, N'2', 0, 0, 1, CAST(0xF83D0B00 AS Date))
INSERT [dbo].[Order] ([OrderID], [CustomerID], [Pincode], [FoodItemID], [Quantity], [IsDeliverd], [IsDeleted], [CartStatus], [CreatedOn]) VALUES (4, 1, 968574, 3, N'01', 0, 0, 1, CAST(0x143E0B00 AS Date))
INSERT [dbo].[Order] ([OrderID], [CustomerID], [Pincode], [FoodItemID], [Quantity], [IsDeliverd], [IsDeleted], [CartStatus], [CreatedOn]) VALUES (5, 1, 968574, 2, N'2', 0, 1, 0, CAST(0x143E0B00 AS Date))
INSERT [dbo].[Order] ([OrderID], [CustomerID], [Pincode], [FoodItemID], [Quantity], [IsDeliverd], [IsDeleted], [CartStatus], [CreatedOn]) VALUES (6, 1, 968574, 3, N'2', 0, 0, 1, CAST(0x143E0B00 AS Date))
INSERT [dbo].[Order] ([OrderID], [CustomerID], [Pincode], [FoodItemID], [Quantity], [IsDeliverd], [IsDeleted], [CartStatus], [CreatedOn]) VALUES (7, 1, 968574, 3, N'01', 0, 1, 0, CAST(0x143E0B00 AS Date))
INSERT [dbo].[Order] ([OrderID], [CustomerID], [Pincode], [FoodItemID], [Quantity], [IsDeliverd], [IsDeleted], [CartStatus], [CreatedOn]) VALUES (10, 1, 968574, 2, N'01', 1, 0, 1, CAST(0x143E0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Order] OFF
/****** Object:  ForeignKey [FK_Branch_Provider]    Script Date: 07/15/2018 19:23:48 ******/
ALTER TABLE [dbo].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_Branch_Provider] FOREIGN KEY([ProviderID])
REFERENCES [dbo].[Provider] ([ProviderID])
GO
ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Branch_Provider]
GO
/****** Object:  ForeignKey [FK_Customer_Login]    Script Date: 07/15/2018 19:23:48 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Login] FOREIGN KEY([LoginID])
REFERENCES [dbo].[Login] ([LoginID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Login]
GO
/****** Object:  ForeignKey [FK_DeliverBoy_Login]    Script Date: 07/15/2018 19:23:48 ******/
ALTER TABLE [dbo].[DeliverBoy]  WITH CHECK ADD  CONSTRAINT [FK_DeliverBoy_Login] FOREIGN KEY([LoginID])
REFERENCES [dbo].[Login] ([LoginID])
GO
ALTER TABLE [dbo].[DeliverBoy] CHECK CONSTRAINT [FK_DeliverBoy_Login]
GO
/****** Object:  ForeignKey [FK_DeliverPlace_Provider]    Script Date: 07/15/2018 19:23:48 ******/
ALTER TABLE [dbo].[DeliverPlace]  WITH CHECK ADD  CONSTRAINT [FK_DeliverPlace_Provider] FOREIGN KEY([ProviderID])
REFERENCES [dbo].[Provider] ([ProviderID])
GO
ALTER TABLE [dbo].[DeliverPlace] CHECK CONSTRAINT [FK_DeliverPlace_Provider]
GO
/****** Object:  ForeignKey [FK_FoodItem_Category]    Script Date: 07/15/2018 19:23:48 ******/
ALTER TABLE [dbo].[FoodItem]  WITH CHECK ADD  CONSTRAINT [FK_FoodItem_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[FoodItem] CHECK CONSTRAINT [FK_FoodItem_Category]
GO
/****** Object:  ForeignKey [FK_FoodItem_Provider]    Script Date: 07/15/2018 19:23:48 ******/
ALTER TABLE [dbo].[FoodItem]  WITH CHECK ADD  CONSTRAINT [FK_FoodItem_Provider] FOREIGN KEY([ProviderID])
REFERENCES [dbo].[Provider] ([ProviderID])
GO
ALTER TABLE [dbo].[FoodItem] CHECK CONSTRAINT [FK_FoodItem_Provider]
GO
/****** Object:  ForeignKey [FK_Order_Customer]    Script Date: 07/15/2018 19:23:48 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
/****** Object:  ForeignKey [FK_Order_FoodItem]    Script Date: 07/15/2018 19:23:48 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_FoodItem] FOREIGN KEY([FoodItemID])
REFERENCES [dbo].[FoodItem] ([FoodItemID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_FoodItem]
GO
/****** Object:  ForeignKey [FK_Provider_Login]    Script Date: 07/15/2018 19:23:48 ******/
ALTER TABLE [dbo].[Provider]  WITH CHECK ADD  CONSTRAINT [FK_Provider_Login] FOREIGN KEY([LoginID])
REFERENCES [dbo].[Login] ([LoginID])
GO
ALTER TABLE [dbo].[Provider] CHECK CONSTRAINT [FK_Provider_Login]
GO
