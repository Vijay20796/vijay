USE [QA]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 6/13/2019 7:27:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (1, N'Engineering', N'Research and Development', CAST(N'1998-06-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (2, N'Tool Design', N'Research and Development', CAST(N'1998-06-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (3, N'Sales', N'Sales and Marketing', CAST(N'1998-06-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (4, N'Marketing', N'Sales and Marketing', CAST(N'1998-06-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (5, N'Purchasing', N'Inventory Management', CAST(N'1998-06-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (6, N'Research and Development', N'Research and Development', CAST(N'1998-06-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (7, N'Production', N'Manufacturing', CAST(N'1998-06-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (8, N'Production Control', N'Manufacturing', CAST(N'1998-06-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (9, N'Human Resources', N'Executive General and Administration', CAST(N'1998-06-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (10, N'Finance', N'Executive General and Administration', CAST(N'1998-06-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (11, N'Information Services', N'Executive General and Administration', CAST(N'1998-06-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (12, N'Document Control', N'Quality Assurance', CAST(N'1998-06-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (13, N'Quality Assurance', N'Quality Assurance', CAST(N'1998-06-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (14, N'Facilities and Maintenance', N'Executive General and Administration', CAST(N'1998-06-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (15, N'Shipping and Receiving', N'Inventory Management', CAST(N'1998-06-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (16, N'Executive', N'Executive General and Administration', CAST(N'1998-06-01 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Department] OFF
