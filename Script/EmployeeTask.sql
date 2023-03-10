USE [master]
GO
/****** Object:  Database [EmployeeTask]    Script Date: 3/7/2023 10:13:35 PM ******/
CREATE DATABASE [EmployeeTask]
Go
USE [EmployeeTask]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 3/7/2023 10:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [varchar](50) NOT NULL,
	[EmployeeCode] [varchar](20) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[PwSalt] [varchar](50) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[RegistDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpTask]    Script Date: 3/7/2023 10:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpTask](
	[Id] [varchar](50) NOT NULL,
	[EmployeeId] [varchar](50) NOT NULL,
	[TaskName] [nvarchar](200) NOT NULL,
	[EstimatedEndDate] [datetime] NULL,
	[IsPrority] [bit] NOT NULL,
	[AssignDate] [datetime] NOT NULL,
	[AssignEmployeeId] [varchar](50) NOT NULL,
	[Remark] [nvarchar](200) NULL,
	[Status] [int] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateEmployeeId] [varchar](50) NULL,
	[CancelReason] [nvarchar](200) NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Employee] ([Id], [EmployeeCode], [Name], [Password], [PwSalt], [IsAdmin], [IsActive], [RegistDate], [UpdateDate]) VALUES (N'447aebca-cd28-4917-b394-afe9d0884f56', N'U0004', N'Apple', N'JRvOzq0C2xRtQ5EDYC8dbw==', N'QqFyw42PEf+QgNg3d7NQEA==', 0, 1, CAST(N'2023-02-23T22:51:03.793' AS DateTime), CAST(N'2023-03-07T22:03:54.503' AS DateTime))
INSERT [dbo].[Employee] ([Id], [EmployeeCode], [Name], [Password], [PwSalt], [IsAdmin], [IsActive], [RegistDate], [UpdateDate]) VALUES (N'5dbdfb3c-c5b5-49be-b87d-0552095bb03a', N'U0003', N'Khaing Khaing Myat', N'cZEnRij++K6GTZN84smbDA==', N'GPE1Tf1mxSOMmWcXCHeWpw==', 0, 1, CAST(N'2023-02-20T12:41:07.117' AS DateTime), CAST(N'2023-03-07T22:04:01.170' AS DateTime))
INSERT [dbo].[Employee] ([Id], [EmployeeCode], [Name], [Password], [PwSalt], [IsAdmin], [IsActive], [RegistDate], [UpdateDate]) VALUES (N'dsfds', N'U0001', N'Admin', N'lDlOcv54x3ajURM8zVubCg==', N'5g1e4au346Lw6kyVCFghcA==', 1, 1, CAST(N'2023-02-19T00:00:00.000' AS DateTime), CAST(N'2023-02-23T22:47:56.337' AS DateTime))
GO
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'0a7ba008-0d48-4631-815b-27bbd21dbb6e', N'dsfds', N'2', NULL, 0, CAST(N'2023-03-05T15:10:58.197' AS DateTime), N'dsfds', NULL, 2, CAST(N'2023-03-07T19:03:19.537' AS DateTime), N'dsfds', NULL)
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'0f356a5c-a9b4-47e4-93b3-cc12b7638288', N'dsfds', N'Implement Excel Export in Online Shop', CAST(N'2023-03-03T18:51:00.000' AS DateTime), 1, CAST(N'2023-03-02T18:51:08.337' AS DateTime), N'dsfds', NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'153e4386-9cce-4c18-9b89-84b6bb9c3632', N'5dbdfb3c-c5b5-49be-b87d-0552095bb03a', N'Add page authentication', CAST(N'2023-02-21T00:00:00.000' AS DateTime), 1, CAST(N'2023-02-21T15:09:19.140' AS DateTime), N'dsfds', N'Try to limit unauthorize route access', 2, CAST(N'2023-02-23T19:42:49.833' AS DateTime), N'5dbdfb3c-c5b5-49be-b87d-0552095bb03a', NULL)
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'189554b9-3aee-401f-b687-0e10a5e2de2d', N'dsfds', N'10', NULL, 0, CAST(N'2023-03-05T15:11:33.347' AS DateTime), N'dsfds', NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'24d4c1fe-6b41-4540-a725-fff701b1e35e', N'5dbdfb3c-c5b5-49be-b87d-0552095bb03a', N'Fix nav active', CAST(N'2023-02-23T20:03:00.000' AS DateTime), 0, CAST(N'2023-02-23T20:03:50.567' AS DateTime), N'dsfds', N'Fix today', 0, CAST(N'2023-03-06T16:24:20.193' AS DateTime), N'dsfds', NULL)
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'27b8b73d-5619-4fd7-8397-b53ef6e26026', N'dsfds', N'9', NULL, 0, CAST(N'2023-03-05T15:11:29.620' AS DateTime), N'dsfds', NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'2fa1fd69-c8ae-4ed8-aaed-850d34a066ba', N'dsfds', N'8', NULL, 0, CAST(N'2023-03-05T15:11:26.203' AS DateTime), N'dsfds', NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'5d5e0943-1fad-4a58-bf6c-888df62b3765', N'dsfds', N'Add table refresh button in TaskBoard', CAST(N'2023-03-03T18:49:00.000' AS DateTime), 1, CAST(N'2023-03-02T18:50:09.237' AS DateTime), N'dsfds', N'Rewrite table data loading from asp.net form action to ajax call', 2, CAST(N'2023-03-06T17:03:38.157' AS DateTime), N'dsfds', NULL)
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'6123fa8f-3a8e-4f37-a3d4-4039e3efe3fd', N'dsfds', N'5', NULL, 0, CAST(N'2023-03-05T15:11:15.603' AS DateTime), N'dsfds', NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'63b7a079-ac3b-439c-ac75-523d429e482c', N'5dbdfb3c-c5b5-49be-b87d-0552095bb03a', N'trt', CAST(N'2023-02-25T17:40:00.000' AS DateTime), 1, CAST(N'2023-02-24T17:40:12.200' AS DateTime), N'dsfds', N'ret', 0, NULL, NULL, NULL)
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'77dd6a2c-c271-446d-a6f6-d84e23e8bb38', N'447aebca-cd28-4917-b394-afe9d0884f56', N'task3', CAST(N'2023-03-06T16:12:00.000' AS DateTime), 0, CAST(N'2023-03-06T16:12:37.167' AS DateTime), N'dsfds', NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'b85cc15b-3d19-4d0c-b291-1c8c90ff724c', N'dsfds', N'3', CAST(N'2023-03-07T19:05:00.000' AS DateTime), 0, CAST(N'2023-03-05T15:11:04.833' AS DateTime), N'dsfds', N'task3 remark', 3, CAST(N'2023-03-07T19:06:51.433' AS DateTime), N'dsfds', N'sfs')
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'b923c835-e6d3-40ec-81ab-9d57b12f09b6', N'dsfds', N'7', NULL, 0, CAST(N'2023-03-05T15:11:22.390' AS DateTime), N'dsfds', NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'c1c81d7f-71ac-4d7e-9474-96632b87ea98', N'dsfds', N'1', NULL, 0, CAST(N'2023-03-05T15:10:52.053' AS DateTime), N'dsfds', NULL, 3, CAST(N'2023-03-05T16:57:44.603' AS DateTime), N'dsfds', N'testing')
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'c43122cc-afd3-4376-9f5a-da80437dc573', N'5dbdfb3c-c5b5-49be-b87d-0552095bb03a', N'Add page authentication', CAST(N'2023-02-21T17:14:00.000' AS DateTime), 1, CAST(N'2023-02-21T17:14:13.533' AS DateTime), N'dsfds', N'Try to limit unauthorize route access', 3, CAST(N'2023-03-06T16:23:31.533' AS DateTime), N'dsfds', N'Testing')
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'c5fa226a-83a6-4173-b3c4-17aeedaa075c', N'dsfds', N'6', NULL, 0, CAST(N'2023-03-05T15:11:19.050' AS DateTime), N'dsfds', NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'c8b141e9-39f0-4296-89d0-cd79d617898e', N'dsfds', N'Add logging', CAST(N'2023-02-24T15:00:00.000' AS DateTime), 1, CAST(N'2023-02-23T20:01:07.723' AS DateTime), N'dsfds', N'Add server side logging', 3, CAST(N'2023-02-23T20:02:34.843' AS DateTime), N'dsfds', N'Will assign to U0003')
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'd1c03b1e-3e4c-4991-baf3-02c45588f89c', N'5dbdfb3c-c5b5-49be-b87d-0552095bb03a', N'tdf', CAST(N'2023-02-24T17:25:00.000' AS DateTime), 0, CAST(N'2023-02-24T17:25:47.360' AS DateTime), N'dsfds', NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'de7a3218-68ee-4ce9-9f72-af1e21ff7355', N'5dbdfb3c-c5b5-49be-b87d-0552095bb03a', N'task3', CAST(N'2023-02-21T17:41:00.000' AS DateTime), 1, CAST(N'2023-02-21T17:18:11.890' AS DateTime), N'dsfds', N'task3 remark', 3, CAST(N'2023-03-06T16:13:29.863' AS DateTime), N'dsfds', N'Testing')
INSERT [dbo].[EmpTask] ([Id], [EmployeeId], [TaskName], [EstimatedEndDate], [IsPrority], [AssignDate], [AssignEmployeeId], [Remark], [Status], [UpdateDate], [UpdateEmployeeId], [CancelReason]) VALUES (N'f083700e-0640-4fa2-987f-80a41e898260', N'dsfds', N'Fix logging to only display error log', CAST(N'2023-03-09T19:07:00.000' AS DateTime), 1, CAST(N'2023-03-07T19:08:32.857' AS DateTime), N'dsfds', N'Deploy after fix', 0, NULL, NULL, NULL)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_Employee_1]    Script Date: 3/7/2023 10:13:36 PM ******/
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [UK_Employee_1] UNIQUE NONCLUSTERED 
(
	[EmployeeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [EmployeeTask] SET  READ_WRITE 
GO
