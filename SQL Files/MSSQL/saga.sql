if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[chardata]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[chardata]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[inventory]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[inventory]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[joblevel]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[joblevel]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[login]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[login]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mail]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mail]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mapinfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mapinfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[quest]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[quest]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[skills]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[skills]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[storage]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[storage]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[weapon]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[weapon]
GO

CREATE TABLE [dbo].[chardata] (
	[charID] [int] IDENTITY (1, 1) NOT NULL ,
	[account_id] [int] NULL ,
	[name] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[face] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[details] [varchar] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[sex] [tinyint] NULL ,
	[race] [tinyint] NULL ,
	[job] [tinyint] NULL ,
	[cLevel] [tinyint] NULL ,
	[jLevel] [tinyint] NULL ,
	[cEXP] [int] NULL ,
	[jEXP] [int] NULL ,
	[pendingDeletion] [tinyint] NULL ,
	[validationKey] [int] NULL ,
	[HP] [smallint] NULL ,
	[maxHP] [smallint] NULL ,
	[SP] [smallint] NULL ,
	[maxSP] [smallint] NULL ,
	[LC] [tinyint] NULL ,
	[maxLC] [tinyint] NULL ,
	[LP] [tinyint] NULL ,
	[maxLP] [tinyint] NULL ,
	[str] [tinyint] NULL ,
	[dex] [tinyint] NULL ,
	[intel] [tinyint] NULL ,
	[con] [tinyint] NULL ,
	[luk] [tinyint] NULL ,
	[stpoints] [tinyint] NULL ,
	[slots] [varchar] (14) COLLATE Chinese_PRC_CI_AS NULL ,
	[weaponName] [varchar] (24) COLLATE Chinese_PRC_CI_AS NULL ,
	[weaponType] [smallint] NULL ,
	[GMLevel] [tinyint] NULL ,
	[NumShortcuts] [tinyint] NULL ,
	[ShortcutIDs] [varchar] (96) COLLATE Chinese_PRC_CI_AS NULL ,
	[mapID] [tinyint] NULL ,
	[worldID] [tinyint] NULL ,
	[x] [float] NULL ,
	[y] [float] NULL ,
	[z] [float] NULL ,
	[yaw] [int] NULL ,
	[zeny] [int] NULL ,
	[save_map] [tinyint] NULL ,
	[save_x] [float] NULL ,
	[save_y] [float] NULL ,
	[save_z] [float] NULL ,
	[sightRange] [int] NULL ,
	[maxMoveRange] [int] NULL ,
	[state] [tinyint] NULL ,
	[stance] [tinyint] NULL ,
	[guild] [int] NULL ,
	[party] [int] NULL ,
	[Scenario] [int] NULL ,
	[online] [tinyint] NULL,
	[muted] [tinyint] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[inventory] (
	[charID] [int] NOT NULL ,
	[nameID] [int] NULL ,
	[creatorName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[equip] [smallint] NULL ,
	[amount] [tinyint] NULL ,
	[durability] [smallint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[joblevel] (
	[charID] [int] NOT NULL ,
	[job] [tinyint] NULL ,
	[level] [tinyint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[login] (
	[account_id] [int] IDENTITY (1, 1) NOT NULL ,
	[username] [varchar] (25) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[password] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[sex] [tinyint] NOT NULL ,
	[lastlogin] [varchar] (25) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Banned] [tinyint] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mail] (
	[mailID] [int] IDENTITY (1, 1) NOT NULL ,
	[sender] [nvarchar] (34) COLLATE Chinese_PRC_CI_AS NULL ,
	[receiver] [nvarchar] (34) COLLATE Chinese_PRC_CI_AS NULL ,
	[topic] [nvarchar] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[date] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[content] [nvarchar] (402) COLLATE Chinese_PRC_CI_AS NULL ,
	[read] [tinyint] NULL ,
	[valid] [tinyint] NULL ,
	[zeny] [int] NULL ,
	[itemID] [int] NULL ,
	[creator] [nvarchar] (36) COLLATE Chinese_PRC_CI_AS NULL ,
	[stack] [tinyint] NULL ,
	[durability] [smallint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mapinfo] (
	[charID] [int] NOT NULL ,
	[map] [tinyint] NULL ,
	[value] [tinyint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[quest] (
	[charID] [int] NOT NULL ,
	[questID] [int] NULL ,
	[step] [varchar] (150) COLLATE Chinese_PRC_CI_AS NULL ,
	[type] [tinyint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[skills] (
	[charID] [int] NOT NULL ,
	[type] [tinyint] NULL ,
	[skillID] [int] NULL ,
	[exp] [int] NULL ,
	[slot] [tinyint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[storage] (
	[charID] [int] NOT NULL ,
	[nameID] [int] NULL ,
	[creatorName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[equip] [smallint] NULL ,
	[amount] [tinyint] NULL ,
	[durability] [smallint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[weapon] (
	[charID] [int] NOT NULL ,
	[name] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[level] [tinyint] NULL ,
	[type] [tinyint] NULL ,
	[augeSkillID] [int] NULL ,
	[exp] [int] NULL ,
	[durability] [smallint] NULL ,
	[U1] [tinyint] NULL ,
	[active] [tinyint] NULL ,
	[slot1] [int] NULL ,
	[slot2] [int] NULL ,
	[slot3] [int] NULL ,
	[slot4] [int] NULL ,
	[slot5] [int] NULL ,
	[slot6] [int] NULL 
) ON [PRIMARY]
GO

