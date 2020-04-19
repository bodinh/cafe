USE [QuanLyCafe3]
GO
/****** Object:  Table [dbo].[account]    Script Date: 4/19/2020 5:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](20) NULL,
	[password] [varchar](20) NOT NULL,
	[type] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bill]    Script Date: 4/19/2020 5:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[datecheckin] [datetime] NULL DEFAULT (getdate()),
	[datecheckout] [datetime] NULL DEFAULT (NULL),
	[status] [nvarchar](20) NOT NULL DEFAULT ((0)),
	[idaccount] [int] NOT NULL,
	[idtable] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[billinfo]    Script Date: 4/19/2020 5:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[billinfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idbill] [int] NOT NULL,
	[idfood] [int] NOT NULL,
	[count] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[category]    Script Date: 4/19/2020 5:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[food]    Script Date: 4/19/2020 5:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[food](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[price] [float] NOT NULL,
	[idcategory] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[staff]    Script Date: 4/19/2020 5:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staff](
	[idstaff] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[status] [nvarchar](20) NOT NULL,
	[position] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[idaccount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idstaff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[staff_audit]    Script Date: 4/19/2020 5:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staff_audit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idstaff] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[changedate] [datetime] NOT NULL,
	[action] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tablefood]    Script Date: 4/19/2020 5:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tablefood](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[status] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([id], [username], [password], [type]) VALUES (1, N'admin', N'12345678', N'admin')
INSERT [dbo].[account] ([id], [username], [password], [type]) VALUES (3, N'user3', N'12345678', N'staff')
INSERT [dbo].[account] ([id], [username], [password], [type]) VALUES (4, N'user4', N'12345678', N'staff')
INSERT [dbo].[account] ([id], [username], [password], [type]) VALUES (5, N'user5', N'12345678', N'staff')
INSERT [dbo].[account] ([id], [username], [password], [type]) VALUES (6, N'user6', N'12345678', N'staff')
INSERT [dbo].[account] ([id], [username], [password], [type]) VALUES (7, N'user7', N'12345678', N'staff')
SET IDENTITY_INSERT [dbo].[account] OFF
SET IDENTITY_INSERT [dbo].[bill] ON 

INSERT [dbo].[bill] ([id], [datecheckin], [datecheckout], [status], [idaccount], [idtable]) VALUES (13, CAST(N'2020-04-18 22:11:51.693' AS DateTime), NULL, N'0', 1, 1)
INSERT [dbo].[bill] ([id], [datecheckin], [datecheckout], [status], [idaccount], [idtable]) VALUES (14, CAST(N'2020-04-18 22:14:44.290' AS DateTime), NULL, N'0', 1, 2)
INSERT [dbo].[bill] ([id], [datecheckin], [datecheckout], [status], [idaccount], [idtable]) VALUES (15, CAST(N'2020-04-19 10:13:07.863' AS DateTime), NULL, N'0', 1, 15)
INSERT [dbo].[bill] ([id], [datecheckin], [datecheckout], [status], [idaccount], [idtable]) VALUES (16, CAST(N'2020-04-19 10:30:42.457' AS DateTime), NULL, N'0', 1, 3)
INSERT [dbo].[bill] ([id], [datecheckin], [datecheckout], [status], [idaccount], [idtable]) VALUES (17, CAST(N'2020-04-19 11:10:30.683' AS DateTime), NULL, N'0', 1, 4)
INSERT [dbo].[bill] ([id], [datecheckin], [datecheckout], [status], [idaccount], [idtable]) VALUES (18, CAST(N'2020-04-19 11:16:57.513' AS DateTime), NULL, N'0', 1, 5)
INSERT [dbo].[bill] ([id], [datecheckin], [datecheckout], [status], [idaccount], [idtable]) VALUES (19, CAST(N'2020-04-19 11:21:44.620' AS DateTime), NULL, N'0', 1, 6)
INSERT [dbo].[bill] ([id], [datecheckin], [datecheckout], [status], [idaccount], [idtable]) VALUES (20, CAST(N'2020-04-19 11:22:15.843' AS DateTime), NULL, N'0', 1, 7)
INSERT [dbo].[bill] ([id], [datecheckin], [datecheckout], [status], [idaccount], [idtable]) VALUES (21, CAST(N'2020-04-19 11:26:56.880' AS DateTime), NULL, N'0', 1, 10)
INSERT [dbo].[bill] ([id], [datecheckin], [datecheckout], [status], [idaccount], [idtable]) VALUES (22, CAST(N'2020-04-19 14:52:01.733' AS DateTime), NULL, N'0', 1, 11)
SET IDENTITY_INSERT [dbo].[bill] OFF
SET IDENTITY_INSERT [dbo].[billinfo] ON 

INSERT [dbo].[billinfo] ([id], [idbill], [idfood], [count]) VALUES (55, 13, 1, 2)
INSERT [dbo].[billinfo] ([id], [idbill], [idfood], [count]) VALUES (56, 13, 2, 1)
INSERT [dbo].[billinfo] ([id], [idbill], [idfood], [count]) VALUES (57, 13, 3, 1)
INSERT [dbo].[billinfo] ([id], [idbill], [idfood], [count]) VALUES (58, 14, 2, 3)
INSERT [dbo].[billinfo] ([id], [idbill], [idfood], [count]) VALUES (61, 16, 1, 2)
INSERT [dbo].[billinfo] ([id], [idbill], [idfood], [count]) VALUES (62, 17, 2, 4)
INSERT [dbo].[billinfo] ([id], [idbill], [idfood], [count]) VALUES (64, 18, 1, 6)
INSERT [dbo].[billinfo] ([id], [idbill], [idfood], [count]) VALUES (65, 18, 2, 2)
INSERT [dbo].[billinfo] ([id], [idbill], [idfood], [count]) VALUES (66, 19, 1, 2)
INSERT [dbo].[billinfo] ([id], [idbill], [idfood], [count]) VALUES (67, 20, 1, 2)
INSERT [dbo].[billinfo] ([id], [idbill], [idfood], [count]) VALUES (68, 13, 11, 10)
INSERT [dbo].[billinfo] ([id], [idbill], [idfood], [count]) VALUES (69, 21, 7, 5)
INSERT [dbo].[billinfo] ([id], [idbill], [idfood], [count]) VALUES (70, 22, 1, 3)
SET IDENTITY_INSERT [dbo].[billinfo] OFF
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([id], [name]) VALUES (1, N'COFFEE')
SET IDENTITY_INSERT [dbo].[category] OFF
SET IDENTITY_INSERT [dbo].[food] ON 

INSERT [dbo].[food] ([id], [name], [price], [idcategory]) VALUES (1, N'BẠC SỈU', 29000, 1)
INSERT [dbo].[food] ([id], [name], [price], [idcategory]) VALUES (2, N'AMERICANO', 39000, 1)
INSERT [dbo].[food] ([id], [name], [price], [idcategory]) VALUES (3, N'CAPUCHINO', 45000, 1)
INSERT [dbo].[food] ([id], [name], [price], [idcategory]) VALUES (4, N'CARAMEL MACCHIATO', 55000, 1)
INSERT [dbo].[food] ([id], [name], [price], [idcategory]) VALUES (5, N'COLD BREW CAM SẢ', 45000, 1)
INSERT [dbo].[food] ([id], [name], [price], [idcategory]) VALUES (6, N'COLD BREW PHÚC BỒN TỬ', 50000, 1)
INSERT [dbo].[food] ([id], [name], [price], [idcategory]) VALUES (7, N'COLD BREW SỮA TƯƠI MACCHIATO', 50000, 1)
INSERT [dbo].[food] ([id], [name], [price], [idcategory]) VALUES (8, N'COLD BREW SỮA TƯƠI', 50000, 1)
INSERT [dbo].[food] ([id], [name], [price], [idcategory]) VALUES (9, N'COLD BREW TRUYÊ`N THÔ´NG', 45000, 1)
INSERT [dbo].[food] ([id], [name], [price], [idcategory]) VALUES (10, N'CÀ PHÊ SỮA', 29000, 1)
INSERT [dbo].[food] ([id], [name], [price], [idcategory]) VALUES (11, N'CÀ PHÊ ĐEN', 29000, 1)
INSERT [dbo].[food] ([id], [name], [price], [idcategory]) VALUES (12, N'ESPRESSO', 35000, 1)
SET IDENTITY_INSERT [dbo].[food] OFF
SET IDENTITY_INSERT [dbo].[staff] ON 

INSERT [dbo].[staff] ([idstaff], [name], [status], [position], [email], [idaccount]) VALUES (1, N'Phạm Văn Đình', N'Hoạt động', N'Ban Quản Lý', N'phamvandinh@gmail.com', 1)
INSERT [dbo].[staff] ([idstaff], [name], [status], [position], [email], [idaccount]) VALUES (3, N'Tạ Quốc Hùng', N'Hoạt động', N'Nhân Viên', N'taquochung@gmail.com', 3)
INSERT [dbo].[staff] ([idstaff], [name], [status], [position], [email], [idaccount]) VALUES (4, N'Nghiêm Khắc Lâm', N'Hoạt động', N'Nhân Viên', N'khaclam@gmail.com', 4)
INSERT [dbo].[staff] ([idstaff], [name], [status], [position], [email], [idaccount]) VALUES (5, N'Tạ Ngọc Hùng', N'Ngưng Hoạt động', N'Nhân Viên', N'dinhvjps@gmail.com', 5)
INSERT [dbo].[staff] ([idstaff], [name], [status], [position], [email], [idaccount]) VALUES (6, N'Lê Hào', N'Ngưng Hoạt động', N'Nhân Viên', N'Lehao@gmail.com', 6)
INSERT [dbo].[staff] ([idstaff], [name], [status], [position], [email], [idaccount]) VALUES (7, N'Trịnh Ngọc Hùng', N'Ngưng Hoạt động', N'Nhân Viên', N'phamdinh@gmail.com', 7)
SET IDENTITY_INSERT [dbo].[staff] OFF
SET IDENTITY_INSERT [dbo].[staff_audit] ON 

INSERT [dbo].[staff_audit] ([id], [idstaff], [name], [changedate], [action]) VALUES (1, 7, N'Trịnh Ngọc Trinh', CAST(N'2020-04-13 16:52:21.640' AS DateTime), N'Delete')
INSERT [dbo].[staff_audit] ([id], [idstaff], [name], [changedate], [action]) VALUES (2, 7, N'Trịnh Ngọc Trinh', CAST(N'2020-04-13 17:06:31.953' AS DateTime), N'Insert')
INSERT [dbo].[staff_audit] ([id], [idstaff], [name], [changedate], [action]) VALUES (3, 7, N'Trịnh Ngọc Trinh', CAST(N'2020-04-13 17:20:14.297' AS DateTime), N'Update')
INSERT [dbo].[staff_audit] ([id], [idstaff], [name], [changedate], [action]) VALUES (4, 7, N'Trịnh Ngọc Hùng', CAST(N'2020-04-13 17:20:49.550' AS DateTime), N'Update')
INSERT [dbo].[staff_audit] ([id], [idstaff], [name], [changedate], [action]) VALUES (5, 8, N'Lê Hào', CAST(N'2020-04-15 10:44:29.543' AS DateTime), N'Insert')
INSERT [dbo].[staff_audit] ([id], [idstaff], [name], [changedate], [action]) VALUES (6, 8, N'Lê Hào', CAST(N'2020-04-15 10:45:03.343' AS DateTime), N'Delete')
INSERT [dbo].[staff_audit] ([id], [idstaff], [name], [changedate], [action]) VALUES (7, 8, N'Trịnh Ngọc Trinh', CAST(N'2020-04-15 10:45:22.970' AS DateTime), N'Insert')
INSERT [dbo].[staff_audit] ([id], [idstaff], [name], [changedate], [action]) VALUES (8, 8, N'Trịnh Ngọc Trinh', CAST(N'2020-04-15 10:45:37.587' AS DateTime), N'Delete')
SET IDENTITY_INSERT [dbo].[staff_audit] OFF
SET IDENTITY_INSERT [dbo].[tablefood] ON 

INSERT [dbo].[tablefood] ([id], [name], [status]) VALUES (1, N'Bàn 1', N'có người')
INSERT [dbo].[tablefood] ([id], [name], [status]) VALUES (2, N'Bàn 2', N'có người')
INSERT [dbo].[tablefood] ([id], [name], [status]) VALUES (3, N'Bàn 3', N'có người')
INSERT [dbo].[tablefood] ([id], [name], [status]) VALUES (4, N'Bàn 4', N'có người')
INSERT [dbo].[tablefood] ([id], [name], [status]) VALUES (5, N'Bàn 5', N'có người')
INSERT [dbo].[tablefood] ([id], [name], [status]) VALUES (6, N'Bàn 6', N'có người')
INSERT [dbo].[tablefood] ([id], [name], [status]) VALUES (7, N'Bàn 7', N'có người')
INSERT [dbo].[tablefood] ([id], [name], [status]) VALUES (8, N'Bàn 8', N'trống')
INSERT [dbo].[tablefood] ([id], [name], [status]) VALUES (9, N'Bàn 9', N'trống')
INSERT [dbo].[tablefood] ([id], [name], [status]) VALUES (10, N'Bàn 10', N'có người')
INSERT [dbo].[tablefood] ([id], [name], [status]) VALUES (11, N'Bàn 11', N'trống')
INSERT [dbo].[tablefood] ([id], [name], [status]) VALUES (12, N'Bàn 12', N'trống')
INSERT [dbo].[tablefood] ([id], [name], [status]) VALUES (13, N'Bàn 13', N'trống')
INSERT [dbo].[tablefood] ([id], [name], [status]) VALUES (14, N'Bàn 14', N'trống')
INSERT [dbo].[tablefood] ([id], [name], [status]) VALUES (15, N'Bàn 15', N'trống')
SET IDENTITY_INSERT [dbo].[tablefood] OFF
ALTER TABLE [dbo].[bill]  WITH CHECK ADD FOREIGN KEY([idaccount])
REFERENCES [dbo].[account] ([id])
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD FOREIGN KEY([idtable])
REFERENCES [dbo].[tablefood] ([id])
GO
ALTER TABLE [dbo].[billinfo]  WITH CHECK ADD FOREIGN KEY([idbill])
REFERENCES [dbo].[bill] ([id])
GO
ALTER TABLE [dbo].[billinfo]  WITH CHECK ADD FOREIGN KEY([idfood])
REFERENCES [dbo].[food] ([id])
GO
ALTER TABLE [dbo].[food]  WITH CHECK ADD FOREIGN KEY([idcategory])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[staff]  WITH CHECK ADD FOREIGN KEY([idaccount])
REFERENCES [dbo].[account] ([id])
GO
/****** Object:  StoredProcedure [dbo].[add_bill]    Script Date: 4/19/2020 5:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[add_bill]
    @datecheckin DATETIME ,
    @datecheckout DATETIME ,
    @status NVARCHAR(20) ,
    @idaccount INT ,
    @idtable INT
AS
    BEGIN
        INSERT  dbo.bill
                ( datecheckin ,
                  datecheckout ,
                  status ,
                  idaccount ,
                  idtable
   	            )
        VALUES  ( @datecheckin ,
                  @datecheckout ,
                  @status ,
                  @idaccount ,
                  @idtable
                )
    END


GO
/****** Object:  StoredProcedure [dbo].[add_billinfo]    Script Date: 4/19/2020 5:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[add_billinfo]
@idbill INT,
@idfood INT,
@count INT
AS
BEGIN
	INSERT dbo.billinfo
	        ( idbill, idfood, count )
	VALUES  ( @idbill, -- idbill - int
	          @idfood, -- idfood - int
	          @count  -- count - int
	          )
END

GO
/****** Object:  StoredProcedure [dbo].[Addstaffaccount]    Script Date: 4/19/2020 5:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Addstaffaccount]
@name NVARCHAR(50),
@status NVARCHAR(20),
@position NVARCHAR(50),
@email NVARCHAR(50),
@idaccount INT,
@username VARCHAR(20),
@password VARCHAR(20),
@type NVARCHAR(20)
AS BEGIN

INSERT dbo.account
        ( username, password, type )
VALUES  ( @username ,@password,@type  )

INSERT dbo.staff
        ( name ,
          status ,
          position ,
          email ,
          idaccount
        )
VALUES  ( @name,@status,@position,@email,@idaccount)

END

GO
/****** Object:  StoredProcedure [dbo].[Addstaffaccountlatest]    Script Date: 4/19/2020 5:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Addstaffaccountlatest]
@name NVARCHAR(50),
@status NVARCHAR(20),
@position NVARCHAR(50),
@email NVARCHAR(50),
@idaccount INT,
@username VARCHAR(20),
@password VARCHAR(20),
@type NVARCHAR(20)
AS BEGIN

DECLARE @count INT = @idaccount;
SET @count = @idaccount -1;


DBCC CHECKIDENT ('dbo.account', RESEED, @count )
DBCC CHECKIDENT ('dbo.staff', RESEED, @count )

INSERT dbo.account
        ( username, password, type )
VALUES  ( @username ,@password,@type  )

INSERT dbo.staff
        ( name ,
          status ,
          position ,
          email ,
          idaccount
        )
VALUES  ( @name,@status,@position,@email,@idaccount)

END

GO
/****** Object:  StoredProcedure [dbo].[customer_table]    Script Date: 4/19/2020 5:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[customer_table]
@id INT
AS
BEGIN
	UPDATE dbo.tablefood SET status=N'có người' WHERE id=@id
END

GO
/****** Object:  StoredProcedure [dbo].[delete_billinfo]    Script Date: 4/19/2020 5:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[delete_billinfo]
@idbill INT
AS
BEGIN
DELETE FROM dbo.billinfo WHERE idbill=@idbill
END

GO
/****** Object:  StoredProcedure [dbo].[deletestaffaccount]    Script Date: 4/19/2020 5:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[deletestaffaccount]
@id INT
AS
BEGIN
	DELETE FROM dbo.staff WHERE idstaff=@id
	DELETE FROM dbo.account WHERE id=@id
END

GO
/****** Object:  StoredProcedure [dbo].[empty_table]    Script Date: 4/19/2020 5:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[empty_table]
@id INT
AS
BEGIN
	UPDATE dbo.tablefood SET status=N'trống' WHERE id=@id
END

GO
