USE [REMSDB]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]    Script Date: 20-Mar-15 11:38:27 AM ******/
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]    Script Date: 20-Mar-15 11:38:27 AM ******/
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]    Script Date: 20-Mar-15 11:38:27 AM ******/
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_BasicAccess]    Script Date: 20-Mar-15 11:38:27 AM ******/
CREATE ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_FullAccess]    Script Date: 20-Mar-15 11:38:27 AM ******/
CREATE ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_ReportingAccess]    Script Date: 20-Mar-15 11:38:27 AM ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_BasicAccess]    Script Date: 20-Mar-15 11:38:27 AM ******/
CREATE ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_FullAccess]    Script Date: 20-Mar-15 11:38:27 AM ******/
CREATE ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_ReportingAccess]    Script Date: 20-Mar-15 11:38:27 AM ******/
CREATE ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]    Script Date: 20-Mar-15 11:38:27 AM ******/
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]    Script Date: 20-Mar-15 11:38:27 AM ******/
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]    Script Date: 20-Mar-15 11:38:27 AM ******/
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_WebEvent_FullAccess]    Script Date: 20-Mar-15 11:38:27 AM ******/
CREATE ROLE [aspnet_WebEvent_FullAccess]
GO
ALTER ROLE [aspnet_Membership_BasicAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
ALTER ROLE [aspnet_Membership_ReportingAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_BasicAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_ReportingAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Profile_BasicAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Profile_ReportingAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Roles_BasicAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Roles_ReportingAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 20-Mar-15 11:38:28 AM ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 20-Mar-15 11:38:28 AM ******/
CREATE SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 20-Mar-15 11:38:28 AM ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 20-Mar-15 11:38:28 AM ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 20-Mar-15 11:38:28 AM ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 20-Mar-15 11:38:28 AM ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 20-Mar-15 11:38:28 AM ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 20-Mar-15 11:38:28 AM ******/
CREATE SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 20-Mar-15 11:38:28 AM ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 20-Mar-15 11:38:28 AM ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 20-Mar-15 11:38:28 AM ******/
CREATE SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 20-Mar-15 11:38:28 AM ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 20-Mar-15 11:38:28 AM ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Table [dbo].[AdditionalCharge]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdditionalCharge](
	[AdditionalChargeID] [int] IDENTITY(1,1) NOT NULL,
	[TowerID] [int] NULL,
	[Name] [nvarchar](256) NULL,
	[Amount] [money] NULL,
	[Unit] [nvarchar](50) NULL,
	[ChargeType] [nvarchar](256) NULL,
	[CrDate] [datetime] NULL CONSTRAINT [DF_AdditionalCharge_CrDate]  DEFAULT (getdate()),
	[CrBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_AdditionalCharge] PRIMARY KEY CLUSTERED 
(
	[AdditionalChargeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Agreement]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agreement](
	[AgreementID] [int] IDENTITY(1,1) NOT NULL,
	[SaleID] [int] NULL,
	[AgreementAmount] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifyBy] [nvarchar](50) NULL,
	[CrDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[DocURL] [nvarchar](300) NULL,
	[HTMLURL] [nvarchar](400) NULL,
	[UploadDate] [datetime] NULL,
	[UploadBy] [nvarchar](50) NULL,
	[UploadURL] [nvarchar](500) NULL,
	[AllotmentLetter] [nvarchar](500) NULL,
	[AllotmentLetterBy] [nvarchar](100) NULL,
	[AllotmentLetterDate] [datetime] NULL,
	[WelComeLetter] [nvarchar](500) NULL,
	[AssuredDocURL] [nvarchar](400) NULL,
	[AssuredHTMLURL] [nvarchar](400) NULL,
 CONSTRAINT [PK_dbo.AgreementID] PRIMARY KEY CLUSTERED 
(
	[AgreementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AssuredReturn]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssuredReturn](
	[AssuredReturnID] [int] IDENTITY(1,1) NOT NULL,
	[SaleID] [int] NULL,
	[Duration] [nvarchar](100) NULL,
	[Amount] [money] NULL,
	[Status] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifyBy] [nvarchar](50) NULL,
	[CrDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[PropertyID] [int] NULL,
	[FlatName] [nvarchar](100) NULL,
	[MonthName] [nvarchar](50) NULL,
	[ChequeNo] [nvarchar](50) NULL,
	[ChequeDate] [datetime] NULL,
	[TDS] [numeric](18, 2) NULL,
 CONSTRAINT [PK_dbo.AssuredReturnID] PRIMARY KEY CLUSTERED 
(
	[AssuredReturnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AssuredReturnPayment]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AssuredReturnPayment](
	[ARPaymentID] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptNo] [varchar](50) NULL,
	[SaleID] [int] NULL,
	[PaymentDate] [datetime] NULL,
	[Amount] [decimal](17, 2) NULL,
	[PaymentMode] [nvarchar](10) NULL,
	[ChequeNo] [varchar](50) NULL,
	[BankName] [varchar](50) NULL,
	[ChequeDate] [datetime] NULL,
	[PaymentStatus] [nvarchar](10) NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Remarks] [nvarchar](150) NULL,
	[BankCharges] [decimal](17, 2) NULL,
	[BankClearanceDate] [datetime] NULL,
	[BankBranch] [nvarchar](50) NULL,
	[AmtRcvdinWords] [nvarchar](250) NULL,
	[IsReceipt] [bit] NULL,
	[Activity] [nvarchar](10) NULL,
	[ModifyDate] [datetime] NULL,
	[FlatName] [nvarchar](50) NULL,
	[CrDate] [datetime] NULL,
	[ModifyBy] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[RefundRemark] [nvarchar](300) NULL,
	[ClearanceCharge] [money] NOT NULL,
	[IsBounce] [bit] NOT NULL,
	[CustomerID] [int] NULL,
	[AssuredReturnID] [int] NULL,
	[TransactionID] [int] NULL,
 CONSTRAINT [PK_AssuredReturnPayment_PaymentID] PRIMARY KEY CLUSTERED 
(
	[ARPaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BankMaster]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankMaster](
	[BankID] [int] IDENTITY(1,1) NOT NULL,
	[BankName] [nvarchar](50) NULL,
	[BankBranch] [nvarchar](50) NULL,
	[BankAddress] [nvarchar](500) NULL,
 CONSTRAINT [PK_BankMaster] PRIMARY KEY CLUSTERED 
(
	[BankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BrokerMaster]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrokerMaster](
	[BrokerID] [int] IDENTITY(1,1) NOT NULL,
	[BrokerName] [nvarchar](50) NULL,
	[Address1] [nvarchar](50) NULL,
	[Address2] [nvarchar](50) NULL,
	[MobileNo] [nvarchar](50) NULL,
	[PanNo] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[RecordStatus] [int] NULL,
 CONSTRAINT [PK_BrokerMaster] PRIMARY KEY CLUSTERED 
(
	[BrokerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BrokerPayment]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrokerPayment](
	[BrokerPaymentID] [int] IDENTITY(1,1) NOT NULL,
	[FlatID] [int] NULL,
	[SaleID] [int] NULL,
	[BrokerID] [int] NULL,
	[AmountPaid] [decimal](17, 2) NULL,
	[PaidDate] [datetime] NULL,
	[PID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[RecordStatus] [int] NULL,
	[PaymentMode] [nvarchar](200) NULL,
	[ChequeNo] [nvarchar](50) NULL,
	[ChequeDate] [datetime] NULL,
	[BankName] [nvarchar](50) NULL,
	[BankBranch] [nvarchar](50) NULL,
	[Remarks] [nvarchar](250) NULL,
	[Status] [nvarchar](20) NULL,
 CONSTRAINT [PK_tblBrokerPaymentDetail] PRIMARY KEY CLUSTERED 
(
	[BrokerPaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BrokerToProperty]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrokerToProperty](
	[BrokerToPropertyID] [int] IDENTITY(1,1) NOT NULL,
	[FlatID] [int] NULL,
	[SaleID] [int] NULL,
	[BrokerID] [int] NULL,
	[BrokerAmount] [decimal](17, 2) NULL,
	[PID] [int] NULL,
	[Date] [datetime] NULL,
	[Createdate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[RecordStatus] [int] NULL,
	[ApproveStatus] [int] NULL,
	[Remarks] [nvarchar](300) NULL,
	[Status] [nvarchar](20) NULL,
 CONSTRAINT [PK_tblBrokerAmountDetail] PRIMARY KEY CLUSTERED 
(
	[BrokerToPropertyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CityMaster]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityMaster](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NULL,
	[StateName] [nvarchar](50) NULL,
	[CityCode] [nvarchar](50) NULL,
	[StateCode] [nvarchar](50) NULL,
	[CrDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[AreaID] [int] NULL,
 CONSTRAINT [PK_CityMaster] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[SaleID] [int] NULL,
	[AppTitle] [nvarchar](50) NULL,
	[FName] [varchar](50) NULL,
	[MName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[PName] [nvarchar](50) NULL,
	[Address1] [varchar](250) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[PAN] [varchar](50) NULL,
	[MobileNo] [varchar](50) NULL,
	[DateOfBirth] [datetime] NULL,
	[CoAppTitle] [nvarchar](50) NULL,
	[CoFName] [nvarchar](50) NULL,
	[CoMName] [nvarchar](50) NULL,
	[CoLName] [nvarchar](50) NULL,
	[CoAddress1] [nvarchar](50) NULL,
	[CoAddress2] [nvarchar](50) NULL,
	[CoCity] [nvarchar](50) NULL,
	[CoState] [nvarchar](50) NULL,
	[CoCountry] [nvarchar](50) NULL,
	[CoPAN] [nvarchar](50) NULL,
	[CoMobileNo] [nvarchar](50) NULL,
	[Address1Out] [varchar](50) NULL,
	[Address2Out] [varchar](50) NULL,
	[CityOut] [varchar](50) NULL,
	[StateOut] [varchar](50) NULL,
	[CountryOut] [varchar](50) NULL,
	[PANOut] [varchar](50) NULL,
	[MobileOut] [varchar](50) NULL,
	[AlternateMobile] [varchar](50) NULL,
	[LandLine] [varchar](50) NULL,
	[EmailID] [varchar](50) NULL,
	[AlternateEmail] [varchar](50) NULL,
	[Website] [varchar](200) NULL,
	[LoanAmount] [decimal](17, 2) NULL,
	[LienField] [varchar](50) NULL,
	[BankID] [int] NULL,
	[BankAddress] [varchar](50) NULL,
	[BankBranch] [nvarchar](50) NULL,
	[IsPAN] [bit] NULL,
	[IsPhoto] [bit] NULL,
	[IsAddressPf] [bit] NULL,
	[IsRationCard] [bit] NULL,
	[IsDrivingLicence] [bit] NULL,
	[IsPassport] [bit] NULL,
	[IsVoterCard] [bit] NULL,
	[IsTransfer] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[RecordStatus] [nvarchar](50) NULL,
	[PlanID] [int] NULL,
	[SecCoAppTitle] [nvarchar](50) NULL,
	[SecCoFName] [nvarchar](50) NULL,
	[SecCoMName] [nvarchar](50) NULL,
	[SecCoLName] [nvarchar](50) NULL,
	[SecCoAddress1] [nvarchar](50) NULL,
	[SecCoAddress2] [nvarchar](50) NULL,
	[SecCoCity] [nvarchar](50) NULL,
	[SecCoState] [nvarchar](50) NULL,
	[SecCoCountry] [nvarchar](50) NULL,
	[SecCoMobileNo] [varchar](50) NULL,
	[SecCoPAN] [varchar](50) NULL,
	[CoTitle] [nvarchar](50) NULL,
	[CoPName] [nvarchar](50) NULL,
	[SecCoTitle] [nvarchar](50) NULL,
	[SecCoPName] [nvarchar](50) NULL,
	[IsConstruction] [int] NULL,
	[PhotoImagePath] [nvarchar](50) NULL,
	[AddPfImagePath] [nvarchar](50) NULL,
	[DVImagePath] [nvarchar](50) NULL,
	[VoterCardImagePath] [nvarchar](50) NULL,
	[PassportImagePath] [nvarchar](50) NULL,
	[RationCardImagePath] [nvarchar](50) NULL,
	[Remarks] [nvarchar](500) NULL,
	[CoDOB] [datetime] NULL,
	[SecCoDOB] [datetime] NULL,
	[PANImagePath] [nvarchar](50) NULL,
	[CoIsPAN] [bit] NULL,
	[CoIsPhoto] [bit] NULL,
	[CoIsAddressPf] [bit] NULL,
	[CoIsRationCard] [bit] NULL,
	[CoIsDrivingLicence] [bit] NULL,
	[CoIsVoterCard] [bit] NULL,
	[CoIsPassport] [bit] NULL,
	[SecCoIsPAN] [bit] NULL,
	[SecCoIsPhoto] [bit] NULL,
	[SecCoIsAddressPf] [bit] NULL,
	[SecCoIsRationCard] [bit] NULL,
	[SecCoIsDrivingLicence] [bit] NULL,
	[SecCoIsVoterCard] [bit] NULL,
	[SecCoIsPassport] [bit] NULL,
	[CoPhotoImagePath] [nvarchar](50) NULL,
	[CoAddPfImagePath] [nvarchar](50) NULL,
	[CoDVImagePath] [nvarchar](50) NULL,
	[CoVoterCardImagePath] [nvarchar](50) NULL,
	[CoPassportImagePath] [nvarchar](50) NULL,
	[CoRationCardImagePath] [nvarchar](50) NULL,
	[CoPANImagePath] [nvarchar](50) NULL,
	[SecCoPhotoImagePath] [nvarchar](50) NULL,
	[SecCoAddPfImagePath] [nvarchar](50) NULL,
	[SecCoDVImagePath] [nvarchar](50) NULL,
	[SecCoVoterCardImagePath] [nvarchar](50) NULL,
	[SecCoPassportImagePath] [nvarchar](50) NULL,
	[SecCoRationCardImagePath] [nvarchar](50) NULL,
	[SecCoPANImagePath] [nvarchar](50) NULL,
	[IsEdit] [bit] NULL,
	[PinCode] [nvarchar](50) NULL,
	[ExecutiveName] [nvarchar](50) NULL,
	[CoPinCode] [nvarchar](50) NULL,
	[SecCoPinCode] [nvarchar](50) NULL,
	[TransferAmount] [decimal](17, 2) NULL,
	[TransferDate] [datetime] NULL,
	[Distt] [nvarchar](50) NULL,
	[LegalOptionDate] [varchar](20) NULL,
	[panallowstatus] [int] NULL,
	[affidavit] [varchar](200) NULL,
	[SaleStatus] [bit] NULL,
	[CrDate] [datetime] NULL,
	[UserName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Error]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Error](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ErrorDate] [datetime] NULL DEFAULT (getdate()),
	[IpAddress] [nvarchar](40) NULL,
	[UserAgent] [nvarchar](max) NULL,
	[Exception] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[Everything] [nvarchar](max) NULL,
	[HttpReferer] [nvarchar](500) NULL,
	[PathAndQuery] [nvarchar](500) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NOT NULL DEFAULT (getdate()),
	[ChangedBy] [int] NULL,
	[ChangedOn] [datetime] NOT NULL DEFAULT (getdate()),
	[FullURL] [nvarchar](500) NULL,
	[UserName] [nvarchar](50) NULL,
	[ErrorID] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventMaster]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventMaster](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[EventName] [nvarchar](500) NULL,
	[EventDesc] [nvarchar](500) NULL,
	[CreateDate] [datetime] NULL,
	[RecordStatus] [int] NULL,
	[EventType] [int] NULL,
 CONSTRAINT [PK_EventMaster] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Flat]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flat](
	[FlatID] [int] IDENTITY(1,1) NOT NULL,
	[FloorID] [int] NOT NULL,
	[FlatType] [nvarchar](50) NULL,
	[FlatName] [nvarchar](50) NULL,
	[FlatNo] [nvarchar](50) NULL,
	[FlatSize] [numeric](18, 2) NULL,
	[FlatSizeUnit] [nvarchar](50) NULL,
	[SalePrice] [money] NULL,
	[BadRooms] [int] NULL,
	[IsFurnished] [bit] NULL,
	[LivingRoom] [bit] NULL,
	[ServantRoom] [bit] NULL,
	[Kitchen] [bit] NULL,
	[Balconies] [bit] NULL,
	[BathRooms] [bit] NULL,
	[PoojaRoom] [bit] NULL,
	[StudyRoom] [bit] NULL,
	[AC] [bit] NULL,
	[Intercom] [bit] NULL,
	[Cupboards] [bit] NULL,
	[WashingArea] [bit] NULL,
	[PowerBackup] [bit] NULL,
	[GASLine] [bit] NULL,
	[HomeAutomation] [bit] NULL,
	[CrDate] [datetime] NULL CONSTRAINT [DF_Flat_CrDate]  DEFAULT (getdate()),
	[CrBy] [nvarchar](50) NULL,
	[FlatOrder] [int] NULL,
	[Status] [nvarchar](50) NULL CONSTRAINT [DF_Flat_Status]  DEFAULT (N'Available'),
 CONSTRAINT [PK_Flat] PRIMARY KEY CLUSTERED 
(
	[FlatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FlatCharge]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlatCharge](
	[FlatChargeID] [int] IDENTITY(1,1) NOT NULL,
	[FlatID] [int] NULL,
	[AdditionalChargeID] [int] NULL,
	[CrDate] [datetime] NULL CONSTRAINT [DF_FlatCharge_CrDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_FlatCharge] PRIMARY KEY CLUSTERED 
(
	[FlatChargeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FlatInstallmentDetail]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlatInstallmentDetail](
	[InstallmentID] [int] IDENTITY(1,1) NOT NULL,
	[SaleID] [int] NULL,
	[TotalAmount] [decimal](17, 2) NULL,
	[TotalAmtInWords] [nvarchar](500) NULL,
	[RecordStatus] [int] NULL,
	[EventID] [int] NULL,
	[InstallmentOrder] [int] NULL,
	[Activity] [nvarchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[UserName] [nvarchar](50) NULL,
 CONSTRAINT [PK_FlatInstallmentDetail] PRIMARY KEY CLUSTERED 
(
	[InstallmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FlatPLC]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlatPLC](
	[FlatPLCID] [int] IDENTITY(1,1) NOT NULL,
	[FlatID] [int] NOT NULL,
	[PLCID] [int] NOT NULL,
	[CrDate] [datetime] NULL CONSTRAINT [DF_FlatPLC_CrDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_FlatPLC] PRIMARY KEY CLUSTERED 
(
	[FlatPLCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FlatType]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlatType](
	[FlatTypeID] [int] IDENTITY(1,1) NOT NULL,
	[FType] [nvarchar](50) NULL,
	[FullName] [nvarchar](100) NULL,
	[Size] [numeric](18, 2) NULL,
	[IsFurnished] [bit] NULL,
	[CrDate] [datetime] NULL CONSTRAINT [DF_FlatType_CrDate]  DEFAULT (getdate()),
	[CrBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_FlatType] PRIMARY KEY CLUSTERED 
(
	[FlatTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FlatTypeSize]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlatTypeSize](
	[FlatTypeSizeID] [int] IDENTITY(1,1) NOT NULL,
	[FlatTypeID] [int] NULL,
	[Size] [decimal](19, 2) NULL,
	[Unit] [nvarchar](50) NULL,
	[CrDate] [datetime] NULL,
 CONSTRAINT [PK_FlatTypeSize] PRIMARY KEY CLUSTERED 
(
	[FlatTypeSizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Floor]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Floor](
	[FloorID] [int] IDENTITY(1,1) NOT NULL,
	[TowerID] [int] NULL,
	[FloorNo] [int] NULL,
	[FloorName] [nvarchar](50) NULL,
	[CrDate] [datetime] NULL CONSTRAINT [DF_Floor_CrDate]  DEFAULT (getdate()),
	[CrBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Floor] PRIMARY KEY CLUSTERED 
(
	[FloorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LatePayment]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LatePayment](
	[LatePaymentID] [int] IDENTITY(1,1) NOT NULL,
	[SaleID] [int] NULL,
	[TransactionID] [int] NULL,
	[InstallmentNo] [nvarchar](200) NULL,
	[CrDate] [datetime] NULL,
	[InterestAmount] [money] NULL,
	[ReceiveAmount] [money] NULL,
	[DueDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.LatePaymentID] PRIMARY KEY CLUSTERED 
(
	[LatePaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ModuleList]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuleList](
	[ModuleListID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[PageName] [nvarchar](100) NULL,
	[Status] [bit] NOT NULL,
	[CrDate] [datetime] NULL,
	[Controller] [nvarchar](100) NULL,
	[ActionName] [nvarchar](100) NULL,
 CONSTRAINT [PK_dbo.ModuleList] PRIMARY KEY CLUSTERED 
(
	[ModuleListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Payment](
	[TransactionID] [bigint] NULL,
	[InstallmentNo] [nvarchar](50) NULL,
	[PaymentNo] [varchar](50) NULL,
	[SaleID] [int] NULL,
	[PaymentDate] [datetime] NULL,
	[DueAmount] [decimal](17, 2) NULL,
	[ServiceTaxAmount] [decimal](17, 2) NULL,
	[InterestAmount] [decimal](17, 2) NULL,
	[TotalAmount] [decimal](17, 2) NULL,
	[Amount] [decimal](17, 2) NULL,
	[PaymentMode] [nvarchar](10) NULL,
	[ChequeNo] [varchar](50) NULL,
	[BankName] [varchar](50) NULL,
	[ChequeDate] [datetime] NULL,
	[PaymentStatus] [nvarchar](10) NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Remarks] [nvarchar](150) NULL,
	[BankCharges] [decimal](17, 2) NULL,
	[BankClearanceDate] [datetime] NULL,
	[RecordStatus] [int] NULL,
	[BankBranch] [nvarchar](50) NULL,
	[AmtRcvdinWords] [nvarchar](250) NULL,
	[IsReceipt] [bit] NULL,
	[UserID] [int] NULL,
	[Activity] [nvarchar](10) NULL,
	[ModifyDate] [datetime] NULL,
	[FlatName] [nvarchar](50) NULL,
	[TransferDate] [datetime] NULL,
	[isrefund] [varchar](10) NULL,
	[CrDate] [datetime] NULL,
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[ModifyBy] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[RefundRemark] [nvarchar](300) NULL,
	[ClearanceCharge] [money] NOT NULL,
	[IsBounce] [bit] NOT NULL,
	[CustomerID] [int] NULL,
 CONSTRAINT [PK_SPaymnet_PaymentID] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PaymentCancel]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentCancel](
	[PaymentCancelID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionID] [bigint] NULL,
	[SaleID] [int] NULL,
	[Amount] [money] NULL,
	[CancelDate] [datetime] NULL,
	[UnCancelDate] [datetime] NULL,
	[Remarks] [nvarchar](450) NULL,
	[UnCancelRemark] [nvarchar](450) NULL,
	[CancelBy] [nvarchar](50) NULL,
	[UnCancelBy] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_SPaymnetCancel_PaymentID] PRIMARY KEY CLUSTERED 
(
	[PaymentCancelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentOther]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[PaymentOther](
	[PaymentOtherID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionID] [bigint] NULL,
	[PaymentNo] [varchar](50) NULL,
	[SaleID] [int] NULL,
	[PaymentDate] [datetime] NULL,
	[Amount] [decimal](17, 2) NULL,
	[PaymentMode] [nvarchar](10) NULL,
	[ChequeNo] [varchar](50) NULL,
	[BankName] [varchar](50) NULL,
	[ChequeDate] [datetime] NULL,
	[PaymentStatus] [nvarchar](10) NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Remarks] [nvarchar](150) NULL,
	[BankCharges] [decimal](17, 2) NULL,
	[BankClearanceDate] [datetime] NULL,
	[RecordStatus] [int] NULL,
	[BankBranch] [nvarchar](50) NULL,
	[AmtRcvdinWords] [nvarchar](250) NULL,
	[IsReceipt] [bit] NULL,
	[Activity] [nvarchar](10) NULL,
	[ModifyDate] [datetime] NULL,
	[FlatName] [nvarchar](50) NULL,
	[TransferDate] [datetime] NULL,
	[isrefund] [varchar](10) NULL,
	[CrDate] [datetime] NULL,
	[ModifyBy] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[RefundRemark] [nvarchar](300) NULL,
	[ClearanceCharge] [money] NOT NULL,
	[IsBounce] [bit] NOT NULL,
	[CustomerID] [int] NULL,
	[PaymentFor] [nvarchar](50) NULL,
 CONSTRAINT [PK_PaymnetOther_PaymentID] PRIMARY KEY CLUSTERED 
(
	[PaymentOtherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PaymentOtherCancel]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentOtherCancel](
	[PaymentOtherCancelID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionID] [bigint] NULL,
	[SaleID] [int] NULL,
	[Amount] [money] NULL,
	[CancelDate] [datetime] NULL,
	[UnCancelDate] [datetime] NULL,
	[Remarks] [nvarchar](450) NULL,
	[UnCancelRemark] [nvarchar](450) NULL,
	[CancelBy] [nvarchar](50) NULL,
	[UnCancelBy] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_PaymnetOtherCancel_PaymentID] PRIMARY KEY CLUSTERED 
(
	[PaymentOtherCancelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentRecord]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentRecord](
	[PaymentRecordID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionID] [int] NULL,
	[SaleID] [int] NOT NULL,
	[Amount] [money] NULL,
	[PayDate] [datetime] NULL,
	[Action] [nvarchar](50) NULL,
	[PayType] [nvarchar](50) NULL,
	[BalanceAmount] [money] NULL,
 CONSTRAINT [PK_PaymentRecord] PRIMARY KEY CLUSTERED 
(
	[PaymentRecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentRefund]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentRefund](
	[RefundID] [int] IDENTITY(1,1) NOT NULL,
	[SaleID] [int] NULL,
	[TotalAmount] [decimal](17, 2) NULL,
	[PaidAmount] [decimal](17, 2) NULL,
	[RefundAmount] [decimal](17, 2) NULL,
	[ChequeNo] [nvarchar](50) NULL,
	[ChequeDate] [datetime] NULL,
	[BankName] [nvarchar](50) NULL,
	[RefundDate] [datetime] NULL,
	[IsPan] [bit] NULL,
	[IsPhoto] [bit] NULL,
	[IsAddressPf] [bit] NULL,
	[IsRationCard] [bit] NULL,
	[IsDrivingLicence] [bit] NULL,
	[IsPassport] [bit] NULL,
	[IsVoterCard] [bit] NULL,
	[RecordStatus] [int] NULL,
	[Remarks] [nvarchar](250) NULL,
 CONSTRAINT [PK_PaymentRefund] PRIMARY KEY CLUSTERED 
(
	[RefundID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PayServiceTax]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayServiceTax](
	[PayServiceTaxID] [int] IDENTITY(1,1) NOT NULL,
	[SaleID] [int] NULL,
	[PayDate] [datetime] NULL,
	[Amount] [decimal](17, 2) NULL,
	[RecordStatus] [int] NULL,
	[PaymentNo] [nvarchar](50) NULL,
	[AmtRcvdinWords] [nvarchar](250) NULL,
	[PaymentMode] [int] NULL,
	[ChequeNo] [nvarchar](50) NULL,
	[ChequeDate] [datetime] NULL,
	[BankCharges] [decimal](17, 2) NULL,
	[BankClearanceDate] [datetime] NULL,
	[BankName] [nvarchar](50) NULL,
	[BankBranch] [nvarchar](50) NULL,
	[PaymentStatus] [int] NULL,
	[UserID] [int] NULL,
	[Activity] [nvarchar](10) NULL,
	[Remarks] [nvarchar](250) NULL,
 CONSTRAINT [PK_tblPayServiceTax] PRIMARY KEY CLUSTERED 
(
	[PayServiceTaxID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PayTransferFee]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayTransferFee](
	[PayTransferID] [int] IDENTITY(1,1) NOT NULL,
	[SaleID] [int] NULL,
	[FlatID] [int] NULL,
	[PayDate] [datetime] NULL,
	[Amount] [decimal](18, 0) NULL,
	[RecordStatus] [int] NULL,
	[PaymentNo] [nvarchar](20) NULL,
	[AmtRcvdinWords] [nvarchar](250) NULL,
	[PaymentMode] [int] NULL,
	[ChequeNo] [nvarchar](50) NULL,
	[ChequeDate] [datetime] NULL,
	[BankCharges] [decimal](18, 0) NULL,
	[BankClearanceDate] [datetime] NULL,
	[BankName] [nvarchar](50) NULL,
	[BankBranch] [nvarchar](50) NULL,
	[PaymentStatus] [int] NULL,
	[UserID] [int] NULL,
	[Activity] [nvarchar](50) NULL,
	[Remarks] [nvarchar](250) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Plan]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plan](
	[PlanID] [int] IDENTITY(1,1) NOT NULL,
	[PlanName] [nvarchar](256) NULL,
	[CrDate] [datetime] NULL CONSTRAINT [DF_Plan_CrDate]  DEFAULT (getdate()),
	[Status] [bit] NULL CONSTRAINT [DF_Plan_Status]  DEFAULT ((0)),
 CONSTRAINT [PK_Plan] PRIMARY KEY CLUSTERED 
(
	[PlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlanInstallment]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanInstallment](
	[PlanInstallmentID] [int] IDENTITY(1,1) NOT NULL,
	[PlanID] [int] NULL,
	[Installment] [nvarchar](256) NULL,
	[InstallmentNo] [int] NULL,
	[Amount] [money] NULL,
	[CrDate] [datetime] NULL,
	[CrBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_PlanInstallment] PRIMARY KEY CLUSTERED 
(
	[PlanInstallmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlanTypeMaster]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanTypeMaster](
	[PlanTypeMasterID] [int] IDENTITY(1,1) NOT NULL,
	[FlatTypeSizeID] [int] NULL,
	[PlanID] [int] NULL,
	[PlanName] [nvarchar](500) NULL,
	[AmountSqFt] [money] NULL,
	[CrDate] [datetime] NULL,
 CONSTRAINT [PK_PlanTypeMaster] PRIMARY KEY CLUSTERED 
(
	[PlanTypeMasterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PLC]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLC](
	[PLCID] [int] IDENTITY(1,1) NOT NULL,
	[PLCName] [nvarchar](50) NULL,
	[AmountSqFt] [money] NULL,
 CONSTRAINT [PK_PLC] PRIMARY KEY CLUSTERED 
(
	[PLCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Project]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[ProjectID] [int] IDENTITY(1,1) NOT NULL,
	[CrDate] [datetime] NULL,
	[CrBy] [nvarchar](50) NULL,
	[PName] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](256) NULL,
	[Location] [nvarchar](256) NULL,
	[Address] [nvarchar](256) NULL,
	[ReceiptPrefix] [nvarchar](50) NULL,
	[RecordStatus] [int] NULL,
	[OfficeAddress] [nvarchar](256) NULL,
	[District] [nvarchar](50) NULL,
	[Village] [nvarchar](50) NULL,
	[Tehsil] [nvarchar](50) NULL,
	[Jurisdiction] [nvarchar](50) NULL,
	[PossessionDate] [datetime] NULL,
	[ReceiptNo] [nvarchar](50) NULL,
	[AuthoritySign] [nvarchar](100) NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProjectType]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectType](
	[ProjectTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [int] NULL,
	[CrDate] [datetime] NULL,
	[CrBy] [nvarchar](50) NULL,
	[TypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProjectType] PRIMARY KEY CLUSTERED 
(
	[ProjectTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PropertyRemark]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[PropertyRemark](
	[Rid] [int] IDENTITY(1,1) NOT NULL,
	[SaleID] [int] NULL,
	[Remark] [varchar](500) NULL,
	[RemakDate] [datetime] NULL,
	[status] [int] NULL,
	[ProprtyName] [varchar](500) NULL,
	[createdate] [datetime] NULL,
	[FollowupAmount] [money] NULL,
	[CreatedBy] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PropertyTransfer]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyTransfer](
	[PropertyTransferID] [int] IDENTITY(1,1) NOT NULL,
	[SaleID] [int] NULL,
	[OldCustomerID] [int] NULL,
	[NewCustomerID] [int] NULL,
	[TransferDate] [datetime] NULL,
	[TransferAmount] [money] NULL,
	[OldPlanType] [nvarchar](200) NULL,
	[NewPlanType] [nvarchar](200) NULL,
	[UserName] [nvarchar](200) NULL,
 CONSTRAINT [PK_dbo.PropertyTransferID] PRIMARY KEY CLUSTERED 
(
	[PropertyTransferID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RefundProperty]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RefundProperty](
	[RefundPropertyID] [int] IDENTITY(1,1) NOT NULL,
	[SaleID] [int] NOT NULL,
	[RefundDate] [datetime] NOT NULL,
	[RefundAmount] [money] NOT NULL,
	[PaymentMode] [nvarchar](50) NOT NULL,
	[ChequeNo] [nvarchar](50) NULL,
	[ChequeDate] [datetime] NULL,
	[BankName] [nvarchar](50) NULL,
	[BranchName] [nvarchar](50) NULL,
	[Remarks] [nvarchar](500) NULL,
	[FlatName] [nvarchar](100) NULL,
 CONSTRAINT [PK_RefundProperty] PRIMARY KEY CLUSTERED 
(
	[RefundPropertyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReminderLetter]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReminderLetter](
	[ReminderLetterID] [int] IDENTITY(1,1) NOT NULL,
	[LetterType] [varchar](200) NULL,
	[CreateDate] [datetime] NULL,
	[SaleID] [int] NULL,
	[duedate] [datetime] NULL,
	[DueAmount] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReminderLetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoleAccess]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleAccess](
	[RoleAccessID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleListID] [nvarchar](100) NULL,
	[RoleName] [nvarchar](100) NULL,
	[IsRead] [bit] NOT NULL,
	[AssignDate] [datetime] NULL,
	[AssignUser] [nvarchar](100) NULL,
	[ActionName] [nvarchar](100) NULL,
	[ControllerName] [nvarchar](100) NULL,
 CONSTRAINT [PK_dbo.RoleAccess] PRIMARY KEY CLUSTERED 
(
	[RoleAccessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SaleFlat]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SaleFlat](
	[SaleID] [int] IDENTITY(1,1) NOT NULL,
	[FlatID] [int] NULL,
	[Aggrement] [varchar](256) NULL,
	[SaleDate] [datetime] NULL,
	[SaleRate] [decimal](17, 2) NULL,
	[SaleRateInWords] [nvarchar](500) NULL,
	[ServiceTaxPer] [decimal](17, 2) NULL,
	[ServiceTaxAmount] [decimal](17, 2) NULL,
	[TotalAmount] [decimal](17, 2) NULL,
	[TotalAmtInWords] [nvarchar](500) NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_SaleFlat] PRIMARY KEY CLUSTERED 
(
	[SaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServiceTax]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceTax](
	[ServiceTaxID] [int] NULL,
	[ServiceTaxName] [nvarchar](50) NULL,
	[ServiceTaxPer] [decimal](17, 2) NULL,
	[CreateDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[EndDate] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaxMaster]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaxMaster](
	[TaxMasterID] [int] IDENTITY(1,1) NOT NULL,
	[TaxName] [nvarchar](50) NULL,
	[TaxTag] [nvarchar](50) NULL,
	[Tax] [float] NULL,
	[ApplyTill] [datetime] NULL,
	[CrDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_TaxMaster] PRIMARY KEY CLUSTERED 
(
	[TaxMasterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tower]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tower](
	[TowerID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [int] NULL,
	[ProjectTypeID] [int] NULL,
	[TowerName] [nvarchar](256) NULL,
	[TowerNo] [nvarchar](50) NULL,
	[Block] [nvarchar](50) NULL,
	[Security] [bit] NULL,
	[PlayArea] [bit] NULL,
	[PowerBackup] [bit] NULL,
	[SwimmingPool] [bit] NULL,
	[Gym] [bit] NULL,
	[Garden] [bit] NULL,
	[Library] [bit] NULL,
	[CommunityHall] [bit] NULL,
	[ClubHourse] [bit] NULL,
	[JoggingTrack] [bit] NULL,
	[Lift] [bit] NULL,
	[Internet] [bit] NULL,
	[InternalRoad] [bit] NULL,
	[CrDate] [datetime] NULL CONSTRAINT [DF_Tower_CrDate]  DEFAULT (getdate()),
	[CrBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tower] PRIMARY KEY CLUSTERED 
(
	[TowerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UploadAgreement]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UploadAgreement](
	[UploadAgreementID] [int] IDENTITY(1,1) NOT NULL,
	[SaleID] [int] NULL,
	[FilePath] [nvarchar](50) NULL,
	[Createdate] [datetime] NULL,
	[ModifyDate] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_UploadAgreement] PRIMARY KEY CLUSTERED 
(
	[UploadAgreementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAccess]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccess](
	[UserAccessID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleListID] [nvarchar](100) NULL,
	[UserName] [nvarchar](100) NULL,
	[IsRead] [bit] NOT NULL,
	[IsWrite] [bit] NOT NULL,
	[AssignDate] [datetime] NULL,
	[AssignUser] [nvarchar](100) NULL,
	[ActionName] [nvarchar](100) NULL,
	[ControllerName] [nvarchar](100) NULL,
 CONSTRAINT [PK_dbo.UserAccess] PRIMARY KEY CLUSTERED 
(
	[UserAccessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserProperty]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProperty](
	[UserPropertyID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [int] NULL,
	[UserName] [nvarchar](100) NULL,
	[AssignDate] [datetime] NULL,
	[AssignUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_dbo.UserProperty] PRIMARY KEY CLUSTERED 
(
	[UserPropertyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  

GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  

GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  

GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  

GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  

GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  

GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  

GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  

GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  

GO
SET IDENTITY_INSERT [dbo].[AdditionalCharge] ON 

INSERT [dbo].[AdditionalCharge] ([AdditionalChargeID], [TowerID], [Name], [Amount], [Unit], [ChargeType], [CrDate], [CrBy]) VALUES (1, NULL, N'Car Parking', 1000.0000, NULL, N'Free', NULL, NULL)
INSERT [dbo].[AdditionalCharge] ([AdditionalChargeID], [TowerID], [Name], [Amount], [Unit], [ChargeType], [CrDate], [CrBy]) VALUES (2, NULL, N'Community Charges', 200.0000, NULL, N'One Time', NULL, NULL)
INSERT [dbo].[AdditionalCharge] ([AdditionalChargeID], [TowerID], [Name], [Amount], [Unit], [ChargeType], [CrDate], [CrBy]) VALUES (3, NULL, N'Garden', 30.0000, NULL, N'Sq. Ft.', NULL, NULL)
SET IDENTITY_INSERT [dbo].[AdditionalCharge] OFF
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'2da519c0-d5b1-450a-8204-bf09a082be43', N'devn@synoris.com', 0, N'AN861zReqjSJFh3MIuxI93qr04FBcLNHJnc1FefcLZjayxCzxoTpy+AXDJmBSq8iQg==', N'7106e824-367d-43d4-8244-ee5acdfdc3cc', NULL, 0, 0, NULL, 0, 0, N'admin')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3efb9a34-bb0a-4fb7-b930-db905b9b2369', N'devnagar@live.com', 0, N'ALUIq1nam+MIckQSOO354ZZRFdZINIX3y/dgaDEtbeIh29pZ5n/GbTfnFQ3T4eS6MQ==', N'192a270c-4bc5-4e25-be75-b2a7c32da78b', NULL, 0, 0, NULL, 1, 0, N'admin1')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'6bc8cee0-a03e-430b-9711-420ab0d6a596', N'demo@email.com', 0, N'APc6/pVPfTnpG89SRacXjlT+sRz+JQnZROws0WmCA20+axszJnmxbRulHtDXhiYEuQ==', N'18272ba5-bf6a-48a7-8116-3ac34dbb7f38', NULL, 0, 0, NULL, 0, 0, N'John Doe')
SET IDENTITY_INSERT [dbo].[Error] ON 

INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (1, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', N'AutoMapper.AutoMapperMappingException', N'Missing type map configuration or unsupported mapping.

Mapping types:
ProjectTypeModel -> ProjectType
REMS.Data.DataModel.ProjectTypeModel -> REMS.Data.ProjectType

Destination path:
ProjectType

Source value:
REMS.Data.DataModel.ProjectTypeModel', N'AutoMapper.AutoMapperMappingException: Missing type map configuration or unsupported mapping.

Mapping types:
ProjectTypeModel -> ProjectType
REMS.Data.DataModel.ProjectTypeModel -> REMS.Data.ProjectType

Destination path:
ProjectType

Source value:
REMS.Data.DataModel.ProjectTypeModel
   at AutoMapper.MappingEngine.AutoMapper.IMappingEngineRunner.Map(ResolutionContext context) in c:\dev\AutoMapper\src\AutoMapper\MappingEngine.cs:line 250
   at AutoMapper.MappingEngine.MapCore(Object source, Type sourceType, Type destinationType, MappingOperationOptions options) in c:\dev\AutoMapper\src\AutoMapper\MappingEngine.cs:line 131
   at AutoMapper.MappingEngine.Map(Object source, Type sourceType, Type destinationType, Action`1 opts) in c:\dev\AutoMapper\src\AutoMapper\MappingEngine.cs:line 122
   at AutoMapper.MappingEngine.Map[TSource,TDestination](TSource source) in c:\dev\AutoMapper\src\AutoMapper\MappingEngine.cs:line 81
   at AutoMapper.Mapper.Map[TSource,TDestination](TSource source) in c:\dev\AutoMapper\src\AutoMapper\Mapper.cs:line 73
   at REMS.Data.Access.Admin.ProjectService.AddProjectType(ProjectTypeModel model) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\ProjectService.cs:line 124', N'/Admin/PropertyProject/AddPropertyType', N'/Admin/PropertyProject/SaveProjectType', NULL, CAST(N'2015-02-13 23:47:04.670' AS DateTime), NULL, CAST(N'2015-02-13 23:47:04.670' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (2, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', N'AutoMapper.AutoMapperMappingException', N'Missing type map configuration or unsupported mapping.

Mapping types:
ProjectTypeModel -> ProjectType
REMS.Data.DataModel.ProjectTypeModel -> REMS.Data.ProjectType

Destination path:
ProjectType

Source value:
REMS.Data.DataModel.ProjectTypeModel', N'AutoMapper.AutoMapperMappingException: Missing type map configuration or unsupported mapping.

Mapping types:
ProjectTypeModel -> ProjectType
REMS.Data.DataModel.ProjectTypeModel -> REMS.Data.ProjectType

Destination path:
ProjectType

Source value:
REMS.Data.DataModel.ProjectTypeModel
   at AutoMapper.MappingEngine.AutoMapper.IMappingEngineRunner.Map(ResolutionContext context) in c:\dev\AutoMapper\src\AutoMapper\MappingEngine.cs:line 250
   at AutoMapper.MappingEngine.MapCore(Object source, Type sourceType, Type destinationType, MappingOperationOptions options) in c:\dev\AutoMapper\src\AutoMapper\MappingEngine.cs:line 131
   at AutoMapper.MappingEngine.Map(Object source, Type sourceType, Type destinationType, Action`1 opts) in c:\dev\AutoMapper\src\AutoMapper\MappingEngine.cs:line 122
   at AutoMapper.MappingEngine.Map[TSource,TDestination](TSource source) in c:\dev\AutoMapper\src\AutoMapper\MappingEngine.cs:line 81
   at AutoMapper.Mapper.Map[TSource,TDestination](TSource source) in c:\dev\AutoMapper\src\AutoMapper\Mapper.cs:line 73
   at REMS.Data.Access.Admin.ProjectService.AddProjectType(ProjectTypeModel model)', N'/Admin/PropertyProject/AddPropertyType', N'/Admin/PropertyProject/SaveProjectType', NULL, CAST(N'2015-02-13 23:49:42.577' AS DateTime), NULL, CAST(N'2015-02-13 23:49:42.577' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (3, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: The DELETE statement conflicted with the REFERENCE constraint "FK_Flat_Floor". The conflict occurred in database "REMSDB", table "dbo.Flat", column ''FloorID''.
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Admin.FloorService.DeleteFloor(Int32 floorid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FloorService.cs:line 91', N'/Admin/CreateProperty/AddFloor', N'/Admin/CreateProperty/DeleteFloor', NULL, CAST(N'2015-02-17 00:05:30.747' AS DateTime), NULL, CAST(N'2015-02-17 00:05:30.747' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (1003, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2472', NULL, CAST(N'2015-02-22 17:10:44.780' AS DateTime), NULL, CAST(N'2015-02-22 17:10:44.780' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (1004, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2472', NULL, CAST(N'2015-02-22 17:10:45.217' AS DateTime), NULL, CAST(N'2015-02-22 17:10:45.217' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (2003, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-02-25 22:29:39.727' AS DateTime), NULL, CAST(N'2015-02-25 22:29:39.727' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (2004, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2435', NULL, CAST(N'2015-02-25 22:36:53.823' AS DateTime), NULL, CAST(N'2015-02-25 22:36:53.823' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (2005, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2435', NULL, CAST(N'2015-02-25 22:36:53.983' AS DateTime), NULL, CAST(N'2015-02-25 22:36:53.983' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (2006, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2435', NULL, CAST(N'2015-02-25 22:36:54.123' AS DateTime), NULL, CAST(N'2015-02-25 22:36:54.123' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (1005, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateConcurrencyException', N'Store update, insert, or delete statement affected an unexpected number of rows (0). Entities may have been modified or deleted since entities were loaded. Refresh ObjectStateManager entries.', N'System.Data.Entity.Infrastructure.DbUpdateConcurrencyException: Store update, insert, or delete statement affected an unexpected number of rows (0). Entities may have been modified or deleted since entities were loaded. Refresh ObjectStateManager entries. ---> System.Data.Entity.Core.OptimisticConcurrencyException: Store update, insert, or delete statement affected an unexpected number of rows (0). Entities may have been modified or deleted since entities were loaded. Refresh ObjectStateManager entries.
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.ValidateRowsAffected(Int64 rowsAffected, UpdateCommand source)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Master.AdditionalChargeService.EditAdditionalCharge(AdditionalCharge model) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Master\AdditionalChargeService.cs:line 47', N'/Master/AChargesCtrl/AddCharges', N'/Master/AChargesCtrl/SaveAdditionalCharge', NULL, CAST(N'2015-02-22 20:49:06.553' AS DateTime), NULL, CAST(N'2015-02-22 20:49:06.553' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (2007, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2435', NULL, CAST(N'2015-02-25 22:37:01.187' AS DateTime), NULL, CAST(N'2015-02-25 22:37:01.187' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (2008, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2435', NULL, CAST(N'2015-02-25 22:37:01.307' AS DateTime), NULL, CAST(N'2015-02-25 22:37:01.307' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (2009, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2435', NULL, CAST(N'2015-02-25 22:37:01.433' AS DateTime), NULL, CAST(N'2015-02-25 22:37:01.433' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (2010, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2435', NULL, CAST(N'2015-02-25 22:37:23.660' AS DateTime), NULL, CAST(N'2015-02-25 22:37:23.660' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (2011, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2435', NULL, CAST(N'2015-02-25 22:37:23.777' AS DateTime), NULL, CAST(N'2015-02-25 22:37:23.777' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (2012, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2435', NULL, CAST(N'2015-02-25 22:37:23.893' AS DateTime), NULL, CAST(N'2015-02-25 22:37:23.893' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (2013, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-25 22:38:53.530' AS DateTime), NULL, CAST(N'2015-02-25 22:38:53.530' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (2014, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-25 22:38:53.657' AS DateTime), NULL, CAST(N'2015-02-25 22:38:53.657' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (2015, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-25 22:38:53.773' AS DateTime), NULL, CAST(N'2015-02-25 22:38:53.773' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (3003, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: Violation of PRIMARY KEY constraint ''PK_FlatTypeSize''. Cannot insert duplicate key in object ''dbo.FlatTypeSize''. The duplicate key value is (0).
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Master.FlatTypeSizeService.AddFlatTypeSize(FlatTypeSize model) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Master\FlatTypeSizeService.cs:line 28', N'/Master/Flat/FlatSize', N'/Master/Flat/SaveFlatTypeSize', NULL, CAST(N'2015-02-28 08:28:23.923' AS DateTime), NULL, CAST(N'2015-02-28 08:28:23.923' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (3004, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: Violation of PRIMARY KEY constraint ''PK_FlatTypeSize''. Cannot insert duplicate key in object ''dbo.FlatTypeSize''. The duplicate key value is (0).
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Master.FlatTypeSizeService.AddFlatTypeSize(FlatTypeSize model) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Master\FlatTypeSizeService.cs:line 28', N'/Master/Flat/FlatSize', N'/Master/Flat/SaveFlatTypeSize', NULL, CAST(N'2015-02-28 08:29:50.100' AS DateTime), NULL, CAST(N'2015-02-28 08:29:50.100' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (3005, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: Violation of PRIMARY KEY constraint ''PK_FlatTypeSize''. Cannot insert duplicate key in object ''dbo.FlatTypeSize''. The duplicate key value is (0).
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Master.FlatTypeSizeService.AddFlatTypeSize(FlatTypeSize model) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Master\FlatTypeSizeService.cs:line 28', N'/Master/Flat/FlatSize', N'/Master/Flat/SaveFlatTypeSize', NULL, CAST(N'2015-02-28 08:30:16.780' AS DateTime), NULL, CAST(N'2015-02-28 08:30:16.780' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4003, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: Violation of PRIMARY KEY constraint ''PK_FlatTypeSize''. Cannot insert duplicate key in object ''dbo.FlatTypeSize''. The duplicate key value is (0).
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Master.FlatTypeSizeService.AddFlatTypeSize(FlatTypeSize model) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Master\FlatTypeSizeService.cs:line 28', N'/Master/Flat/FlatSize', N'/Master/Flat/SaveFlatTypeSize', NULL, CAST(N'2015-02-28 08:53:14.227' AS DateTime), NULL, CAST(N'2015-02-28 08:53:14.227' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4004, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: Violation of PRIMARY KEY constraint ''PK_FlatTypeSize''. Cannot insert duplicate key in object ''dbo.FlatTypeSize''. The duplicate key value is (0).
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Master.FlatTypeSizeService.AddFlatTypeSize(FlatTypeSize model) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Master\FlatTypeSizeService.cs:line 28', N'/Master/Flat/FlatSize', N'/Master/Flat/SaveFlatTypeSize', NULL, CAST(N'2015-02-28 09:29:55.560' AS DateTime), NULL, CAST(N'2015-02-28 09:29:55.560' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4005, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: Violation of PRIMARY KEY constraint ''PK_FlatTypeSize''. Cannot insert duplicate key in object ''dbo.FlatTypeSize''. The duplicate key value is (0).
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Master.FlatTypeSizeService.AddFlatTypeSize(FlatTypeSize model) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Master\FlatTypeSizeService.cs:line 28', N'/Master/Flat/FlatSize', N'/Master/Flat/SaveFlatTypeSize', NULL, CAST(N'2015-02-28 09:31:07.290' AS DateTime), NULL, CAST(N'2015-02-28 09:31:07.290' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4006, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: Violation of PRIMARY KEY constraint ''PK_FlatTypeSize''. Cannot insert duplicate key in object ''dbo.FlatTypeSize''. The duplicate key value is (0).
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Master.FlatTypeSizeService.AddFlatTypeSize(FlatTypeSize model) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Master\FlatTypeSizeService.cs:line 28', N'/Master/Flat/FlatSize', N'/Master/Flat/SaveFlatTypeSize', NULL, CAST(N'2015-02-28 09:32:06.800' AS DateTime), NULL, CAST(N'2015-02-28 09:32:06.800' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (2016, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-26 23:24:19.310' AS DateTime), NULL, CAST(N'2015-02-26 23:24:19.310' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (2017, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-26 23:24:19.727' AS DateTime), NULL, CAST(N'2015-02-26 23:24:19.727' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (2018, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-26 23:24:19.840' AS DateTime), NULL, CAST(N'2015-02-26 23:24:19.840' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4007, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: Violation of PRIMARY KEY constraint ''PK_FlatTypeSize''. Cannot insert duplicate key in object ''dbo.FlatTypeSize''. The duplicate key value is (0).
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Master.FlatTypeSizeService.AddFlatTypeSize(FlatTypeSize model) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Master\FlatTypeSizeService.cs:line 28', N'/Master/Flat/FlatSize', N'/Master/Flat/SaveFlatTypeSize', NULL, CAST(N'2015-02-28 09:32:16.313' AS DateTime), NULL, CAST(N'2015-02-28 09:32:16.313' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4008, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: Violation of PRIMARY KEY constraint ''PK_FlatTypeSize''. Cannot insert duplicate key in object ''dbo.FlatTypeSize''. The duplicate key value is (0).
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Master.FlatTypeSizeService.AddFlatTypeSize(FlatTypeSize model) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Master\FlatTypeSizeService.cs:line 28', N'/Master/Flat/FlatSize', N'/Master/Flat/SaveFlatTypeSize', NULL, CAST(N'2015-02-28 09:32:34.757' AS DateTime), NULL, CAST(N'2015-02-28 09:32:34.757' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4009, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: Violation of PRIMARY KEY constraint ''PK_FlatTypeSize''. Cannot insert duplicate key in object ''dbo.FlatTypeSize''. The duplicate key value is (0).
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Master.FlatTypeSizeService.AddFlatTypeSize(FlatTypeSize model) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Master\FlatTypeSizeService.cs:line 28', N'/Master/Flat/FlatSize', N'/Master/Flat/SaveFlatTypeSize', NULL, CAST(N'2015-02-28 09:32:41.583' AS DateTime), NULL, CAST(N'2015-02-28 09:32:41.583' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4010, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: Violation of PRIMARY KEY constraint ''PK_FlatTypeSize''. Cannot insert duplicate key in object ''dbo.FlatTypeSize''. The duplicate key value is (0).
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Master.FlatTypeSizeService.AddFlatTypeSize(FlatTypeSize model) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Master\FlatTypeSizeService.cs:line 28', N'/Master/Flat/FlatSize', N'/Master/Flat/SaveFlatTypeSize', NULL, CAST(N'2015-02-28 09:33:12.193' AS DateTime), NULL, CAST(N'2015-02-28 09:33:12.193' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4011, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: Violation of PRIMARY KEY constraint ''PK_FlatTypeSize''. Cannot insert duplicate key in object ''dbo.FlatTypeSize''. The duplicate key value is (0).
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Master.FlatTypeSizeService.AddFlatTypeSize(FlatTypeSize model) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Master\FlatTypeSizeService.cs:line 28', N'/Master/Flat/FlatSize', N'/Master/Flat/SaveFlatTypeSize', NULL, CAST(N'2015-02-28 09:34:09.297' AS DateTime), NULL, CAST(N'2015-02-28 09:34:09.297' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4012, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: Violation of PRIMARY KEY constraint ''PK_FlatTypeSize''. Cannot insert duplicate key in object ''dbo.FlatTypeSize''. The duplicate key value is (0).
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Master.FlatTypeSizeService.AddFlatTypeSize(FlatTypeSize model) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Master\FlatTypeSizeService.cs:line 28', N'/Master/Flat/FlatSize', N'/Master/Flat/SaveFlatTypeSize', NULL, CAST(N'2015-02-28 09:37:49.093' AS DateTime), NULL, CAST(N'2015-02-28 09:37:49.093' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4013, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: Violation of PRIMARY KEY constraint ''PK_FlatTypeSize''. Cannot insert duplicate key in object ''dbo.FlatTypeSize''. The duplicate key value is (0).
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Master.FlatTypeSizeService.AddFlatTypeSize(FlatTypeSize model) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Master\FlatTypeSizeService.cs:line 28', N'/Master/Flat/FlatSize', N'/Master/Flat/SaveFlatTypeSize', NULL, CAST(N'2015-02-28 10:01:13.850' AS DateTime), NULL, CAST(N'2015-02-28 10:01:13.850' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4015, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2481', NULL, CAST(N'2015-02-28 10:27:43.570' AS DateTime), NULL, CAST(N'2015-02-28 10:27:43.570' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4016, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2481', NULL, CAST(N'2015-02-28 10:27:43.687' AS DateTime), NULL, CAST(N'2015-02-28 10:27:43.687' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4017, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2481', NULL, CAST(N'2015-02-28 10:27:43.827' AS DateTime), NULL, CAST(N'2015-02-28 10:27:43.827' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4018, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 10:31:11.297' AS DateTime), NULL, CAST(N'2015-02-28 10:31:11.297' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4019, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 10:31:11.417' AS DateTime), NULL, CAST(N'2015-02-28 10:31:11.417' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4014, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateConcurrencyException', N'Store update, insert, or delete statement affected an unexpected number of rows (0). Entities may have been modified or deleted since entities were loaded. Refresh ObjectStateManager entries.', N'System.Data.Entity.Infrastructure.DbUpdateConcurrencyException: Store update, insert, or delete statement affected an unexpected number of rows (0). Entities may have been modified or deleted since entities were loaded. Refresh ObjectStateManager entries. ---> System.Data.Entity.Core.OptimisticConcurrencyException: Store update, insert, or delete statement affected an unexpected number of rows (0). Entities may have been modified or deleted since entities were loaded. Refresh ObjectStateManager entries.
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.ValidateRowsAffected(Int64 rowsAffected, UpdateCommand source)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Master.FlatTypeService.EditFlatType(FlatType model) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Master\FlatTypeService.cs:line 47', N'/Master/Flat/FlatSize', N'/Master/Flat/UpdateFlatType', NULL, CAST(N'2015-02-28 10:25:47.660' AS DateTime), NULL, CAST(N'2015-02-28 10:25:47.660' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4021, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 10:34:31.317' AS DateTime), NULL, CAST(N'2015-02-28 10:34:31.317' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4020, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 10:31:11.563' AS DateTime), NULL, CAST(N'2015-02-28 10:31:11.563' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4022, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 10:34:31.467' AS DateTime), NULL, CAST(N'2015-02-28 10:34:31.467' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4023, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 10:34:31.617' AS DateTime), NULL, CAST(N'2015-02-28 10:34:31.617' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4024, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2481', NULL, CAST(N'2015-02-28 10:39:50.377' AS DateTime), NULL, CAST(N'2015-02-28 10:39:50.377' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4025, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2481', NULL, CAST(N'2015-02-28 10:39:50.497' AS DateTime), NULL, CAST(N'2015-02-28 10:39:50.497' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4026, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2481', NULL, CAST(N'2015-02-28 10:39:50.633' AS DateTime), NULL, CAST(N'2015-02-28 10:39:50.633' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4027, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=3477', NULL, CAST(N'2015-02-28 10:43:59.300' AS DateTime), NULL, CAST(N'2015-02-28 10:43:59.300' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4028, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=3477', NULL, CAST(N'2015-02-28 10:43:59.413' AS DateTime), NULL, CAST(N'2015-02-28 10:43:59.413' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4029, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=3477', NULL, CAST(N'2015-02-28 10:43:59.523' AS DateTime), NULL, CAST(N'2015-02-28 10:43:59.523' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4030, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=3477', NULL, CAST(N'2015-02-28 10:43:59.637' AS DateTime), NULL, CAST(N'2015-02-28 10:43:59.637' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4031, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2425', NULL, CAST(N'2015-02-28 10:46:39.317' AS DateTime), NULL, CAST(N'2015-02-28 10:46:39.317' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4032, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2425', NULL, CAST(N'2015-02-28 10:46:39.473' AS DateTime), NULL, CAST(N'2015-02-28 10:46:39.473' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4033, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2425', NULL, CAST(N'2015-02-28 10:46:39.587' AS DateTime), NULL, CAST(N'2015-02-28 10:46:39.587' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4034, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: The DELETE statement conflicted with the REFERENCE constraint "FK_FlatPLC_Flat". The conflict occurred in database "REMSDB", table "dbo.FlatPLC", column ''FlatID''.
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Admin.FlatService.DeleteFlat(Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatService.cs:line 190', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/DeleteFlat', NULL, CAST(N'2015-02-28 10:46:43.923' AS DateTime), NULL, CAST(N'2015-02-28 10:46:43.923' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4035, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2425', NULL, CAST(N'2015-02-28 10:46:53.967' AS DateTime), NULL, CAST(N'2015-02-28 10:46:53.967' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4036, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2425', NULL, CAST(N'2015-02-28 10:46:54.113' AS DateTime), NULL, CAST(N'2015-02-28 10:46:54.113' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4037, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2425', NULL, CAST(N'2015-02-28 10:46:54.247' AS DateTime), NULL, CAST(N'2015-02-28 10:46:54.247' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4038, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: The DELETE statement conflicted with the REFERENCE constraint "FK_FlatPLC_Flat". The conflict occurred in database "REMSDB", table "dbo.FlatPLC", column ''FlatID''.
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Admin.FlatService.DeleteFlat(Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatService.cs:line 190', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/DeleteFlat', NULL, CAST(N'2015-02-28 10:47:01.110' AS DateTime), NULL, CAST(N'2015-02-28 10:47:01.110' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4042, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: The DELETE statement conflicted with the REFERENCE constraint "FK_FlatPLC_Flat". The conflict occurred in database "REMSDB", table "dbo.FlatPLC", column ''FlatID''.
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Admin.FlatService.DeleteFlat(Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatService.cs:line 190', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/DeleteFlat', NULL, CAST(N'2015-02-28 10:48:25.573' AS DateTime), NULL, CAST(N'2015-02-28 10:48:25.573' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4039, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 10:47:34.720' AS DateTime), NULL, CAST(N'2015-02-28 10:47:34.720' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4040, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 10:47:34.833' AS DateTime), NULL, CAST(N'2015-02-28 10:47:34.833' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (4041, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 10:47:34.973' AS DateTime), NULL, CAST(N'2015-02-28 10:47:34.973' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5022, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-02-28 16:05:43.987' AS DateTime), NULL, CAST(N'2015-02-28 16:05:43.987' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5023, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-02-28 16:05:44.177' AS DateTime), NULL, CAST(N'2015-02-28 16:05:44.177' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5024, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 16:06:44.710' AS DateTime), NULL, CAST(N'2015-02-28 16:06:44.710' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5025, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 16:06:44.870' AS DateTime), NULL, CAST(N'2015-02-28 16:06:44.870' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5026, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 16:06:44.993' AS DateTime), NULL, CAST(N'2015-02-28 16:06:44.993' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5027, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 16:06:45.110' AS DateTime), NULL, CAST(N'2015-02-28 16:06:45.110' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5032, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 19:45:32.837' AS DateTime), NULL, CAST(N'2015-02-28 19:45:32.837' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5033, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 19:45:33.280' AS DateTime), NULL, CAST(N'2015-02-28 19:45:33.280' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5034, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 19:45:33.687' AS DateTime), NULL, CAST(N'2015-02-28 19:45:33.687' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5028, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 16:06:48.703' AS DateTime), NULL, CAST(N'2015-02-28 16:06:48.703' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5029, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 16:06:48.860' AS DateTime), NULL, CAST(N'2015-02-28 16:06:48.860' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5030, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 16:06:49.037' AS DateTime), NULL, CAST(N'2015-02-28 16:06:49.037' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5031, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 16:06:49.173' AS DateTime), NULL, CAST(N'2015-02-28 16:06:49.173' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5035, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 19:45:33.830' AS DateTime), NULL, CAST(N'2015-02-28 19:45:33.830' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5036, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 19:45:41.357' AS DateTime), NULL, CAST(N'2015-02-28 19:45:41.357' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5037, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 19:45:41.467' AS DateTime), NULL, CAST(N'2015-02-28 19:45:41.467' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5038, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 19:45:41.587' AS DateTime), NULL, CAST(N'2015-02-28 19:45:41.587' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5039, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 19:45:41.707' AS DateTime), NULL, CAST(N'2015-02-28 19:45:41.707' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5040, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 19:49:50.637' AS DateTime), NULL, CAST(N'2015-02-28 19:49:50.637' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5041, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 19:49:51.030' AS DateTime), NULL, CAST(N'2015-02-28 19:49:51.030' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5042, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 19:49:51.180' AS DateTime), NULL, CAST(N'2015-02-28 19:49:51.180' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5043, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 19:49:51.360' AS DateTime), NULL, CAST(N'2015-02-28 19:49:51.360' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5044, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 19:49:55.130' AS DateTime), NULL, CAST(N'2015-02-28 19:49:55.130' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5045, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 19:49:55.247' AS DateTime), NULL, CAST(N'2015-02-28 19:49:55.247' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5046, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 19:49:55.387' AS DateTime), NULL, CAST(N'2015-02-28 19:49:55.387' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5047, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2485', NULL, CAST(N'2015-02-28 19:49:55.507' AS DateTime), NULL, CAST(N'2015-02-28 19:49:55.507' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5048, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 19:50:34.763' AS DateTime), NULL, CAST(N'2015-02-28 19:50:34.763' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5049, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 19:50:34.910' AS DateTime), NULL, CAST(N'2015-02-28 19:50:34.910' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5050, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 19:50:35.020' AS DateTime), NULL, CAST(N'2015-02-28 19:50:35.020' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5051, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 19:50:35.127' AS DateTime), NULL, CAST(N'2015-02-28 19:50:35.127' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5056, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 19:57:47.560' AS DateTime), NULL, CAST(N'2015-02-28 19:57:47.560' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5057, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 19:57:47.743' AS DateTime), NULL, CAST(N'2015-02-28 19:57:47.743' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5058, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 19:57:47.897' AS DateTime), NULL, CAST(N'2015-02-28 19:57:47.897' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5052, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 19:56:54.177' AS DateTime), NULL, CAST(N'2015-02-28 19:56:54.177' AS DateTime), NULL, N'0', NULL)
GO
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5053, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 19:56:54.320' AS DateTime), NULL, CAST(N'2015-02-28 19:56:54.320' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5054, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 19:56:54.440' AS DateTime), NULL, CAST(N'2015-02-28 19:56:54.440' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5055, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 19:56:54.547' AS DateTime), NULL, CAST(N'2015-02-28 19:56:54.547' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5059, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 19:57:48.013' AS DateTime), NULL, CAST(N'2015-02-28 19:57:48.013' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5060, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 19:58:30.683' AS DateTime), NULL, CAST(N'2015-02-28 19:58:30.683' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5061, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 19:58:30.830' AS DateTime), NULL, CAST(N'2015-02-28 19:58:30.830' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5062, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 19:58:30.943' AS DateTime), NULL, CAST(N'2015-02-28 19:58:30.943' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5063, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2484', NULL, CAST(N'2015-02-28 19:58:31.057' AS DateTime), NULL, CAST(N'2015-02-28 19:58:31.057' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5064, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 19:59:35.447' AS DateTime), NULL, CAST(N'2015-02-28 19:59:35.447' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5065, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 19:59:35.577' AS DateTime), NULL, CAST(N'2015-02-28 19:59:35.577' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5066, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 19:59:35.700' AS DateTime), NULL, CAST(N'2015-02-28 19:59:35.700' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5067, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 19:59:35.817' AS DateTime), NULL, CAST(N'2015-02-28 19:59:35.817' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5068, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2481', NULL, CAST(N'2015-02-28 20:00:08.063' AS DateTime), NULL, CAST(N'2015-02-28 20:00:08.063' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5069, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2481', NULL, CAST(N'2015-02-28 20:00:08.200' AS DateTime), NULL, CAST(N'2015-02-28 20:00:08.200' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5070, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2481', NULL, CAST(N'2015-02-28 20:00:08.350' AS DateTime), NULL, CAST(N'2015-02-28 20:00:08.350' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5071, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2481', NULL, CAST(N'2015-02-28 20:00:08.463' AS DateTime), NULL, CAST(N'2015-02-28 20:00:08.463' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5072, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2413', NULL, CAST(N'2015-02-28 20:02:14.520' AS DateTime), NULL, CAST(N'2015-02-28 20:02:14.520' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5073, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2413', NULL, CAST(N'2015-02-28 20:02:14.670' AS DateTime), NULL, CAST(N'2015-02-28 20:02:14.670' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5074, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2413', NULL, CAST(N'2015-02-28 20:02:14.783' AS DateTime), NULL, CAST(N'2015-02-28 20:02:14.783' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5075, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2413', NULL, CAST(N'2015-02-28 20:02:14.900' AS DateTime), NULL, CAST(N'2015-02-28 20:02:14.900' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5076, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2413', NULL, CAST(N'2015-02-28 20:02:42.693' AS DateTime), NULL, CAST(N'2015-02-28 20:02:42.693' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5077, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2413', NULL, CAST(N'2015-02-28 20:02:42.843' AS DateTime), NULL, CAST(N'2015-02-28 20:02:42.843' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5078, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2413', NULL, CAST(N'2015-02-28 20:02:42.947' AS DateTime), NULL, CAST(N'2015-02-28 20:02:42.947' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5079, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2413', NULL, CAST(N'2015-02-28 20:02:43.063' AS DateTime), NULL, CAST(N'2015-02-28 20:02:43.063' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5084, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:46:25.557' AS DateTime), NULL, CAST(N'2015-02-28 20:46:25.557' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5085, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:46:25.670' AS DateTime), NULL, CAST(N'2015-02-28 20:46:25.670' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5086, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:46:25.770' AS DateTime), NULL, CAST(N'2015-02-28 20:46:25.770' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5087, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:46:25.887' AS DateTime), NULL, CAST(N'2015-02-28 20:46:25.887' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5088, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:48:46.770' AS DateTime), NULL, CAST(N'2015-02-28 20:48:46.770' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5080, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:37:23.333' AS DateTime), NULL, CAST(N'2015-02-28 20:37:23.333' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5081, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:37:23.453' AS DateTime), NULL, CAST(N'2015-02-28 20:37:23.453' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5082, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:37:23.570' AS DateTime), NULL, CAST(N'2015-02-28 20:37:23.570' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5083, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:37:23.683' AS DateTime), NULL, CAST(N'2015-02-28 20:37:23.683' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5089, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:48:46.890' AS DateTime), NULL, CAST(N'2015-02-28 20:48:46.890' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5090, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:48:47.027' AS DateTime), NULL, CAST(N'2015-02-28 20:48:47.027' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5091, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:48:47.147' AS DateTime), NULL, CAST(N'2015-02-28 20:48:47.147' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5092, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:58:20.213' AS DateTime), NULL, CAST(N'2015-02-28 20:58:20.213' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5093, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:58:20.617' AS DateTime), NULL, CAST(N'2015-02-28 20:58:20.617' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5094, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:58:20.743' AS DateTime), NULL, CAST(N'2015-02-28 20:58:20.743' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5095, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:58:20.850' AS DateTime), NULL, CAST(N'2015-02-28 20:58:20.850' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5096, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:58:46.343' AS DateTime), NULL, CAST(N'2015-02-28 20:58:46.343' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5097, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:58:46.450' AS DateTime), NULL, CAST(N'2015-02-28 20:58:46.450' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5098, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:58:46.580' AS DateTime), NULL, CAST(N'2015-02-28 20:58:46.580' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5099, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 20:58:46.703' AS DateTime), NULL, CAST(N'2015-02-28 20:58:46.703' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5114, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:01:13.967' AS DateTime), NULL, CAST(N'2015-02-28 21:01:13.967' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5115, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:01:14.083' AS DateTime), NULL, CAST(N'2015-02-28 21:01:14.083' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5116, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:01:14.200' AS DateTime), NULL, CAST(N'2015-02-28 21:01:14.200' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5100, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:00:14.083' AS DateTime), NULL, CAST(N'2015-02-28 21:00:14.083' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5117, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:01:14.320' AS DateTime), NULL, CAST(N'2015-02-28 21:01:14.320' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5118, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-02-28 21:01:32.747' AS DateTime), NULL, CAST(N'2015-02-28 21:01:32.747' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5119, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-02-28 21:01:32.860' AS DateTime), NULL, CAST(N'2015-02-28 21:01:32.860' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5120, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:01:38.790' AS DateTime), NULL, CAST(N'2015-02-28 21:01:38.790' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5121, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:01:38.907' AS DateTime), NULL, CAST(N'2015-02-28 21:01:38.907' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5101, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:00:14.217' AS DateTime), NULL, CAST(N'2015-02-28 21:00:14.217' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5149, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4479', NULL, CAST(N'2015-02-28 21:42:35.003' AS DateTime), NULL, CAST(N'2015-02-28 21:42:35.003' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5150, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4479', NULL, CAST(N'2015-02-28 21:42:35.130' AS DateTime), NULL, CAST(N'2015-02-28 21:42:35.130' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5151, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4478', NULL, CAST(N'2015-02-28 21:42:45.703' AS DateTime), NULL, CAST(N'2015-02-28 21:42:45.703' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5152, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4478', NULL, CAST(N'2015-02-28 21:42:45.830' AS DateTime), NULL, CAST(N'2015-02-28 21:42:45.830' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5158, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:45:50.023' AS DateTime), NULL, CAST(N'2015-02-28 21:45:50.023' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5102, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:00:14.360' AS DateTime), NULL, CAST(N'2015-02-28 21:00:14.360' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5104, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:00:52.210' AS DateTime), NULL, CAST(N'2015-02-28 21:00:52.210' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5105, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:00:52.330' AS DateTime), NULL, CAST(N'2015-02-28 21:00:52.330' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5106, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:00:52.490' AS DateTime), NULL, CAST(N'2015-02-28 21:00:52.490' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5107, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:00:52.607' AS DateTime), NULL, CAST(N'2015-02-28 21:00:52.607' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5108, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-02-28 21:00:57.233' AS DateTime), NULL, CAST(N'2015-02-28 21:00:57.233' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5103, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:00:14.480' AS DateTime), NULL, CAST(N'2015-02-28 21:00:14.480' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5109, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-02-28 21:00:57.370' AS DateTime), NULL, CAST(N'2015-02-28 21:00:57.370' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5110, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:01:01.397' AS DateTime), NULL, CAST(N'2015-02-28 21:01:01.397' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5111, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:01:01.520' AS DateTime), NULL, CAST(N'2015-02-28 21:01:01.520' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5112, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:01:01.640' AS DateTime), NULL, CAST(N'2015-02-28 21:01:01.640' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5113, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:01:01.753' AS DateTime), NULL, CAST(N'2015-02-28 21:01:01.753' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5122, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:01:39.027' AS DateTime), NULL, CAST(N'2015-02-28 21:01:39.027' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5123, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:01:39.143' AS DateTime), NULL, CAST(N'2015-02-28 21:01:39.143' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5124, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-02-28 21:01:42.737' AS DateTime), NULL, CAST(N'2015-02-28 21:01:42.737' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5125, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-02-28 21:01:42.853' AS DateTime), NULL, CAST(N'2015-02-28 21:01:42.853' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5147, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4480', NULL, CAST(N'2015-02-28 21:42:20.567' AS DateTime), NULL, CAST(N'2015-02-28 21:42:20.567' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5148, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4480', NULL, CAST(N'2015-02-28 21:42:20.687' AS DateTime), NULL, CAST(N'2015-02-28 21:42:20.687' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5126, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:04:16.377' AS DateTime), NULL, CAST(N'2015-02-28 21:04:16.377' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5127, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:04:16.497' AS DateTime), NULL, CAST(N'2015-02-28 21:04:16.497' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5128, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:04:16.617' AS DateTime), NULL, CAST(N'2015-02-28 21:04:16.617' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5129, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:04:16.733' AS DateTime), NULL, CAST(N'2015-02-28 21:04:16.733' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5130, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:04:21.097' AS DateTime), NULL, CAST(N'2015-02-28 21:04:21.097' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5131, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:04:21.207' AS DateTime), NULL, CAST(N'2015-02-28 21:04:21.207' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5132, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:04:21.323' AS DateTime), NULL, CAST(N'2015-02-28 21:04:21.323' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5133, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:04:21.437' AS DateTime), NULL, CAST(N'2015-02-28 21:04:21.437' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5134, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:04:21.567' AS DateTime), NULL, CAST(N'2015-02-28 21:04:21.567' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5135, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:39:21.757' AS DateTime), NULL, CAST(N'2015-02-28 21:39:21.757' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5136, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:39:21.937' AS DateTime), NULL, CAST(N'2015-02-28 21:39:21.937' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5137, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:39:22.070' AS DateTime), NULL, CAST(N'2015-02-28 21:39:22.070' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5138, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:39:22.183' AS DateTime), NULL, CAST(N'2015-02-28 21:39:22.183' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5139, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:39:22.297' AS DateTime), NULL, CAST(N'2015-02-28 21:39:22.297' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5140, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4478', NULL, CAST(N'2015-02-28 21:39:26.097' AS DateTime), NULL, CAST(N'2015-02-28 21:39:26.097' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5141, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4478', NULL, CAST(N'2015-02-28 21:39:26.223' AS DateTime), NULL, CAST(N'2015-02-28 21:39:26.223' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5142, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:39:33.300' AS DateTime), NULL, CAST(N'2015-02-28 21:39:33.300' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5143, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:39:33.413' AS DateTime), NULL, CAST(N'2015-02-28 21:39:33.413' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5144, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:39:33.567' AS DateTime), NULL, CAST(N'2015-02-28 21:39:33.567' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5145, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:39:33.710' AS DateTime), NULL, CAST(N'2015-02-28 21:39:33.710' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5146, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:39:33.880' AS DateTime), NULL, CAST(N'2015-02-28 21:39:33.880' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6170, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-03-03 00:16:55.303' AS DateTime), NULL, CAST(N'2015-03-03 00:16:55.303' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6171, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-03-03 00:16:55.843' AS DateTime), NULL, CAST(N'2015-03-03 00:16:55.843' AS DateTime), NULL, N'0', NULL)
GO
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6172, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-03-03 00:17:14.913' AS DateTime), NULL, CAST(N'2015-03-03 00:17:14.913' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5153, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:44:17.897' AS DateTime), NULL, CAST(N'2015-02-28 21:44:17.897' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6173, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-03-03 00:17:15.033' AS DateTime), NULL, CAST(N'2015-03-03 00:17:15.033' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6174, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: The DELETE statement conflicted with the REFERENCE constraint "FK_FlatCharge_Flat". The conflict occurred in database "REMSDB", table "dbo.FlatCharge", column ''FlatID''.
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Admin.FlatService.DeleteFlat(Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatService.cs:line 207', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/DeleteFlat', NULL, CAST(N'2015-03-03 00:17:19.793' AS DateTime), NULL, CAST(N'2015-03-03 00:17:19.793' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6185, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-03-03 00:21:34.400' AS DateTime), NULL, CAST(N'2015-03-03 00:21:34.400' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6186, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-03-03 00:21:34.797' AS DateTime), NULL, CAST(N'2015-03-03 00:21:34.797' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6187, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-03-03 00:21:34.927' AS DateTime), NULL, CAST(N'2015-03-03 00:21:34.927' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6188, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-03-03 00:21:35.053' AS DateTime), NULL, CAST(N'2015-03-03 00:21:35.053' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5154, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:44:18.017' AS DateTime), NULL, CAST(N'2015-02-28 21:44:18.017' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5155, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:44:18.137' AS DateTime), NULL, CAST(N'2015-02-28 21:44:18.137' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5156, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:44:18.243' AS DateTime), NULL, CAST(N'2015-02-28 21:44:18.243' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5157, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:44:18.357' AS DateTime), NULL, CAST(N'2015-02-28 21:44:18.357' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5163, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:46:54.170' AS DateTime), NULL, CAST(N'2015-02-28 21:46:54.170' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5164, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:46:54.280' AS DateTime), NULL, CAST(N'2015-02-28 21:46:54.280' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5159, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:45:50.143' AS DateTime), NULL, CAST(N'2015-02-28 21:45:50.143' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5165, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:46:54.387' AS DateTime), NULL, CAST(N'2015-02-28 21:46:54.387' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5166, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:46:54.503' AS DateTime), NULL, CAST(N'2015-02-28 21:46:54.503' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5167, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:46:58.487' AS DateTime), NULL, CAST(N'2015-02-28 21:46:58.487' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5168, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:46:58.603' AS DateTime), NULL, CAST(N'2015-02-28 21:46:58.603' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5169, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:47:14.650' AS DateTime), NULL, CAST(N'2015-02-28 21:47:14.650' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5160, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:45:50.253' AS DateTime), NULL, CAST(N'2015-02-28 21:45:50.253' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5170, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:47:14.797' AS DateTime), NULL, CAST(N'2015-02-28 21:47:14.797' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5171, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:47:14.907' AS DateTime), NULL, CAST(N'2015-02-28 21:47:14.907' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5172, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-02-28 21:47:15.017' AS DateTime), NULL, CAST(N'2015-02-28 21:47:15.017' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5173, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:47:18.510' AS DateTime), NULL, CAST(N'2015-02-28 21:47:18.510' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5174, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:47:18.653' AS DateTime), NULL, CAST(N'2015-02-28 21:47:18.653' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5161, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:45:50.363' AS DateTime), NULL, CAST(N'2015-02-28 21:45:50.363' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6189, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-03-03 00:21:35.167' AS DateTime), NULL, CAST(N'2015-03-03 00:21:35.167' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6190, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 00:21:51.330' AS DateTime), NULL, CAST(N'2015-03-03 00:21:51.330' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6191, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 00:21:51.447' AS DateTime), NULL, CAST(N'2015-03-03 00:21:51.447' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6192, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 00:21:51.560' AS DateTime), NULL, CAST(N'2015-03-03 00:21:51.560' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6193, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 00:21:51.677' AS DateTime), NULL, CAST(N'2015-03-03 00:21:51.677' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (5162, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-02-28 21:45:50.487' AS DateTime), NULL, CAST(N'2015-02-28 21:45:50.487' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6194, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 00:21:51.797' AS DateTime), NULL, CAST(N'2015-03-03 00:21:51.797' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6195, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-03-03 00:21:58.253' AS DateTime), NULL, CAST(N'2015-03-03 00:21:58.253' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6196, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-03-03 00:21:58.400' AS DateTime), NULL, CAST(N'2015-03-03 00:21:58.400' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6197, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 00:22:01.883' AS DateTime), NULL, CAST(N'2015-03-03 00:22:01.883' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6198, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 00:22:02.000' AS DateTime), NULL, CAST(N'2015-03-03 00:22:02.000' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6175, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 00:17:43.007' AS DateTime), NULL, CAST(N'2015-03-03 00:17:43.007' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6176, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 00:17:43.137' AS DateTime), NULL, CAST(N'2015-03-03 00:17:43.137' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6177, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 00:17:43.263' AS DateTime), NULL, CAST(N'2015-03-03 00:17:43.263' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6178, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 00:17:43.383' AS DateTime), NULL, CAST(N'2015-03-03 00:17:43.383' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6179, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.Data.Entity.Infrastructure.DbUpdateException', N'An error occurred while updating the entries. See the inner exception for details.', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: The DELETE statement conflicted with the REFERENCE constraint "FK_FlatCharge_Flat". The conflict occurred in database "REMSDB", table "dbo.FlatCharge", column ''FlatID''.
The statement has been terminated.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.<NonQuery>b__0(DbCommand t, DbCommandInterceptionContext`1 c)
   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)
   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()
   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.<Update>b__2(UpdateTranslator ut)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)
   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()
   at System.Data.Entity.Core.Objects.ObjectContext.<SaveChangesToStore>b__35()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass2a.<SaveChangesInternal>b__27()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)
   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   --- End of inner exception stack trace ---
   at System.Data.Entity.Internal.InternalContext.SaveChanges()
   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()
   at System.Data.Entity.DbContext.SaveChanges()
   at REMS.Data.Access.Admin.FlatService.DeleteFlat(Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatService.cs:line 207', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/DeleteFlat', NULL, CAST(N'2015-03-03 00:17:47.043' AS DateTime), NULL, CAST(N'2015-03-03 00:17:47.043' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6180, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-03-03 00:17:56.510' AS DateTime), NULL, CAST(N'2015-03-03 00:17:56.510' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6181, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-03-03 00:17:56.637' AS DateTime), NULL, CAST(N'2015-03-03 00:17:56.637' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6182, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-03-03 00:17:56.857' AS DateTime), NULL, CAST(N'2015-03-03 00:17:56.857' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6183, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-03-03 00:17:57.100' AS DateTime), NULL, CAST(N'2015-03-03 00:17:57.100' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6184, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2482', NULL, CAST(N'2015-03-03 00:17:57.417' AS DateTime), NULL, CAST(N'2015-03-03 00:17:57.417' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6202, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 00:22:31.177' AS DateTime), NULL, CAST(N'2015-03-03 00:22:31.177' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6203, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 00:22:31.293' AS DateTime), NULL, CAST(N'2015-03-03 00:22:31.293' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6204, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 00:22:31.423' AS DateTime), NULL, CAST(N'2015-03-03 00:22:31.423' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6199, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 00:22:02.117' AS DateTime), NULL, CAST(N'2015-03-03 00:22:02.117' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6200, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 00:22:02.230' AS DateTime), NULL, CAST(N'2015-03-03 00:22:02.230' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6201, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 00:22:02.347' AS DateTime), NULL, CAST(N'2015-03-03 00:22:02.347' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6209, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 13:42:05.167' AS DateTime), NULL, CAST(N'2015-03-03 13:42:05.167' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6210, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 13:42:05.793' AS DateTime), NULL, CAST(N'2015-03-03 13:42:05.793' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6211, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 13:42:05.943' AS DateTime), NULL, CAST(N'2015-03-03 13:42:05.943' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6205, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 00:22:31.537' AS DateTime), NULL, CAST(N'2015-03-03 00:22:31.537' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6206, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 00:22:31.657' AS DateTime), NULL, CAST(N'2015-03-03 00:22:31.657' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6207, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-03-03 00:22:35.760' AS DateTime), NULL, CAST(N'2015-03-03 00:22:35.760' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6208, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4477', NULL, CAST(N'2015-03-03 00:22:35.943' AS DateTime), NULL, CAST(N'2015-03-03 00:22:35.943' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6214, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4657', NULL, CAST(N'2015-03-04 01:43:51.850' AS DateTime), NULL, CAST(N'2015-03-04 01:43:51.850' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6215, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4657', NULL, CAST(N'2015-03-04 01:43:52.030' AS DateTime), NULL, CAST(N'2015-03-04 01:43:52.030' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6212, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 13:42:06.107' AS DateTime), NULL, CAST(N'2015-03-03 13:42:06.107' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6213, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=2483', NULL, CAST(N'2015-03-03 13:42:06.257' AS DateTime), NULL, CAST(N'2015-03-03 13:42:06.257' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6229, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4753', NULL, CAST(N'2015-03-06 12:52:41.107' AS DateTime), NULL, CAST(N'2015-03-06 12:52:41.107' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6230, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4753', NULL, CAST(N'2015-03-06 12:52:41.640' AS DateTime), NULL, CAST(N'2015-03-06 12:52:41.640' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6231, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4753', NULL, CAST(N'2015-03-06 12:52:41.830' AS DateTime), NULL, CAST(N'2015-03-06 12:52:41.830' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (7226, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in e:\ComaxCosulting\1. SourceCode\REMS-Git\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4749', NULL, CAST(N'2015-03-10 11:03:24.920' AS DateTime), NULL, CAST(N'2015-03-10 11:03:24.920' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6216, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4657', NULL, CAST(N'2015-03-04 01:43:52.163' AS DateTime), NULL, CAST(N'2015-03-04 01:43:52.163' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6217, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4657', NULL, CAST(N'2015-03-04 01:43:56.773' AS DateTime), NULL, CAST(N'2015-03-04 01:43:56.773' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6218, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4657', NULL, CAST(N'2015-03-04 01:43:56.907' AS DateTime), NULL, CAST(N'2015-03-04 01:43:56.907' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6219, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4657', NULL, CAST(N'2015-03-04 01:43:57.017' AS DateTime), NULL, CAST(N'2015-03-04 01:43:57.017' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6220, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4657', NULL, CAST(N'2015-03-04 01:44:01.157' AS DateTime), NULL, CAST(N'2015-03-04 01:44:01.157' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6221, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4657', NULL, CAST(N'2015-03-04 01:44:01.287' AS DateTime), NULL, CAST(N'2015-03-04 01:44:01.287' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6222, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4657', NULL, CAST(N'2015-03-04 01:44:01.423' AS DateTime), NULL, CAST(N'2015-03-04 01:44:01.423' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6223, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4657', NULL, CAST(N'2015-03-04 01:47:32.873' AS DateTime), NULL, CAST(N'2015-03-04 01:47:32.873' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6224, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4657', NULL, CAST(N'2015-03-04 01:47:33.367' AS DateTime), NULL, CAST(N'2015-03-04 01:47:33.367' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6225, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4657', NULL, CAST(N'2015-03-04 01:47:33.503' AS DateTime), NULL, CAST(N'2015-03-04 01:47:33.503' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (7228, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in e:\ComaxCosulting\1. SourceCode\REMS-Git\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4749', NULL, CAST(N'2015-03-10 11:03:25.713' AS DateTime), NULL, CAST(N'2015-03-10 11:03:25.713' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6226, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4753', NULL, CAST(N'2015-03-06 12:49:46.740' AS DateTime), NULL, CAST(N'2015-03-06 12:49:46.740' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6227, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4753', NULL, CAST(N'2015-03-06 12:49:46.980' AS DateTime), NULL, CAST(N'2015-03-06 12:49:46.980' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (6228, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in d:\ComaxCosulting\1. SourceCode\REMS\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4753', NULL, CAST(N'2015-03-06 12:49:47.137' AS DateTime), NULL, CAST(N'2015-03-06 12:49:47.137' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (7227, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', N'System.NullReferenceException', N'Object reference not set to an instance of an object.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at REMS.Data.Access.Admin.FlatPLCService.IsPLCinFlat(Int32 plcid, Int32 flatid) in e:\ComaxCosulting\1. SourceCode\REMS-Git\REMS.Data.Access\Admin\FlatPLCService.cs:line 113', N'/Admin/CreateProperty/EditFlat', N'/Admin/CreateProperty/GetFlatPCLHtml?flatid=4749', NULL, CAST(N'2015-03-10 11:03:25.580' AS DateTime), NULL, CAST(N'2015-03-10 11:03:25.580' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (7229, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', N'System.InvalidOperationException', N'The entity type PlanInstallmentModel is not part of the model for the current context.', N'System.InvalidOperationException: The entity type PlanInstallmentModel is not part of the model for the current context.
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.InternalEntityEntry..ctor(InternalContext internalContext, Object entity)
   at System.Data.Entity.DbContext.Entry[TEntity](TEntity entity)
   at REMS.Data.Access.Master.PlanInstallmentService.EditPlanInstallment(PlanInstallmentModel model) in e:\ComaxCosulting\1. SourceCode\REMS-Git\REMS.Data.Access\Master\PlanInstallmentService.cs:line 52', N'/Master/InstallmentPlan', N'/Master/InstallmentPlan/EditPlanInstallment', NULL, CAST(N'2015-03-18 09:17:07.437' AS DateTime), NULL, CAST(N'2015-03-18 09:17:07.437' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (7230, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', N'System.InvalidOperationException', N'The entity type PlanInstallmentModel is not part of the model for the current context.', N'System.InvalidOperationException: The entity type PlanInstallmentModel is not part of the model for the current context.
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.InternalEntityEntry..ctor(InternalContext internalContext, Object entity)
   at System.Data.Entity.DbContext.Entry[TEntity](TEntity entity)
   at REMS.Data.Access.Master.PlanInstallmentService.EditPlanInstallment(PlanInstallmentModel model) in e:\ComaxCosulting\1. SourceCode\REMS-Git\REMS.Data.Access\Master\PlanInstallmentService.cs:line 52', N'/Master/InstallmentPlan', N'/Master/InstallmentPlan/EditPlanInstallment', NULL, CAST(N'2015-03-18 09:18:06.360' AS DateTime), NULL, CAST(N'2015-03-18 09:18:06.360' AS DateTime), NULL, N'0', NULL)
INSERT [dbo].[Error] ([Id], [ErrorDate], [IpAddress], [UserAgent], [Exception], [Message], [Everything], [HttpReferer], [PathAndQuery], [CreatedBy], [CreatedOn], [ChangedBy], [ChangedOn], [FullURL], [UserName], [ErrorID]) VALUES (7231, NULL, N'::1', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', N'System.InvalidOperationException', N'The entity type PlanInstallmentModel is not part of the model for the current context.', N'System.InvalidOperationException: The entity type PlanInstallmentModel is not part of the model for the current context.
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.InternalEntityEntry..ctor(InternalContext internalContext, Object entity)
   at System.Data.Entity.DbContext.Entry[TEntity](TEntity entity)
   at REMS.Data.Access.Master.PlanInstallmentService.EditPlanInstallment(PlanInstallmentModel model)', N'/Master/InstallmentPlan', N'/Master/InstallmentPlan/EditPlanInstallment', NULL, CAST(N'2015-03-18 09:20:08.407' AS DateTime), NULL, CAST(N'2015-03-18 09:20:08.407' AS DateTime), NULL, N'0', NULL)
SET IDENTITY_INSERT [dbo].[Error] OFF
SET IDENTITY_INSERT [dbo].[Flat] ON 

INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4697, 4268, N'1BHK', N'10', N'10', CAST(343.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4698, 4268, N'1BHK', N'11', N'11', CAST(343.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4699, 4268, N'1BHK', N'12', N'12', CAST(343.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4700, 4268, N'1BHK', N'14', N'14', CAST(343.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4701, 4269, N'2BHK', N'20', N'20', CAST(43453.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4702, 4269, N'2BHK', N'21', N'21', CAST(43453.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4703, 4269, N'2BHK', N'22', N'22', CAST(43453.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4704, 4269, N'2BHK', N'24', N'24', CAST(43453.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4705, 4270, N'2BHK', N'30', N'30', CAST(43453.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4706, 4270, N'2BHK', N'31', N'31', CAST(43453.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4707, 4270, N'2BHK', N'32', N'32', CAST(43453.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4708, 4270, N'2BHK', N'34', N'34', CAST(43453.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4709, 4271, N'3BHK', N'40', N'40', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4710, 4271, N'3BHK', N'41', N'41', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4711, 4271, N'3BHK', N'42', N'42', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4712, 4271, N'3BHK', N'44', N'44', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4713, 4272, N'3BHK', N'50', N'50', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4714, 4272, N'3BHK', N'51', N'51', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4715, 4272, N'3BHK', N'52', N'52', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4716, 4272, N'3BHK', N'54', N'54', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4717, 4273, N'3BHK', N'60', N'60', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4718, 4273, N'3BHK', N'61', N'61', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4719, 4273, N'3BHK', N'62', N'62', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4720, 4273, N'3BHK', N'64', N'64', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4721, 4274, N'3BHK', N'70', N'70', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4722, 4274, N'3BHK', N'71', N'71', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4723, 4274, N'3BHK', N'72', N'72', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4724, 4274, N'3BHK', N'74', N'74', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4725, 4275, N'3BHK', N'80', N'80', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4726, 4275, N'3BHK', N'81', N'81', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4727, 4275, N'3BHK', N'82', N'82', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4728, 4275, N'3BHK', N'84', N'84', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4729, 4276, N'3BHK', N'90', N'90', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4730, 4276, N'3BHK', N'91', N'91', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4731, 4276, N'3BHK', N'92', N'92', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4732, 4276, N'3BHK', N'94', N'94', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4733, 4277, N'3BHK', N'100', N'100', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4734, 4277, N'3BHK', N'101', N'101', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4735, 4277, N'3BHK', N'102', N'102', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4736, 4277, N'3BHK', N'104', N'104', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4737, 4278, N'3BHK', N'110', N'110', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4738, 4278, N'3BHK', N'111', N'111', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4739, 4278, N'3BHK', N'112', N'112', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4740, 4278, N'3BHK', N'114', N'114', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4741, 4279, N'3BHK', N'120', N'120', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4742, 4279, N'3BHK', N'121', N'121', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4743, 4279, N'3BHK', N'122', N'122', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4744, 4279, N'3BHK', N'124', N'124', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4745, 4280, N'3BHK', N'130', N'130', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4746, 4280, N'3BHK', N'131', N'131', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4747, 4280, N'3BHK', N'132', N'132', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4748, 4280, N'3BHK', N'134', N'134', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4749, 4281, N'1BHK', N'140', N'140', CAST(343.00 AS Numeric(18, 2)), N'SqFt', 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4750, 4281, N'3BHK', N'141', N'141', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4751, 4281, N'3BHK', N'142', N'142', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4752, 4281, N'3BHK', N'144', N'144', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4753, 4282, N'1BHK', N'150', N'150', CAST(343.00 AS Numeric(18, 2)), N'SqFt', 1000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4754, 4282, N'3BHK', N'151', N'151', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4755, 4282, N'3BHK', N'152', N'152', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
INSERT [dbo].[Flat] ([FlatID], [FloorID], [FlatType], [FlatName], [FlatNo], [FlatSize], [FlatSizeUnit], [SalePrice], [BadRooms], [IsFurnished], [LivingRoom], [ServantRoom], [Kitchen], [Balconies], [BathRooms], [PoojaRoom], [StudyRoom], [AC], [Intercom], [Cupboards], [WashingArea], [PowerBackup], [GASLine], [HomeAutomation], [CrDate], [CrBy], [FlatOrder], [Status]) VALUES (4756, 4282, N'3BHK', N'154', N'154', CAST(1200.00 AS Numeric(18, 2)), N'SqFt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Available')
SET IDENTITY_INSERT [dbo].[Flat] OFF
SET IDENTITY_INSERT [dbo].[FlatCharge] ON 

INSERT [dbo].[FlatCharge] ([FlatChargeID], [FlatID], [AdditionalChargeID], [CrDate]) VALUES (1008, 4753, 1, CAST(N'2015-03-06 12:52:44.277' AS DateTime))
INSERT [dbo].[FlatCharge] ([FlatChargeID], [FlatID], [AdditionalChargeID], [CrDate]) VALUES (1009, 4753, 2, CAST(N'2015-03-06 13:12:31.500' AS DateTime))
SET IDENTITY_INSERT [dbo].[FlatCharge] OFF
SET IDENTITY_INSERT [dbo].[FlatPLC] ON 

INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4450, 4697, 1, CAST(N'2015-03-06 11:57:49.343' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4451, 4697, 2, CAST(N'2015-03-06 11:57:49.407' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4452, 4697, 3, CAST(N'2015-03-06 11:57:49.490' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4453, 4698, 2, CAST(N'2015-03-06 11:57:49.680' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4454, 4699, 2, CAST(N'2015-03-06 11:57:49.753' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4455, 4700, 2, CAST(N'2015-03-06 11:57:49.810' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4456, 4701, 1, CAST(N'2015-03-06 11:57:49.903' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4457, 4701, 2, CAST(N'2015-03-06 11:57:49.930' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4458, 4701, 3, CAST(N'2015-03-06 11:57:49.957' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4459, 4702, 2, CAST(N'2015-03-06 11:57:50.013' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4460, 4703, 2, CAST(N'2015-03-06 11:57:50.080' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4461, 4704, 2, CAST(N'2015-03-06 11:57:50.147' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4462, 4705, 1, CAST(N'2015-03-06 11:57:50.243' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4463, 4705, 2, CAST(N'2015-03-06 11:57:50.277' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4464, 4705, 3, CAST(N'2015-03-06 11:57:50.307' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4465, 4706, 2, CAST(N'2015-03-06 11:57:50.373' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4466, 4707, 2, CAST(N'2015-03-06 11:57:50.473' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4467, 4708, 2, CAST(N'2015-03-06 11:57:50.620' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4468, 4709, 1, CAST(N'2015-03-06 11:57:50.720' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4469, 4709, 2, CAST(N'2015-03-06 11:57:50.750' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4470, 4709, 3, CAST(N'2015-03-06 11:57:50.787' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4471, 4710, 2, CAST(N'2015-03-06 11:57:50.853' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4472, 4711, 2, CAST(N'2015-03-06 11:57:50.923' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4473, 4712, 2, CAST(N'2015-03-06 11:57:50.987' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4474, 4713, 1, CAST(N'2015-03-06 11:57:51.097' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4475, 4713, 2, CAST(N'2015-03-06 11:57:51.130' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4476, 4713, 3, CAST(N'2015-03-06 11:57:51.173' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4477, 4714, 2, CAST(N'2015-03-06 11:57:51.253' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4478, 4715, 2, CAST(N'2015-03-06 11:57:51.330' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4479, 4716, 2, CAST(N'2015-03-06 11:57:51.397' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4480, 4717, 1, CAST(N'2015-03-06 11:57:51.503' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4481, 4717, 2, CAST(N'2015-03-06 11:57:51.537' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4482, 4717, 3, CAST(N'2015-03-06 11:57:51.570' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4483, 4718, 2, CAST(N'2015-03-06 11:57:51.647' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4484, 4719, 2, CAST(N'2015-03-06 11:57:51.723' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4485, 4720, 2, CAST(N'2015-03-06 11:57:51.793' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4486, 4721, 1, CAST(N'2015-03-06 11:57:51.903' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4487, 4721, 2, CAST(N'2015-03-06 11:57:51.943' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4488, 4721, 3, CAST(N'2015-03-06 11:57:51.977' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4489, 4722, 2, CAST(N'2015-03-06 11:57:52.047' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4490, 4723, 2, CAST(N'2015-03-06 11:57:52.117' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4491, 4724, 2, CAST(N'2015-03-06 11:57:52.200' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4492, 4725, 1, CAST(N'2015-03-06 11:57:52.310' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4493, 4725, 2, CAST(N'2015-03-06 11:57:52.347' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4494, 4725, 3, CAST(N'2015-03-06 11:57:52.387' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4495, 4726, 2, CAST(N'2015-03-06 11:57:52.460' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4496, 4727, 2, CAST(N'2015-03-06 11:57:52.537' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4497, 4728, 2, CAST(N'2015-03-06 11:57:52.610' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4498, 4729, 1, CAST(N'2015-03-06 11:57:52.727' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4499, 4729, 2, CAST(N'2015-03-06 11:57:52.763' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4500, 4729, 3, CAST(N'2015-03-06 11:57:52.800' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4501, 4730, 2, CAST(N'2015-03-06 11:57:52.880' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4502, 4731, 2, CAST(N'2015-03-06 11:57:52.957' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4503, 4732, 2, CAST(N'2015-03-06 11:57:53.033' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4504, 4733, 1, CAST(N'2015-03-06 11:57:53.150' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4505, 4733, 2, CAST(N'2015-03-06 11:57:53.193' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4506, 4733, 3, CAST(N'2015-03-06 11:57:53.240' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4507, 4734, 2, CAST(N'2015-03-06 11:57:53.323' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4508, 4735, 2, CAST(N'2015-03-06 11:57:53.400' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4509, 4736, 2, CAST(N'2015-03-06 11:57:53.477' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4510, 4737, 1, CAST(N'2015-03-06 11:57:53.603' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4511, 4737, 2, CAST(N'2015-03-06 11:57:53.643' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4512, 4737, 3, CAST(N'2015-03-06 11:57:53.677' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4513, 4738, 2, CAST(N'2015-03-06 11:57:53.780' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4514, 4739, 2, CAST(N'2015-03-06 11:57:53.920' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4515, 4740, 2, CAST(N'2015-03-06 11:57:54.063' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4516, 4741, 1, CAST(N'2015-03-06 11:57:54.237' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4517, 4741, 2, CAST(N'2015-03-06 11:57:54.277' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4518, 4741, 3, CAST(N'2015-03-06 11:57:54.320' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4519, 4742, 2, CAST(N'2015-03-06 11:57:54.400' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4520, 4743, 2, CAST(N'2015-03-06 11:57:54.480' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4521, 4744, 2, CAST(N'2015-03-06 11:57:54.567' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4522, 4745, 1, CAST(N'2015-03-06 11:57:54.687' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4523, 4745, 2, CAST(N'2015-03-06 11:57:54.723' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4524, 4745, 3, CAST(N'2015-03-06 11:57:54.767' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4525, 4746, 2, CAST(N'2015-03-06 11:57:54.850' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4526, 4747, 2, CAST(N'2015-03-06 11:57:54.933' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4527, 4748, 2, CAST(N'2015-03-06 11:57:55.013' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4531, 4750, 2, CAST(N'2015-03-06 11:57:55.320' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4532, 4751, 2, CAST(N'2015-03-06 11:57:55.400' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4533, 4752, 2, CAST(N'2015-03-06 11:57:55.517' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4537, 4754, 2, CAST(N'2015-03-06 11:57:55.843' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4538, 4755, 2, CAST(N'2015-03-06 11:57:55.933' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4539, 4756, 2, CAST(N'2015-03-06 11:57:56.020' AS DateTime))
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4540, 4753, 1, NULL)
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4541, 4753, 2, NULL)
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (4542, 4753, 3, NULL)
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (5514, 4749, 1, NULL)
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (5515, 4749, 2, NULL)
INSERT [dbo].[FlatPLC] ([FlatPLCID], [FlatID], [PLCID], [CrDate]) VALUES (5516, 4749, 3, NULL)
SET IDENTITY_INSERT [dbo].[FlatPLC] OFF
SET IDENTITY_INSERT [dbo].[FlatType] ON 

INSERT [dbo].[FlatType] ([FlatTypeID], [FType], [FullName], [Size], [IsFurnished], [CrDate], [CrBy]) VALUES (1, N'1BHK', N'one bhk', NULL, 0, NULL, NULL)
INSERT [dbo].[FlatType] ([FlatTypeID], [FType], [FullName], [Size], [IsFurnished], [CrDate], [CrBy]) VALUES (2, N'2BHK', N'2 bhk', NULL, 0, NULL, NULL)
INSERT [dbo].[FlatType] ([FlatTypeID], [FType], [FullName], [Size], [IsFurnished], [CrDate], [CrBy]) VALUES (3, N'3BHK', N'3 badroom and hall', NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[FlatType] OFF
SET IDENTITY_INSERT [dbo].[FlatTypeSize] ON 

INSERT [dbo].[FlatTypeSize] ([FlatTypeSizeID], [FlatTypeID], [Size], [Unit], [CrDate]) VALUES (1, 1, CAST(343.00 AS Decimal(19, 2)), NULL, NULL)
INSERT [dbo].[FlatTypeSize] ([FlatTypeSizeID], [FlatTypeID], [Size], [Unit], [CrDate]) VALUES (2, 1, CAST(3433.00 AS Decimal(19, 2)), NULL, NULL)
INSERT [dbo].[FlatTypeSize] ([FlatTypeSizeID], [FlatTypeID], [Size], [Unit], [CrDate]) VALUES (3, 2, CAST(43453.00 AS Decimal(19, 2)), NULL, NULL)
INSERT [dbo].[FlatTypeSize] ([FlatTypeSizeID], [FlatTypeID], [Size], [Unit], [CrDate]) VALUES (4, 3, CAST(3000.00 AS Decimal(19, 2)), NULL, NULL)
INSERT [dbo].[FlatTypeSize] ([FlatTypeSizeID], [FlatTypeID], [Size], [Unit], [CrDate]) VALUES (5, 3, CAST(5000.00 AS Decimal(19, 2)), NULL, NULL)
INSERT [dbo].[FlatTypeSize] ([FlatTypeSizeID], [FlatTypeID], [Size], [Unit], [CrDate]) VALUES (6, 2, CAST(343.00 AS Decimal(19, 2)), NULL, NULL)
INSERT [dbo].[FlatTypeSize] ([FlatTypeSizeID], [FlatTypeID], [Size], [Unit], [CrDate]) VALUES (7, 3, CAST(343.34 AS Decimal(19, 2)), NULL, NULL)
INSERT [dbo].[FlatTypeSize] ([FlatTypeSizeID], [FlatTypeID], [Size], [Unit], [CrDate]) VALUES (8, 2, CAST(343.00 AS Decimal(19, 2)), NULL, NULL)
INSERT [dbo].[FlatTypeSize] ([FlatTypeSizeID], [FlatTypeID], [Size], [Unit], [CrDate]) VALUES (9, 2, CAST(33.34 AS Decimal(19, 2)), NULL, NULL)
INSERT [dbo].[FlatTypeSize] ([FlatTypeSizeID], [FlatTypeID], [Size], [Unit], [CrDate]) VALUES (10, 2, CAST(43.00 AS Decimal(19, 2)), NULL, NULL)
SET IDENTITY_INSERT [dbo].[FlatTypeSize] OFF
SET IDENTITY_INSERT [dbo].[Floor] ON 

INSERT [dbo].[Floor] ([FloorID], [TowerID], [FloorNo], [FloorName], [CrDate], [CrBy]) VALUES (4268, 21, 1, N'1', CAST(N'2015-03-06 11:57:49.187' AS DateTime), N'admin')
INSERT [dbo].[Floor] ([FloorID], [TowerID], [FloorNo], [FloorName], [CrDate], [CrBy]) VALUES (4269, 21, 2, N'2', CAST(N'2015-03-06 11:57:49.847' AS DateTime), N'admin')
INSERT [dbo].[Floor] ([FloorID], [TowerID], [FloorNo], [FloorName], [CrDate], [CrBy]) VALUES (4270, 21, 3, N'3', CAST(N'2015-03-06 11:57:50.177' AS DateTime), N'admin')
INSERT [dbo].[Floor] ([FloorID], [TowerID], [FloorNo], [FloorName], [CrDate], [CrBy]) VALUES (4271, 21, 4, N'4', CAST(N'2015-03-06 11:57:50.660' AS DateTime), N'admin')
INSERT [dbo].[Floor] ([FloorID], [TowerID], [FloorNo], [FloorName], [CrDate], [CrBy]) VALUES (4272, 21, 5, N'5', CAST(N'2015-03-06 11:57:51.030' AS DateTime), N'admin')
INSERT [dbo].[Floor] ([FloorID], [TowerID], [FloorNo], [FloorName], [CrDate], [CrBy]) VALUES (4273, 21, 6, N'6', CAST(N'2015-03-06 11:57:51.433' AS DateTime), N'admin')
INSERT [dbo].[Floor] ([FloorID], [TowerID], [FloorNo], [FloorName], [CrDate], [CrBy]) VALUES (4274, 21, 7, N'7', CAST(N'2015-03-06 11:57:51.833' AS DateTime), N'admin')
INSERT [dbo].[Floor] ([FloorID], [TowerID], [FloorNo], [FloorName], [CrDate], [CrBy]) VALUES (4275, 21, 8, N'8', CAST(N'2015-03-06 11:57:52.240' AS DateTime), N'admin')
INSERT [dbo].[Floor] ([FloorID], [TowerID], [FloorNo], [FloorName], [CrDate], [CrBy]) VALUES (4276, 21, 9, N'9', CAST(N'2015-03-06 11:57:52.647' AS DateTime), N'admin')
INSERT [dbo].[Floor] ([FloorID], [TowerID], [FloorNo], [FloorName], [CrDate], [CrBy]) VALUES (4277, 21, 10, N'10', CAST(N'2015-03-06 11:57:53.073' AS DateTime), N'admin')
INSERT [dbo].[Floor] ([FloorID], [TowerID], [FloorNo], [FloorName], [CrDate], [CrBy]) VALUES (4278, 21, 11, N'11', CAST(N'2015-03-06 11:57:53.517' AS DateTime), N'admin')
INSERT [dbo].[Floor] ([FloorID], [TowerID], [FloorNo], [FloorName], [CrDate], [CrBy]) VALUES (4279, 21, 12, N'12', CAST(N'2015-03-06 11:57:54.110' AS DateTime), N'admin')
INSERT [dbo].[Floor] ([FloorID], [TowerID], [FloorNo], [FloorName], [CrDate], [CrBy]) VALUES (4280, 21, 13, N'13', CAST(N'2015-03-06 11:57:54.607' AS DateTime), N'admin')
INSERT [dbo].[Floor] ([FloorID], [TowerID], [FloorNo], [FloorName], [CrDate], [CrBy]) VALUES (4281, 21, 14, N'14', CAST(N'2015-03-06 11:57:55.053' AS DateTime), N'admin')
INSERT [dbo].[Floor] ([FloorID], [TowerID], [FloorNo], [FloorName], [CrDate], [CrBy]) VALUES (4282, 21, 15, N'15', CAST(N'2015-03-06 11:57:55.577' AS DateTime), N'admin')
SET IDENTITY_INSERT [dbo].[Floor] OFF
SET IDENTITY_INSERT [dbo].[Plan] ON 

INSERT [dbo].[Plan] ([PlanID], [PlanName], [CrDate], [Status]) VALUES (1, N'Plan G', NULL, 1)
INSERT [dbo].[Plan] ([PlanID], [PlanName], [CrDate], [Status]) VALUES (2, N'Plan B', NULL, 1)
INSERT [dbo].[Plan] ([PlanID], [PlanName], [CrDate], [Status]) VALUES (3, N'Plan B', NULL, 1)
INSERT [dbo].[Plan] ([PlanID], [PlanName], [CrDate], [Status]) VALUES (4, N'Plan B', NULL, 1)
INSERT [dbo].[Plan] ([PlanID], [PlanName], [CrDate], [Status]) VALUES (5, N'Plan C', NULL, 1)
INSERT [dbo].[Plan] ([PlanID], [PlanName], [CrDate], [Status]) VALUES (6, N'Plan A', NULL, NULL)
INSERT [dbo].[Plan] ([PlanID], [PlanName], [CrDate], [Status]) VALUES (7, N'Plan A', NULL, 1)
SET IDENTITY_INSERT [dbo].[Plan] OFF
SET IDENTITY_INSERT [dbo].[PlanInstallment] ON 

INSERT [dbo].[PlanInstallment] ([PlanInstallmentID], [PlanID], [Installment], [InstallmentNo], [Amount], [CrDate], [CrBy]) VALUES (1, 1, N'Booking amount', 1, 10.0000, NULL, NULL)
INSERT [dbo].[PlanInstallment] ([PlanInstallmentID], [PlanID], [Installment], [InstallmentNo], [Amount], [CrDate], [CrBy]) VALUES (2, 2, N'Booking amount3', 1, 10.1000, NULL, NULL)
INSERT [dbo].[PlanInstallment] ([PlanInstallmentID], [PlanID], [Installment], [InstallmentNo], [Amount], [CrDate], [CrBy]) VALUES (3, 1, N'1st Installment', 2, 20.2000, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PlanInstallment] OFF
SET IDENTITY_INSERT [dbo].[PlanTypeMaster] ON 

INSERT [dbo].[PlanTypeMaster] ([PlanTypeMasterID], [FlatTypeSizeID], [PlanID], [PlanName], [AmountSqFt], [CrDate]) VALUES (8, 6, 1, N'Master Plan1d', 3434.0000, NULL)
INSERT [dbo].[PlanTypeMaster] ([PlanTypeMasterID], [FlatTypeSizeID], [PlanID], [PlanName], [AmountSqFt], [CrDate]) VALUES (1002, 1, 2, N'Furnished', 1000.0000, NULL)
INSERT [dbo].[PlanTypeMaster] ([PlanTypeMasterID], [FlatTypeSizeID], [PlanID], [PlanName], [AmountSqFt], [CrDate]) VALUES (1003, 2, 2, N'Furnished', 1000.0000, NULL)
INSERT [dbo].[PlanTypeMaster] ([PlanTypeMasterID], [FlatTypeSizeID], [PlanID], [PlanName], [AmountSqFt], [CrDate]) VALUES (1004, 3, 2, N'Furnished', 1000.0000, NULL)
INSERT [dbo].[PlanTypeMaster] ([PlanTypeMasterID], [FlatTypeSizeID], [PlanID], [PlanName], [AmountSqFt], [CrDate]) VALUES (1005, 6, 2, N'Furnished', 1000.0000, NULL)
INSERT [dbo].[PlanTypeMaster] ([PlanTypeMasterID], [FlatTypeSizeID], [PlanID], [PlanName], [AmountSqFt], [CrDate]) VALUES (1006, 8, 2, N'Furnished', 1000.0000, NULL)
INSERT [dbo].[PlanTypeMaster] ([PlanTypeMasterID], [FlatTypeSizeID], [PlanID], [PlanName], [AmountSqFt], [CrDate]) VALUES (1007, 9, 2, N'Furnished', 1000.0000, NULL)
INSERT [dbo].[PlanTypeMaster] ([PlanTypeMasterID], [FlatTypeSizeID], [PlanID], [PlanName], [AmountSqFt], [CrDate]) VALUES (1008, 10, 2, N'Furnished', 1000.0000, NULL)
INSERT [dbo].[PlanTypeMaster] ([PlanTypeMasterID], [FlatTypeSizeID], [PlanID], [PlanName], [AmountSqFt], [CrDate]) VALUES (1009, 4, 2, N'Furnished', 1000.0000, NULL)
INSERT [dbo].[PlanTypeMaster] ([PlanTypeMasterID], [FlatTypeSizeID], [PlanID], [PlanName], [AmountSqFt], [CrDate]) VALUES (1010, 5, 2, N'Furnished', 1000.0000, NULL)
INSERT [dbo].[PlanTypeMaster] ([PlanTypeMasterID], [FlatTypeSizeID], [PlanID], [PlanName], [AmountSqFt], [CrDate]) VALUES (1011, 7, 2, N'Furnished', 1000.0000, NULL)
INSERT [dbo].[PlanTypeMaster] ([PlanTypeMasterID], [FlatTypeSizeID], [PlanID], [PlanName], [AmountSqFt], [CrDate]) VALUES (1012, 1, 5, N'Furnished', 1000.0000, NULL)
INSERT [dbo].[PlanTypeMaster] ([PlanTypeMasterID], [FlatTypeSizeID], [PlanID], [PlanName], [AmountSqFt], [CrDate]) VALUES (1013, 2, 5, N'Furnished', 1000.0000, NULL)
SET IDENTITY_INSERT [dbo].[PlanTypeMaster] OFF
SET IDENTITY_INSERT [dbo].[PLC] ON 

INSERT [dbo].[PLC] ([PLCID], [PLCName], [AmountSqFt]) VALUES (1, N'Cornor Facing', 10.0000)
INSERT [dbo].[PLC] ([PLCID], [PLCName], [AmountSqFt]) VALUES (2, N'Chandigarh Road', 10.0000)
INSERT [dbo].[PLC] ([PLCID], [PLCName], [AmountSqFt]) VALUES (3, N'Gargen Facing', 20.0000)
INSERT [dbo].[PLC] ([PLCID], [PLCName], [AmountSqFt]) VALUES (1002, N'New PLC', 10.0000)
INSERT [dbo].[PLC] ([PLCID], [PLCName], [AmountSqFt]) VALUES (2002, N'PLCNew2', 39393.0000)
INSERT [dbo].[PLC] ([PLCID], [PLCName], [AmountSqFt]) VALUES (2003, N'PLC3', 343.0000)
SET IDENTITY_INSERT [dbo].[PLC] OFF
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([ProjectID], [CrDate], [CrBy], [PName], [CompanyName], [Location], [Address], [ReceiptPrefix], [RecordStatus], [OfficeAddress], [District], [Village], [Tehsil], [Jurisdiction], [PossessionDate], [ReceiptNo], [AuthoritySign]) VALUES (1, CAST(N'2015-02-13 22:20:54.103' AS DateTime), N'admin', N'New Credo property', N'company name', N'Location of property', N'Property full address', N'SBP', 0, N'office full address which is registered.', NULL, NULL, NULL, N'judge', CAST(N'2015-02-13 00:00:00.000' AS DateTime), N'0', N'Auth Admin')
INSERT [dbo].[Project] ([ProjectID], [CrDate], [CrBy], [PName], [CompanyName], [Location], [Address], [ReceiptPrefix], [RecordStatus], [OfficeAddress], [District], [Village], [Tehsil], [Jurisdiction], [PossessionDate], [ReceiptNo], [AuthoritySign]) VALUES (2, CAST(N'2015-02-22 16:57:00.097' AS DateTime), N'admin', N'propetyname', N'company comax', N'delhi', N'full address', N'Credo2', 0, N'gurgaon sc 15', NULL, NULL, NULL, N'juridiction', CAST(N'2015-02-22 00:00:00.000' AS DateTime), N'0', N'admin')
SET IDENTITY_INSERT [dbo].[Project] OFF
SET IDENTITY_INSERT [dbo].[ProjectType] ON 

INSERT [dbo].[ProjectType] ([ProjectTypeID], [ProjectID], [CrDate], [CrBy], [TypeName]) VALUES (1, 1, CAST(N'2015-02-13 23:49:51.417' AS DateTime), N'admin', N'Flats')
INSERT [dbo].[ProjectType] ([ProjectTypeID], [ProjectID], [CrDate], [CrBy], [TypeName]) VALUES (2, 1, CAST(N'2015-02-13 23:51:41.823' AS DateTime), N'admin', N'PantaHouse')
INSERT [dbo].[ProjectType] ([ProjectTypeID], [ProjectID], [CrDate], [CrBy], [TypeName]) VALUES (3, 1, CAST(N'2015-02-13 23:52:11.900' AS DateTime), N'admin', N'panto house')
INSERT [dbo].[ProjectType] ([ProjectTypeID], [ProjectID], [CrDate], [CrBy], [TypeName]) VALUES (4, 1, CAST(N'2015-02-13 23:54:04.760' AS DateTime), N'admin', N'Balglow')
INSERT [dbo].[ProjectType] ([ProjectTypeID], [ProjectID], [CrDate], [CrBy], [TypeName]) VALUES (5, 2, CAST(N'2015-02-22 16:58:05.427' AS DateTime), N'admin', N'Flat')
INSERT [dbo].[ProjectType] ([ProjectTypeID], [ProjectID], [CrDate], [CrBy], [TypeName]) VALUES (6, 2, CAST(N'2015-02-22 16:58:20.573' AS DateTime), N'admin', N'Plot')
SET IDENTITY_INSERT [dbo].[ProjectType] OFF
SET IDENTITY_INSERT [dbo].[Tower] ON 

INSERT [dbo].[Tower] ([TowerID], [ProjectID], [ProjectTypeID], [TowerName], [TowerNo], [Block], [Security], [PlayArea], [PowerBackup], [SwimmingPool], [Gym], [Garden], [Library], [CommunityHall], [ClubHourse], [JoggingTrack], [Lift], [Internet], [InternalRoad], [CrDate], [CrBy]) VALUES (21, 1, 1, N'Tower1', N'Tower1', N'Block-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2015-03-06 11:57:06.830' AS DateTime), N'admin')
SET IDENTITY_INSERT [dbo].[Tower] OFF
/****** Object:  Index [PK_ERROR]    Script Date: 20-Mar-15 11:38:28 AM ******/
ALTER TABLE [dbo].[Error] ADD  CONSTRAINT [PK_ERROR] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF_AgreementID_Crdate]  DEFAULT (getdate()) FOR [CrDate]
GO
ALTER TABLE [dbo].[AssuredReturn] ADD  CONSTRAINT [DF_AssuredReturnID_Amount]  DEFAULT ((0)) FOR [Amount]
GO
ALTER TABLE [dbo].[AssuredReturn] ADD  CONSTRAINT [DF_AssuredReturnID_Crdate]  DEFAULT (getdate()) FOR [CrDate]
GO
ALTER TABLE [dbo].[AssuredReturnPayment] ADD  CONSTRAINT [DF_AssuredReturnPayment_CrDate]  DEFAULT (getdate()) FOR [CrDate]
GO
ALTER TABLE [dbo].[AssuredReturnPayment] ADD  DEFAULT ((0)) FOR [ClearanceCharge]
GO
ALTER TABLE [dbo].[AssuredReturnPayment] ADD  DEFAULT ((0)) FOR [IsBounce]
GO
ALTER TABLE [dbo].[BrokerMaster] ADD  CONSTRAINT [DF_tblBroker_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[BrokerMaster] ADD  CONSTRAINT [DF_tblBroker_ModifyDate]  DEFAULT (getdate()) FOR [ModifyDate]
GO
ALTER TABLE [dbo].[BrokerMaster] ADD  CONSTRAINT [DF_tblBroker_RecordStatus]  DEFAULT ((0)) FOR [RecordStatus]
GO
ALTER TABLE [dbo].[BrokerPayment] ADD  CONSTRAINT [DF_tblBrokerPaymentDetail_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[BrokerPayment] ADD  CONSTRAINT [DF_tblBrokerPaymentDetail_ModifyDate]  DEFAULT (getdate()) FOR [ModifyDate]
GO
ALTER TABLE [dbo].[BrokerPayment] ADD  CONSTRAINT [DF_tblBrokerPaymentDetail_RecordStatus]  DEFAULT ((0)) FOR [RecordStatus]
GO
ALTER TABLE [dbo].[BrokerToProperty] ADD  CONSTRAINT [DF_tblBrokerAmountDetail_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
ALTER TABLE [dbo].[BrokerToProperty] ADD  CONSTRAINT [DF_tblBrokerAmountDetail_ModifyDate]  DEFAULT (getdate()) FOR [ModifyDate]
GO
ALTER TABLE [dbo].[BrokerToProperty] ADD  CONSTRAINT [DF_tblBrokerAmountDetail_RecordStatus]  DEFAULT ((0)) FOR [RecordStatus]
GO
ALTER TABLE [dbo].[BrokerToProperty] ADD  CONSTRAINT [DF_tblBrokerAmountDetail_ApproveStatus]  DEFAULT ((0)) FOR [ApproveStatus]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_AppTitle]  DEFAULT ('') FOR [AppTitle]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_FName]  DEFAULT ('') FOR [FName]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_MName]  DEFAULT ('') FOR [MName]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_LName]  DEFAULT ('') FOR [LName]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_Title]  DEFAULT ('') FOR [Title]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_PName]  DEFAULT ('') FOR [PName]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_Address1]  DEFAULT ('') FOR [Address1]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_Address2]  DEFAULT ('') FOR [Address2]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_City]  DEFAULT ('') FOR [City]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_State]  DEFAULT ('') FOR [State]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_Country]  DEFAULT ('') FOR [Country]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CoAppTitle]  DEFAULT ('') FOR [CoAppTitle]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CoFName]  DEFAULT ('') FOR [CoFName]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CoMName]  DEFAULT ('') FOR [CoMName]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CoLName]  DEFAULT ('') FOR [CoLName]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CoAddress1]  DEFAULT ('') FOR [CoAddress1]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CoAddress2]  DEFAULT ('') FOR [CoAddress2]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CoCity]  DEFAULT ('') FOR [CoCity]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CoState]  DEFAULT ('') FOR [CoState]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CoCountry]  DEFAULT ('') FOR [CoCountry]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_PinCode]  DEFAULT ('') FOR [PinCode]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CoPinCode]  DEFAULT ('') FOR [CoPinCode]
GO
ALTER TABLE [dbo].[EventMaster] ADD  CONSTRAINT [DF_tblEventMaster_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[EventMaster] ADD  CONSTRAINT [DF_tblEventMaster_RecordStatus]  DEFAULT ((0)) FOR [RecordStatus]
GO
ALTER TABLE [dbo].[FlatInstallmentDetail] ADD  CONSTRAINT [DF_tblSInstallmentDetail_RecordStatus]  DEFAULT ((0)) FOR [RecordStatus]
GO
ALTER TABLE [dbo].[FlatInstallmentDetail] ADD  CONSTRAINT [DF__tblSInsta__Event__31D75E8D]  DEFAULT ((0)) FOR [EventID]
GO
ALTER TABLE [dbo].[FlatInstallmentDetail] ADD  CONSTRAINT [DF_tblSInstallmentDetail_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[LatePayment] ADD  CONSTRAINT [DF_LatePaymentID_Crdate]  DEFAULT (getdate()) FOR [CrDate]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_tblSPayment_RecordStatus]  DEFAULT ((0)) FOR [RecordStatus]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_tblsPayment_CrDate]  DEFAULT (getdate()) FOR [CrDate]
GO
ALTER TABLE [dbo].[Payment] ADD  DEFAULT ((0)) FOR [ClearanceCharge]
GO
ALTER TABLE [dbo].[Payment] ADD  DEFAULT ((0)) FOR [IsBounce]
GO
ALTER TABLE [dbo].[PaymentOther] ADD  CONSTRAINT [DF_tblSPaymentOther_RecordStatus]  DEFAULT ((0)) FOR [RecordStatus]
GO
ALTER TABLE [dbo].[PaymentOther] ADD  CONSTRAINT [DF_tblsPaymentOther_CrDate]  DEFAULT (getdate()) FOR [CrDate]
GO
ALTER TABLE [dbo].[PaymentOther] ADD  DEFAULT ((0)) FOR [ClearanceCharge]
GO
ALTER TABLE [dbo].[PaymentOther] ADD  DEFAULT ((0)) FOR [IsBounce]
GO
ALTER TABLE [dbo].[PaymentRecord] ADD  CONSTRAINT [DF_tblsPaymentRecord_PayDate]  DEFAULT (getdate()) FOR [PayDate]
GO
ALTER TABLE [dbo].[PaymentRefund] ADD  CONSTRAINT [DF_tblSRefund_RecordStatus]  DEFAULT ((0)) FOR [ChequeNo]
GO
ALTER TABLE [dbo].[PaymentRefund] ADD  CONSTRAINT [DF_tblSRefund_RecordStatus_1]  DEFAULT ((0)) FOR [RecordStatus]
GO
ALTER TABLE [dbo].[PayServiceTax] ADD  CONSTRAINT [DF_tblPayServiceTax_RecordStatus]  DEFAULT ((0)) FOR [RecordStatus]
GO
ALTER TABLE [dbo].[PropertyTransfer] ADD  CONSTRAINT [DF_PropertyTransferID_Crdate]  DEFAULT (getdate()) FOR [TransferDate]
GO
ALTER TABLE [dbo].[SaleFlat] ADD  CONSTRAINT [DF_tblSSaleFlat_SaleRate]  DEFAULT ((0)) FOR [SaleRate]
GO
ALTER TABLE [dbo].[SaleFlat] ADD  CONSTRAINT [DF_tblSSaleFlat_ServiceTaxAmount]  DEFAULT ((0)) FOR [ServiceTaxAmount]
GO
ALTER TABLE [dbo].[SaleFlat] ADD  CONSTRAINT [DF_tblSSaleFlat_TotalAmount]  DEFAULT ((0)) FOR [TotalAmount]
GO
ALTER TABLE [dbo].[ServiceTax] ADD  CONSTRAINT [DF_tblSServiceTax_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[ServiceTax] ADD  CONSTRAINT [DF_tblSServiceTax_ModifyDate]  DEFAULT (getdate()) FOR [ModifyDate]
GO
ALTER TABLE [dbo].[UploadAgreement] ADD  CONSTRAINT [DF_tblUploadAgreement_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
ALTER TABLE [dbo].[UploadAgreement] ADD  CONSTRAINT [DF_tblUploadAgreement_ModifyDate]  DEFAULT (getdate()) FOR [ModifyDate]
GO
ALTER TABLE [dbo].[UploadAgreement] ADD  CONSTRAINT [DF_tblUploadAgreement_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Agreement]  WITH CHECK ADD  CONSTRAINT [FK_Agreement_SaleFlat] FOREIGN KEY([SaleID])
REFERENCES [dbo].[SaleFlat] ([SaleID])
GO
ALTER TABLE [dbo].[Agreement] CHECK CONSTRAINT [FK_Agreement_SaleFlat]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_SaleFlat] FOREIGN KEY([SaleID])
REFERENCES [dbo].[SaleFlat] ([SaleID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_SaleFlat]
GO
ALTER TABLE [dbo].[Flat]  WITH CHECK ADD  CONSTRAINT [FK_Flat_Floor] FOREIGN KEY([FloorID])
REFERENCES [dbo].[Floor] ([FloorID])
GO
ALTER TABLE [dbo].[Flat] CHECK CONSTRAINT [FK_Flat_Floor]
GO
ALTER TABLE [dbo].[FlatCharge]  WITH CHECK ADD  CONSTRAINT [FK_FlatCharge_AdditionalCharge] FOREIGN KEY([AdditionalChargeID])
REFERENCES [dbo].[AdditionalCharge] ([AdditionalChargeID])
GO
ALTER TABLE [dbo].[FlatCharge] CHECK CONSTRAINT [FK_FlatCharge_AdditionalCharge]
GO
ALTER TABLE [dbo].[FlatCharge]  WITH CHECK ADD  CONSTRAINT [FK_FlatCharge_Flat] FOREIGN KEY([FlatID])
REFERENCES [dbo].[Flat] ([FlatID])
GO
ALTER TABLE [dbo].[FlatCharge] CHECK CONSTRAINT [FK_FlatCharge_Flat]
GO
ALTER TABLE [dbo].[FlatInstallmentDetail]  WITH CHECK ADD  CONSTRAINT [FK_FlatInstallmentDetail_EventMaster] FOREIGN KEY([EventID])
REFERENCES [dbo].[EventMaster] ([EventID])
GO
ALTER TABLE [dbo].[FlatInstallmentDetail] CHECK CONSTRAINT [FK_FlatInstallmentDetail_EventMaster]
GO
ALTER TABLE [dbo].[FlatInstallmentDetail]  WITH CHECK ADD  CONSTRAINT [FK_FlatInstallmentDetail_SaleFlat] FOREIGN KEY([SaleID])
REFERENCES [dbo].[SaleFlat] ([SaleID])
GO
ALTER TABLE [dbo].[FlatInstallmentDetail] CHECK CONSTRAINT [FK_FlatInstallmentDetail_SaleFlat]
GO
ALTER TABLE [dbo].[FlatPLC]  WITH CHECK ADD  CONSTRAINT [FK_FlatPLC_Flat] FOREIGN KEY([FlatID])
REFERENCES [dbo].[Flat] ([FlatID])
GO
ALTER TABLE [dbo].[FlatPLC] CHECK CONSTRAINT [FK_FlatPLC_Flat]
GO
ALTER TABLE [dbo].[FlatPLC]  WITH CHECK ADD  CONSTRAINT [FK_FlatPLC_PLC] FOREIGN KEY([PLCID])
REFERENCES [dbo].[PLC] ([PLCID])
GO
ALTER TABLE [dbo].[FlatPLC] CHECK CONSTRAINT [FK_FlatPLC_PLC]
GO
ALTER TABLE [dbo].[FlatTypeSize]  WITH CHECK ADD  CONSTRAINT [FK_FlatTypeSize_FlatType] FOREIGN KEY([FlatTypeID])
REFERENCES [dbo].[FlatType] ([FlatTypeID])
GO
ALTER TABLE [dbo].[FlatTypeSize] CHECK CONSTRAINT [FK_FlatTypeSize_FlatType]
GO
ALTER TABLE [dbo].[Floor]  WITH CHECK ADD  CONSTRAINT [FK_Floor_Tower] FOREIGN KEY([TowerID])
REFERENCES [dbo].[Tower] ([TowerID])
GO
ALTER TABLE [dbo].[Floor] CHECK CONSTRAINT [FK_Floor_Tower]
GO
ALTER TABLE [dbo].[LatePayment]  WITH CHECK ADD  CONSTRAINT [FK_LatePayment_SaleFlat] FOREIGN KEY([SaleID])
REFERENCES [dbo].[SaleFlat] ([SaleID])
GO
ALTER TABLE [dbo].[LatePayment] CHECK CONSTRAINT [FK_LatePayment_SaleFlat]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_SaleFlat] FOREIGN KEY([SaleID])
REFERENCES [dbo].[SaleFlat] ([SaleID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_SaleFlat]
GO
ALTER TABLE [dbo].[PaymentCancel]  WITH CHECK ADD  CONSTRAINT [FK_PaymentCancel_SaleFlat] FOREIGN KEY([SaleID])
REFERENCES [dbo].[SaleFlat] ([SaleID])
GO
ALTER TABLE [dbo].[PaymentCancel] CHECK CONSTRAINT [FK_PaymentCancel_SaleFlat]
GO
ALTER TABLE [dbo].[PaymentOther]  WITH CHECK ADD  CONSTRAINT [FK_PaymentOther_SaleFlat] FOREIGN KEY([SaleID])
REFERENCES [dbo].[SaleFlat] ([SaleID])
GO
ALTER TABLE [dbo].[PaymentOther] CHECK CONSTRAINT [FK_PaymentOther_SaleFlat]
GO
ALTER TABLE [dbo].[PaymentOtherCancel]  WITH CHECK ADD  CONSTRAINT [FK_PaymentOtherCancel_SaleFlat] FOREIGN KEY([SaleID])
REFERENCES [dbo].[SaleFlat] ([SaleID])
GO
ALTER TABLE [dbo].[PaymentOtherCancel] CHECK CONSTRAINT [FK_PaymentOtherCancel_SaleFlat]
GO
ALTER TABLE [dbo].[PaymentRecord]  WITH CHECK ADD  CONSTRAINT [FK_PaymentRecord_SaleFlat] FOREIGN KEY([SaleID])
REFERENCES [dbo].[SaleFlat] ([SaleID])
GO
ALTER TABLE [dbo].[PaymentRecord] CHECK CONSTRAINT [FK_PaymentRecord_SaleFlat]
GO
ALTER TABLE [dbo].[PaymentRefund]  WITH CHECK ADD  CONSTRAINT [FK_PaymentRefund_SaleFlat] FOREIGN KEY([SaleID])
REFERENCES [dbo].[SaleFlat] ([SaleID])
GO
ALTER TABLE [dbo].[PaymentRefund] CHECK CONSTRAINT [FK_PaymentRefund_SaleFlat]
GO
ALTER TABLE [dbo].[PayServiceTax]  WITH CHECK ADD  CONSTRAINT [FK_PayServiceTax_SaleFlat] FOREIGN KEY([SaleID])
REFERENCES [dbo].[SaleFlat] ([SaleID])
GO
ALTER TABLE [dbo].[PayServiceTax] CHECK CONSTRAINT [FK_PayServiceTax_SaleFlat]
GO
ALTER TABLE [dbo].[PlanInstallment]  WITH CHECK ADD  CONSTRAINT [FK_PlanInstallment_Plan] FOREIGN KEY([PlanID])
REFERENCES [dbo].[Plan] ([PlanID])
GO
ALTER TABLE [dbo].[PlanInstallment] CHECK CONSTRAINT [FK_PlanInstallment_Plan]
GO
ALTER TABLE [dbo].[PlanTypeMaster]  WITH CHECK ADD  CONSTRAINT [FK_PlanTypeMaster_FlatTypeSize] FOREIGN KEY([FlatTypeSizeID])
REFERENCES [dbo].[FlatTypeSize] ([FlatTypeSizeID])
GO
ALTER TABLE [dbo].[PlanTypeMaster] CHECK CONSTRAINT [FK_PlanTypeMaster_FlatTypeSize]
GO
ALTER TABLE [dbo].[PlanTypeMaster]  WITH CHECK ADD  CONSTRAINT [FK_PlanTypeMaster_Plan] FOREIGN KEY([PlanID])
REFERENCES [dbo].[Plan] ([PlanID])
GO
ALTER TABLE [dbo].[PlanTypeMaster] CHECK CONSTRAINT [FK_PlanTypeMaster_Plan]
GO
ALTER TABLE [dbo].[ProjectType]  WITH CHECK ADD  CONSTRAINT [FK_ProjectType_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Project] ([ProjectID])
GO
ALTER TABLE [dbo].[ProjectType] CHECK CONSTRAINT [FK_ProjectType_Project]
GO
ALTER TABLE [dbo].[PropertyRemark]  WITH CHECK ADD  CONSTRAINT [FK_PropertyRemark_SaleFlat] FOREIGN KEY([SaleID])
REFERENCES [dbo].[SaleFlat] ([SaleID])
GO
ALTER TABLE [dbo].[PropertyRemark] CHECK CONSTRAINT [FK_PropertyRemark_SaleFlat]
GO
ALTER TABLE [dbo].[PropertyTransfer]  WITH CHECK ADD  CONSTRAINT [FK_PropertyTransfer_SaleFlat] FOREIGN KEY([SaleID])
REFERENCES [dbo].[SaleFlat] ([SaleID])
GO
ALTER TABLE [dbo].[PropertyTransfer] CHECK CONSTRAINT [FK_PropertyTransfer_SaleFlat]
GO
ALTER TABLE [dbo].[RefundProperty]  WITH CHECK ADD  CONSTRAINT [FK_RefundProperty_SaleFlat] FOREIGN KEY([SaleID])
REFERENCES [dbo].[SaleFlat] ([SaleID])
GO
ALTER TABLE [dbo].[RefundProperty] CHECK CONSTRAINT [FK_RefundProperty_SaleFlat]
GO
ALTER TABLE [dbo].[ReminderLetter]  WITH CHECK ADD  CONSTRAINT [FK_ReminderLetter_SaleFlat] FOREIGN KEY([SaleID])
REFERENCES [dbo].[SaleFlat] ([SaleID])
GO
ALTER TABLE [dbo].[ReminderLetter] CHECK CONSTRAINT [FK_ReminderLetter_SaleFlat]
GO
ALTER TABLE [dbo].[SaleFlat]  WITH CHECK ADD  CONSTRAINT [FK_SaleFlat_Flat] FOREIGN KEY([FlatID])
REFERENCES [dbo].[Flat] ([FlatID])
GO
ALTER TABLE [dbo].[SaleFlat] CHECK CONSTRAINT [FK_SaleFlat_Flat]
GO
ALTER TABLE [dbo].[Tower]  WITH CHECK ADD  CONSTRAINT [FK_Tower_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Project] ([ProjectID])
GO
ALTER TABLE [dbo].[Tower] CHECK CONSTRAINT [FK_Tower_Project]
GO
ALTER TABLE [dbo].[Tower]  WITH CHECK ADD  CONSTRAINT [FK_Tower_Project1] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Project] ([ProjectID])
GO
ALTER TABLE [dbo].[Tower] CHECK CONSTRAINT [FK_Tower_Project1]
GO
ALTER TABLE [dbo].[UploadAgreement]  WITH CHECK ADD  CONSTRAINT [FK_UploadAgreement_SaleFlat] FOREIGN KEY([SaleID])
REFERENCES [dbo].[SaleFlat] ([SaleID])
GO
ALTER TABLE [dbo].[UploadAgreement] CHECK CONSTRAINT [FK_UploadAgreement_SaleFlat]
GO
ALTER TABLE [dbo].[UserProperty]  WITH CHECK ADD  CONSTRAINT [FK_UserProperty_UserProperty] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Project] ([ProjectID])
GO
ALTER TABLE [dbo].[UserProperty] CHECK CONSTRAINT [FK_UserProperty_UserProperty]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 20-Mar-15 11:38:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     

GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        

GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 20-Mar-15 11:38:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Free,OneTime,SqFt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdditionalCharge', @level2type=N'COLUMN',@level2name=N'Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'credit/debit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PaymentRecord', @level2type=N'COLUMN',@level2name=N'PayType'
GO
