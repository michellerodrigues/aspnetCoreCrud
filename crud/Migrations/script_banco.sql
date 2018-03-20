USE [ProdutosDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20/03/2018 19:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Produtos]    Script Date: 20/03/2018 19:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produtos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](255) NOT NULL,
	[Valor] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Produtos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180320223323_BancoDeDadosInicial', N'2.0.2-rtm-10011')
SET IDENTITY_INSERT [dbo].[Produtos] ON 

INSERT [dbo].[Produtos] ([Id], [Nome], [Valor]) VALUES (1, N'Mini Garrafa Térmica Gourmet', CAST(839.00 AS Decimal(18, 2)))
INSERT [dbo].[Produtos] ([Id], [Nome], [Valor]) VALUES (2, N'Cabideiro de Aço Inoxidável', CAST(635.00 AS Decimal(18, 2)))
INSERT [dbo].[Produtos] ([Id], [Nome], [Valor]) VALUES (3, N'Porta Copos Gourmet', CAST(395.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Produtos] OFF
