USE [master]
GO
/****** Object:  Database [football_club]    Script Date: 04/05/15 18:38:29 ******/
CREATE DATABASE [football_club]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'football', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\football.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'football_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\football_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [football_club] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [football_club].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [football_club] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [football_club] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [football_club] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [football_club] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [football_club] SET ARITHABORT OFF 
GO
ALTER DATABASE [football_club] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [football_club] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [football_club] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [football_club] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [football_club] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [football_club] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [football_club] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [football_club] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [football_club] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [football_club] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [football_club] SET  DISABLE_BROKER 
GO
ALTER DATABASE [football_club] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [football_club] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [football_club] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [football_club] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [football_club] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [football_club] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [football_club] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [football_club] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [football_club] SET  MULTI_USER 
GO
ALTER DATABASE [football_club] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [football_club] SET DB_CHAINING OFF 
GO
ALTER DATABASE [football_club] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [football_club] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [football_club]
GO
/****** Object:  Schema [football]    Script Date: 04/05/15 18:38:29 ******/
CREATE SCHEMA [football]
GO
/****** Object:  Table [football].[annual_spot]    Script Date: 04/05/15 18:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [football].[annual_spot](
	[n_spot] [int] NOT NULL,
	[row] [varchar](1) NOT NULL,
	[id_section] [int] NOT NULL,
	[start_date] [date] NOT NULL,
	[duration] [int] NOT NULL,
	[value] [int] NOT NULL,
	[bi] [int] NOT NULL,
	[season] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[n_spot] ASC,
	[bi] ASC,
	[row] ASC,
	[id_section] ASC,
	[season] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [football].[coach]    Script Date: 04/05/15 18:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [football].[coach](
	[bi] [int] NOT NULL,
	[federation_id] [int] NOT NULL,
	[role] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [football].[court]    Script Date: 04/05/15 18:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [football].[court](
	[id_court] [int] IDENTITY(1,1) NOT NULL,
	[address] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_court] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [football].[department]    Script Date: 04/05/15 18:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [football].[department](
	[department_id] [int] NOT NULL,
	[address] [varchar](75) NOT NULL,
	[name] [varchar](75) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[department_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [football].[heads]    Script Date: 04/05/15 18:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [football].[heads](
	[bi] [int] NOT NULL,
	[team_name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bi] ASC,
	[team_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [football].[internal_people]    Script Date: 04/05/15 18:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [football].[internal_people](
	[bi] [int] NOT NULL,
	[salary] [money] NOT NULL,
	[internal_id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[internal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [football].[members]    Script Date: 04/05/15 18:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [football].[members](
	[bi] [int] NOT NULL,
	[n_member] [int] IDENTITY(1,1) NOT NULL,
	[shares_in_day] [bit] NOT NULL,
	[shares_value] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[n_member] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [football].[person]    Script Date: 04/05/15 18:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [football].[person](
	[bi] [int] NOT NULL,
	[name] [varchar](75) NOT NULL,
	[address] [varchar](75) NOT NULL,
	[birth_date] [date] NOT NULL,
	[nif] [int] NOT NULL,
	[gender] [varchar](1) NOT NULL,
	[nationality] [varchar](75) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[nif] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [football].[play]    Script Date: 04/05/15 18:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [football].[play](
	[bi] [int] NOT NULL,
	[team_name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bi] ASC,
	[team_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [football].[player]    Script Date: 04/05/15 18:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [football].[player](
	[bi] [int] NOT NULL,
	[federation_id] [int] NOT NULL,
	[weight] [int] NOT NULL,
	[height] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[federation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [football].[practice]    Script Date: 04/05/15 18:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [football].[practice](
	[date] [date] NOT NULL,
	[hour] [time](7) NOT NULL,
	[id_court] [int] NOT NULL,
	[team_name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[date] ASC,
	[hour] ASC,
	[id_court] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [football].[section]    Script Date: 04/05/15 18:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [football].[section](
	[id_section] [int] NOT NULL,
	[type] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_section] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [football].[spot]    Script Date: 04/05/15 18:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [football].[spot](
	[n_spot] [int] NOT NULL,
	[row] [varchar](1) NOT NULL,
	[id_section] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[n_spot] ASC,
	[row] ASC,
	[id_section] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [football].[staff]    Script Date: 04/05/15 18:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [football].[staff](
	[bi] [int] NOT NULL,
	[role] [varchar](50) NOT NULL,
	[department_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [football].[team]    Script Date: 04/05/15 18:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [football].[team](
	[name] [varchar](50) NOT NULL,
	[max_age] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [football].[annual_spot]  WITH CHECK ADD  CONSTRAINT [FORLABISBI] FOREIGN KEY([bi])
REFERENCES [football].[members] ([bi])
ON UPDATE CASCADE
GO
ALTER TABLE [football].[annual_spot] CHECK CONSTRAINT [FORLABISBI]
GO
ALTER TABLE [football].[annual_spot]  WITH CHECK ADD  CONSTRAINT [FORLAL] FOREIGN KEY([n_spot], [row], [id_section])
REFERENCES [football].[spot] ([n_spot], [row], [id_section])
ON UPDATE CASCADE
GO
ALTER TABLE [football].[annual_spot] CHECK CONSTRAINT [FORLAL]
GO
ALTER TABLE [football].[coach]  WITH CHECK ADD  CONSTRAINT [FORTBIPIBI] FOREIGN KEY([bi])
REFERENCES [football].[internal_people] ([bi])
ON UPDATE CASCADE
GO
ALTER TABLE [football].[coach] CHECK CONSTRAINT [FORTBIPIBI]
GO
ALTER TABLE [football].[heads]  WITH CHECK ADD  CONSTRAINT [FORDBITBI] FOREIGN KEY([bi])
REFERENCES [football].[coach] ([bi])
ON UPDATE CASCADE
GO
ALTER TABLE [football].[heads] CHECK CONSTRAINT [FORDBITBI]
GO
ALTER TABLE [football].[heads]  WITH CHECK ADD  CONSTRAINT [FORDEEE] FOREIGN KEY([team_name])
REFERENCES [football].[team] ([name])
ON UPDATE CASCADE
GO
ALTER TABLE [football].[heads] CHECK CONSTRAINT [FORDEEE]
GO
ALTER TABLE [football].[internal_people]  WITH CHECK ADD  CONSTRAINT [FORPIBIPBI] FOREIGN KEY([bi])
REFERENCES [football].[person] ([bi])
ON UPDATE CASCADE
GO
ALTER TABLE [football].[internal_people] CHECK CONSTRAINT [FORPIBIPBI]
GO
ALTER TABLE [football].[members]  WITH CHECK ADD  CONSTRAINT [FORSBIPBI] FOREIGN KEY([bi])
REFERENCES [football].[person] ([bi])
ON UPDATE CASCADE
GO
ALTER TABLE [football].[members] CHECK CONSTRAINT [FORSBIPBI]
GO
ALTER TABLE [football].[play]  WITH CHECK ADD  CONSTRAINT [FORJBIJBI] FOREIGN KEY([bi])
REFERENCES [football].[player] ([bi])
ON UPDATE CASCADE
GO
ALTER TABLE [football].[play] CHECK CONSTRAINT [FORJBIJBI]
GO
ALTER TABLE [football].[play]  WITH CHECK ADD  CONSTRAINT [FORJEEE] FOREIGN KEY([team_name])
REFERENCES [football].[team] ([name])
ON UPDATE CASCADE
GO
ALTER TABLE [football].[play] CHECK CONSTRAINT [FORJEEE]
GO
ALTER TABLE [football].[player]  WITH CHECK ADD  CONSTRAINT [FORJBIPIBI] FOREIGN KEY([bi])
REFERENCES [football].[internal_people] ([bi])
ON UPDATE CASCADE
GO
ALTER TABLE [football].[player] CHECK CONSTRAINT [FORJBIPIBI]
GO
ALTER TABLE [football].[practice]  WITH CHECK ADD  CONSTRAINT [FORTICCIC] FOREIGN KEY([id_court])
REFERENCES [football].[court] ([id_court])
ON UPDATE CASCADE
GO
ALTER TABLE [football].[practice] CHECK CONSTRAINT [FORTICCIC]
GO
ALTER TABLE [football].[practice]  WITH CHECK ADD  CONSTRAINT [FORTNEEN] FOREIGN KEY([team_name])
REFERENCES [football].[team] ([name])
ON UPDATE CASCADE
GO
ALTER TABLE [football].[practice] CHECK CONSTRAINT [FORTNEEN]
GO
ALTER TABLE [football].[spot]  WITH CHECK ADD  CONSTRAINT [FORLISSIS] FOREIGN KEY([id_section])
REFERENCES [football].[section] ([id_section])
ON UPDATE CASCADE
GO
ALTER TABLE [football].[spot] CHECK CONSTRAINT [FORLISSIS]
GO
ALTER TABLE [football].[staff]  WITH CHECK ADD  CONSTRAINT [FORSCBIPIBI] FOREIGN KEY([bi])
REFERENCES [football].[internal_people] ([bi])
ON UPDATE CASCADE
GO
ALTER TABLE [football].[staff] CHECK CONSTRAINT [FORSCBIPIBI]
GO
ALTER TABLE [football].[staff]  WITH CHECK ADD  CONSTRAINT [FORSCIDDID] FOREIGN KEY([department_id])
REFERENCES [football].[department] ([department_id])
ON UPDATE CASCADE
GO
ALTER TABLE [football].[staff] CHECK CONSTRAINT [FORSCIDDID]
GO
ALTER TABLE [football].[coach]  WITH CHECK ADD CHECK  (([federation_id]>=(0)))
GO
ALTER TABLE [football].[internal_people]  WITH CHECK ADD CHECK  (([salary]>=(0)))
GO
ALTER TABLE [football].[members]  WITH CHECK ADD CHECK  (([shares_value]>=(0)))
GO
ALTER TABLE [football].[person]  WITH CHECK ADD CHECK  (([bi]>(0)))
GO
ALTER TABLE [football].[person]  WITH CHECK ADD CHECK  (([gender]='F' OR [gender]='M'))
GO
ALTER TABLE [football].[player]  WITH CHECK ADD CHECK  (([federation_id]>=(0)))
GO
ALTER TABLE [football].[player]  WITH CHECK ADD CHECK  (([height]>(0)))
GO
ALTER TABLE [football].[player]  WITH CHECK ADD CHECK  (([weight]>(0)))
GO
ALTER TABLE [football].[team]  WITH CHECK ADD CHECK  (([max_age]>(0)))
GO
USE [master]
GO
ALTER DATABASE [football_club] SET  READ_WRITE 
GO
