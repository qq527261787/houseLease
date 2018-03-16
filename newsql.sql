create database [dbname] 
on  primary
(
    name='dbname_data',
    filename='D:\DB\dbname_data.mdf'

)
log on
(

    name='dbname_log',
    filename='D:\DB\dbname_log.ldf'
)
GO
USE [dbname]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[City]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[City](
	[CityName] [nvarchar](10) NOT NULL,
	[CityNo] [nvarchar](10) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Comment](
	[CommentID] [char](32) NOT NULL,
	[Content] [text] NULL,
	[EmpID] [char](32) NULL,
	[RegDate] [datetime] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Comment_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Comment_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Complain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Complain](
	[ComplainID] [char](32) NOT NULL,
	[CustType] [varchar](20) NULL,
	[CustName] [varchar](20) NULL,
	[CustTel] [varchar](50) NULL,
	[CustMobile] [varchar](50) NULL,
	[CustAdd] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[TrustNo] [varchar](50) NULL,
	[TrustDate] [datetime] NULL,
	[ContractNo] [varchar](50) NULL,
	[ContractDate] [datetime] NULL,
	[ComplainType] [varchar](20) NULL,
	[ComplainMode] [varchar](20) NULL,
	[ComplainDate] [datetime] NULL,
	[Status] [varchar](10) NULL,
	[Title] [varchar](100) NULL,
	[Content] [text] NULL,
	[EmpID] [char](32) NULL,
	[EmpID1] [char](32) NULL,
	[EmpID2] [char](32) NULL,
	[Process1] [varchar](255) NULL,
	[Process2] [varchar](255) NULL,
	[Process3] [varchar](255) NULL,
	[Process4] [varchar](255) NULL,
	[Improve] [varchar](255) NULL,
	[Date1] [datetime] NULL,
	[Date2] [datetime] NULL,
	[Date3] [datetime] NULL,
	[Date4] [datetime] NULL,
	[RegPerson] [varchar](20) NULL,
	[RegDate] [datetime] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Complain_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Complain_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contract]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Contract](
	[ContractID] [char](32) NOT NULL,
	[PropertyID] [char](32) NOT NULL,
	[DeptID] [char](32) NULL,
	[EmpID] [char](32) NULL,
	[Trade] [nvarchar](10) NULL,
	[ContractNo] [nvarchar](50) NULL,
	[CustName] [nvarchar](50) NULL,
	[CustTel] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[ContractDate] [datetime] NULL,
	[Content] [ntext] NULL,
	[FeeProperty] [float] NULL,
	[FeeCustomer] [float] NULL,
	[FeeTotal] [float] NULL,
	[FeePropertyAct] [float] NULL,
	[FeeCustomerAct] [float] NULL,
	[FeeTotalAct] [float] NULL,
	[AuditDate] [datetime] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Contract_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Contract_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[BuyIn] [float] NULL,
	[SellOut] [float] NULL,
	[PriceDiff] [float] NULL,
	[PropertyNo] [varchar](20) NULL,
	[TrustNo] [varchar](20) NULL,
	[Address] [varchar](100) NULL,
	[Square] [float] NULL,
	[PriceUnit] [float] NULL,
	[Usage] [varchar](20) NULL,
	[CertificateNo] [varchar](50) NULL,
	[ContractType] [varchar](20) NULL,
	[Status] [varchar](20) NULL,
	[OwnerName] [varchar](50) NULL,
	[OwnerTel] [varchar](50) NULL,
	[OwnerMobile] [varchar](50) NULL,
	[OwnerAdd] [varchar](100) NULL,
	[OwnerCard] [varchar](50) NULL,
	[OwnerZip] [varchar](20) NULL,
	[CustMobile] [varchar](50) NULL,
	[CustAdd] [varchar](100) NULL,
	[CustCard] [varchar](50) NULL,
	[CustZip] [varchar](20) NULL,
	[TypeID] [char](32) NULL,
	[OwnerCountry] [varchar](20) NULL,
	[CustCountry] [varchar](20) NULL,
	[RegPerson] [nvarchar](20) NULL,
	[RegDate] [datetime] NULL,
	[PayMode] [varchar](20) NULL,
	[FlagLoanSelf] [bit] NULL CONSTRAINT [DF_Contract_FlagLoanSelf]  DEFAULT ((0)),
	[TranFee] [float] NULL,
	[MortBank] [varchar](30) NULL,
	[MortMoney] [float] NULL,
	[MortYears] [int] NULL CONSTRAINT [DF_Contract_MortYears]  DEFAULT ((0)),
	[MortDate] [datetime] NULL,
	[MortBankG] [varchar](30) NULL,
	[MortMoneyG] [float] NULL,
	[MortYearsG] [int] NULL CONSTRAINT [DF_Contract_MortYearsG]  DEFAULT ((0)),
	[MortDateG] [datetime] NULL,
	[EvaCompany] [varchar](30) NULL,
	[EvaMoney] [float] NULL,
	[EvaDate] [datetime] NULL,
	[AssCompany] [varchar](30) NULL,
	[AssMoney] [float] NULL,
	[AssDate] [datetime] NULL,
	[Remark] [nvarchar](200) NULL,
	[LoanDatas] [text] NULL,
	[Term] [text] NULL,
	[AllTotal] [float] NULL,
	[AllTotalAct] [float] NULL,
	[Audit] [int] NULL CONSTRAINT [DF_Contract_Audit]  DEFAULT ((0)),
	[AuditNote1] [varchar](255) NULL,
	[AuditNote2] [varchar](255) NULL,
	[BalanceDate] [datetime] NULL,
	[DeptIDF] [char](32) NULL,
	[EmpIDF] [char](32) NULL,
	[CommDate] [datetime] NULL,
	[MortCompany] [varchar](30) NULL,
	[SignCenter] [varchar](20) NULL,
	[InquiryID] [char](32) NULL,
	[InquiryNo] [varchar](20) NULL,
	[DistrictName] [varchar](20) NULL,
	[AreaName] [varchar](20) NULL,
	[AssSum] [float] NULL,
	[FeeTotalB] [float] NULL,
	[FeeTotalActB] [float] NULL,
	[FeeTotalC] [float] NULL,
	[FeeTotalActC] [float] NULL,
	[DeptIDM] [char](32) NULL,
	[EmpIDM] [char](32) NULL,
	[MortRate] [float] NULL,
	[MortComm] [float] NULL,
	[AssRate] [float] NULL,
	[AssComm] [float] NULL,
	[TranDate] [datetime] NULL,
	[CetiDate] [datetime] NULL,
	[LoanDate] [datetime] NULL,
	[FeeTotalX] [float] NULL,
	[FeeTotalActX] [float] NULL,
	[FeeTypeSheet] [nvarchar](10) NULL,
	[OwnerSource] [varchar](20) NULL,
	[CustSource] [varchar](20) NULL,
	[RegulatoryNo] [nvarchar](20) NULL,
	[OwnerName1] [varchar](50) NULL,
	[OwnerMobile1] [varchar](50) NULL,
	[OwnerCard1] [varchar](50) NULL,
	[OwnerTel1] [varchar](50) NULL,
	[OwnerAdd1] [varchar](100) NULL,
	[OwnerName2] [varchar](50) NULL,
	[OwnerMobile2] [varchar](50) NULL,
	[OwnerCard2] [varchar](50) NULL,
	[OwnerTel2] [varchar](50) NULL,
	[OwnerAdd2] [varchar](100) NULL,
	[CustName1] [varchar](50) NULL,
	[CustMobile1] [varchar](50) NULL,
	[CustCard1] [varchar](50) NULL,
	[CustTel1] [varchar](50) NULL,
	[CustAdd1] [varchar](100) NULL,
	[CustName2] [varchar](50) NULL,
	[CustMobile2] [varchar](50) NULL,
	[CustCard2] [varchar](50) NULL,
	[CustTel2] [varchar](50) NULL,
	[CustAdd2] [varchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContractAct]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ContractAct](
	[FeeID] [char](32) NOT NULL,
	[ContractID] [char](32) NULL,
	[FeeObject] [varchar](10) NULL,
	[FeeType] [nvarchar](10) NULL,
	[Money0] [float] NULL,
	[Money1] [float] NULL,
	[FeeDate] [datetime] NULL,
	[FeePerson] [nvarchar](20) NULL,
	[FeeCenter] [varchar](20) NULL,
	[CashType] [varchar](10) NULL,
	[ReceiptNo] [varchar](20) NULL,
	[BankSheetNo] [varchar](20) NULL,
	[Remark] [varchar](255) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_ContractAct_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_ContractAct_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[FeeSource] [varchar](10) NULL,
	[BankName] [varchar](20) NULL,
	[ReceiptType] [varchar](20) NULL,
	[FlagPos] [bit] NULL CONSTRAINT [DF_ContractAct_FlagPos]  DEFAULT ((0)),
	[FeePOS] [float] NULL,
	[RegPerson] [nvarchar](20) NULL,
	[RegDate] [datetime] NULL,
	[Audit] [smallint] NULL,
	[AuditPerson1] [nvarchar](20) NULL,
	[AuditPerson2] [nvarchar](20) NULL,
	[AuditPerson3] [nvarchar](20) NULL,
	[AuditDate1] [datetime] NULL,
	[AuditDate2] [datetime] NULL,
	[AuditDate3] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContractComm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ContractComm](
	[CommID] [char](32) NOT NULL,
	[ContractID] [char](32) NULL,
	[DeptID] [char](32) NULL,
	[EmpID] [char](32) NULL,
	[CommRate] [float] NULL,
	[Comment] [varchar](20) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_ContractComm_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_ContractComm_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[CommCon] [float] NULL,
	[CommAct] [float] NULL,
	[DeptIDS] [char](32) NULL,
	[EmpIDS] [char](32) NULL,
	[DeptIDZ] [char](32) NULL,
	[EmpIDZ] [char](32) NULL,
	[FeeType] [nvarchar](10) NULL,
	[PositionID] [char](32) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContractCon]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ContractCon](
	[FeeID] [char](32) NOT NULL,
	[ContractID] [char](32) NULL,
	[FeeObject] [varchar](10) NULL,
	[FeeType] [nvarchar](10) NULL,
	[Money0] [float] NULL,
	[Money1] [float] NULL,
	[FeeDate] [datetime] NULL,
	[Remark] [varchar](255) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_ContractCon_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_ContractCon_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[FeeSource] [varchar](10) NULL,
	[Audit] [smallint] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContractFollow]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ContractFollow](
	[FollowID] [char](32) NOT NULL,
	[ContractID] [char](32) NULL,
	[EmpID] [char](32) NULL,
	[FollowDate] [datetime] NULL,
	[Content] [ntext] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_ContractFollow_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_ContractFollow_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[FlagAlerted] [bit] NULL CONSTRAINT [DF_ContractFollow_FlagAlerted]  DEFAULT ((0)),
	[AlertDate] [datetime] NULL,
	[AlertInfo] [varchar](200) NULL,
	[ProcessPerson] [nvarchar](30) NULL,
	[ProcessDate] [datetime] NULL,
	[FollowType] [varchar](10) NULL,
	[DeptIDA] [char](32) NULL,
	[EmpIDA] [char](32) NULL,
	[PositionID] [char](32) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Department]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Department](
	[DeptID] [char](32) NOT NULL,
	[DeptNo] [varchar](10) NULL,
	[DeptName] [varchar](20) NULL,
	[Layer] [int] NULL CONSTRAINT [DF_Department_Layer]  DEFAULT ((0)),
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Department_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Department_FlagDeleted]  DEFAULT ((0)),
	[Header] [varchar](10) NULL,
	[ExDate] [datetime] NULL,
	[Tel] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[BrokerNo] [varchar](50) NULL,
	[DeptLimitedProperty] [text] NULL,
	[DeptLimitedInquiry] [text] NULL,
	[DeptLimitedPublic] [text] NULL,
	[DeptLimitedPrivate] [text] NULL,
	[DistrictLimitedProperty] [text] NULL,
	[DistrictLimitedInquiry] [text] NULL,
	[AreaLimitedProperty] [text] NULL,
	[AreaLimitedInquiry] [text] NULL,
	[DeptLimitedPF] [text] NULL,
	[DeptLimitedIF] [text] NULL,
	[TargetCon] [float] NULL,
	[TargetAct] [float] NULL,
	[DeptType] [varchar](10) NULL,
	[DeptID1] [char](32) NULL,
	[DeptID2] [char](32) NULL,
	[DeptID3] [char](32) NULL,
	[DeptGroup] [varchar](20) NULL,
	[FlagSale] [bit] NULL CONSTRAINT [DF_Department_FlagSale]  DEFAULT ((0)),
	[DistrictLimitedData] [text] NULL,
	[AreaLimitedData] [text] NULL,
	[Tiger] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Developer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Developer](
	[DevID] [char](32) NOT NULL,
	[DevNo] [varchar](10) NULL,
	[DevName] [varchar](100) NULL,
	[ShortName] [varchar](20) NULL,
	[Incoporator] [varchar](20) NULL,
	[Contact] [varchar](20) NULL,
	[Tel] [varchar](50) NULL,
	[Area] [nvarchar](10) NULL,
	[Address] [nvarchar](30) NULL,
	[Brief] [nvarchar](255) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Developer_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Developer_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[District]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[District](
	[CityName] [nvarchar](10) NOT NULL,
	[DistrictName] [nvarchar](10) NOT NULL,
	[DistrictNo] [nvarchar](10) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmpFollow]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmpFollow](
	[FollowID] [char](32) NOT NULL,
	[FollowType] [char](4) NULL,
	[EmpID] [char](32) NOT NULL,
	[ID0] [char](32) NOT NULL,
	[ID1] [char](32) NOT NULL,
	[FollowDate] [datetime] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_EmpFollow_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_EmpFollow_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employee](
	[EmpID] [char](32) NOT NULL,
	[EmpNo] [varchar](10) NULL,
	[EmpName] [nvarchar](10) NULL,
	[Brief] [text] NULL,
	[DeptID] [char](32) NULL,
	[Password] [varchar](100) NULL,
	[Tel] [varchar](100) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Employee_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Employee_FlagDeleted]  DEFAULT ((0)),
	[PropertyCols] [varchar](200) NULL,
	[InquiryCols] [varchar](200) NULL,
	[Status] [varchar](10) NULL,
	[RollIn] [datetime] NULL,
	[RollOut] [datetime] NULL,
	[PositionID] [char](32) NULL,
	[ExDate] [datetime] NULL,
	[Sex] [char](2) NULL,
	[Birthday] [datetime] NULL,
	[IDCard] [varchar](20) NULL,
	[Address] [varchar](50) NULL,
	[Education] [varchar](10) NULL,
	[Speciality] [varchar](20) NULL,
	[EMail] [varchar](100) NULL,
	[Remark] [text] NULL,
	[ContractCols] [varchar](200) NULL,
	[PwdDate] [datetime] NULL,
	[Signer] [char](32) NULL,
	[ACL3] [varchar](10) NULL,
	[ACL1] [varchar](300) NULL,
	[ACL2] [varchar](100) NULL,
	[ACL6] [varchar](100) NULL,
	[JoinDate] [datetime] NULL,
	[Folk] [varchar](10) NULL,
	[Native] [varchar](10) NULL,
	[Polity] [varchar](10) NULL,
	[Graduate] [varchar](40) NULL,
	[TechTitle] [varchar](30) NULL,
	[Archives] [varchar](30) NULL,
	[ACL4] [varchar](10) NULL,
	[Idio] [varchar](50) NULL,
	[AwayDate] [datetime] NULL,
	[FlagSalary] [bit] NULL CONSTRAINT [DF_Employee_FlagSalary]  DEFAULT ((0)),
	[Source] [varchar](20) NULL,
	[DeptIDS] [char](32) NULL,
	[EmpIDS] [char](32) NULL,
	[DeptIDZ] [char](32) NULL,
	[EmpIDZ] [char](32) NULL,
	[FlagRollRet] [bit] NULL CONSTRAINT [DF_Employee_FlagRollRet]  DEFAULT ((0)),
	[ArrDate] [datetime] NULL,
	[Arrange] [nvarchar](123) NULL,
	[Tiger] [float] NULL,
	[ACL3R] [varchar](10) NULL,
	[BankName] [nvarchar](20) NULL,
	[BankAcct] [varchar](50) NULL,
	[PhotoUrl] [nvarchar](500) NULL,
	[PassWordWeb] [nvarchar](100) NULL,
	[TargetD] [char](32) NULL,
	[TargetW] [char](32) NULL,
	[CellPhoneID] [varchar](100) NULL DEFAULT ('*'),
	[PersonalAuthCode] [varchar](50) NOT NULL DEFAULT ('19999999999999999999')
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Estate](
	[EstateID] [char](32) NOT NULL,
	[EstateName] [nvarchar](50) NULL,
	[CityName] [nvarchar](10) NULL,
	[DistrictName] [nvarchar](10) NULL,
	[AreaID] [char](32) NULL,
	[Spell] [varchar](20) NULL,
	[Address] [nvarchar](100) NULL,
	[PropertyUsage] [varchar](20) NULL,
	[PropertyType] [varchar](20) NULL,
	[CompleteYear] [varchar](10) NULL,
	[DevCompany] [nvarchar](50) NULL,
	[MgtCompany] [nvarchar](50) NULL,
	[Price] [smallmoney] NULL,
	[MgtPrice] [smallmoney] NULL,
	[Remark] [ntext] NULL,
	[LandNo] [nvarchar](50) NULL,
	[LandGrade] [varchar](20) NULL,
	[FrameWork] [varchar](20) NULL,
	[MgtTel] [varchar](50) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Estate_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Estate_FlagDeleted]  DEFAULT ((0)),
	[Environment] [text] NULL,
	[Transportation] [text] NULL,
	[Education] [text] NULL,
	[Business] [text] NULL,
	[Entertainment] [text] NULL,
	[ExDate] [datetime] NULL,
	[Doc1] [varchar](100) NULL,
	[Doc2] [varchar](100) NULL,
	[Doc3] [varchar](100) NULL,
	[Link1] [varchar](100) NULL,
	[Link2] [varchar](100) NULL,
	[Link3] [varchar](100) NULL,
	[Address2] [varchar](100) NULL,
	[DevTel] [varchar](50) NULL,
	[Room] [smallint] NULL,
	[Square] [float] NULL,
	[EstateNameE] [varchar](100) NULL,
	[AddressE] [varchar](200) NULL,
	[MapID] [varchar](32) NULL,
	[CoX] [int] NULL CONSTRAINT [DF_Estate_CoX]  DEFAULT ((0)),
	[CoY] [int] NULL CONSTRAINT [DF_Estate_CoY]  DEFAULT ((0)),
	[RoomRule] [int] NULL CONSTRAINT [DF_Estate_RoomRule]  DEFAULT ((0)),
	[BuildingRule] [bit] NULL CONSTRAINT [DF_Estate_BuildingRule]  DEFAULT ((0)),
	[RoomRuleEx] [varchar](10) NULL,
	[Surface] [varchar](10) NULL,
	[OwnYear] [varchar](6) NULL,
	[EstateNameA] [nvarchar](25) NULL,
	[FlagLocked] [bit] NULL CONSTRAINT [DF_Estate_FlagLocked]  DEFAULT ((0)),
	[PropertyMetro] [nvarchar](10) NULL,
	[PropertyRing] [nvarchar](10) NULL,
	[RoomNoRule] [bit] NULL CONSTRAINT [DF_Estate_RoomNoRule]  DEFAULT ((0))
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExchangeLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ExchangeLog](
	[LogID] [int] NOT NULL,
	[ExchangeDate] [datetime] NULL,
	[ExchangeType] [nvarchar](50) NULL,
	[ServerName] [nvarchar](50) NULL,
	[ErrorCount] [int] NULL,
	[Result] [ntext] NULL,
	[LocalHost] [varchar](100) NULL,
	[LocalID] [varchar](100) NULL,
	[NetNo] [varchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FAQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FAQ](
	[FaqID] [char](32) NOT NULL,
	[FaqType] [nvarchar](50) NULL,
	[Question] [nvarchar](500) NULL,
	[Solution] [ntext] NULL,
	[Reference] [nvarchar](50) NULL,
	[EmpID] [char](32) NULL,
	[RegDate] [datetime] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_FAQ_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_FAQ_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[TitleColor] [int] NULL CONSTRAINT [DF_FAQ_TitleColor]  DEFAULT ((0))
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogOwner]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LogOwner](
	[LogID] [char](32) NULL,
	[OpDate] [datetime] NULL,
	[OpContent] [nvarchar](500) NULL,
	[PropertyID] [char](32) NULL,
	[EmpID] [char](32) NULL,
	[FlagTrashed] [bit] NULL,
	[FlagDeleted] [bit] NULL,
	[Flag] [bit] NULL,
	[ModDate] [datetime] NULL,
	[OpType] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Fee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Fee](
	[FeeID] [char](32) NOT NULL,
	[FeeNo] [varchar](20) NULL,
	[FeeObject] [varchar](20) NULL,
	[Brief] [varchar](200) NULL,
	[FeeDate] [datetime] NULL,
	[FlagAudited] [bit] NULL CONSTRAINT [DF_Fee_FlagAudited]  DEFAULT ((0)),
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Fee_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Fee_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[ContractID] [char](32) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Find]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Find](
	[FindID] [char](32) NOT NULL,
	[EmpID] [char](32) NOT NULL,
	[FindType] [varchar](10) NULL,
	[FindName] [varchar](20) NULL,
	[FindCond] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Flow]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Flow](
	[FlowID] [char](32) NOT NULL,
	[FlowNo] [varchar](20) NULL,
	[FlowName] [varchar](50) NULL,
	[PlanDate] [datetime] NULL,
	[DeptID] [char](32) NULL,
	[EmpID] [char](32) NULL,
	[FinishedDate] [datetime] NULL,
	[Remark] [text] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Flow_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Flow_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[ContractID] [char](32) NULL,
	[PositionID] [char](32) NULL,
	[FlowDefID] [char](32) NULL,
	[FinishedPerson] [nvarchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FlowDef]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FlowDef](
	[FlowDefID] [char](32) NOT NULL,
	[TypeID] [char](32) NULL,
	[FlowNo] [varchar](20) NULL,
	[FlowName] [varchar](50) NULL,
	[PlanDays] [int] NULL CONSTRAINT [DF_FlowDef_PlanDays]  DEFAULT ((0)),
	[PlanDate] [datetime] NULL,
	[DeptID] [char](32) NULL,
	[EmpID] [char](32) NULL,
	[Remark] [text] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_FlowDef_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_FlowDef_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[PositionID] [char](32) NULL,
	[DateType] [smallint] NULL,
	[PreFlowID] [char](32) NULL,
	[PreDays] [int] NULL CONSTRAINT [DF_FlowDef_PreDays]  DEFAULT ((0)),
	[MsgText] [nvarchar](150) NULL,
	[FlagSMS] [bit] NULL CONSTRAINT [DF_FlowDef_FlagSMS]  DEFAULT ((0)),
	[MsgTextI] [nvarchar](150) NULL,
	[FlagSMSI] [bit] NULL CONSTRAINT [DF_FlowDef_FlagSMSI]  DEFAULT ((0)),
	[DeptIDM] [char](32) NULL,
	[EmpIDM] [char](32) NULL,
	[PositionIDM] [char](32) NULL,
	[MsgType] [smallint] NULL,
	[FlagMsg] [bit] NULL CONSTRAINT [DF_FlowDef_FlagMsg]  DEFAULT ((0)),
	[PlanType] [smallint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Mac]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Mac](
	[MacID] [char](32) NOT NULL,
	[MacAddress] [nvarchar](500) NULL,
	[ComputerName] [varchar](100) NULL,
	[IpOut] [varchar](20) NULL,
	[IpIn] [varchar](20) NULL,
	[DiskID] [varchar](100) NULL,
	[CpuID] [varchar](100) NULL,
	[DeptID] [char](32) NULL,
	[EmpID] [char](32) NULL,
	[FlagTrashed] [bit] NULL,
	[FlagDeleted] [bit] NULL,
	[ModDate] [datetime] NULL,
	[RegDate] [datetime] NULL,
	[Remark] [nvarchar](500) NULL,
	[LoginName] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[FlagGrant] [bit] NULL,
	[RTMac] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MacID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FlowType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FlowType](
	[TypeID] [char](32) NOT NULL,
	[TypeNo] [varchar](20) NULL,
	[TypeName] [varchar](50) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_FlowType_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_FlowType_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[DeptID] [char](32) NULL,
	[EmpID] [char](32) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Follow]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Follow](
	[FollowID] [char](32) NOT NULL,
	[PropertyID] [char](32) NULL,
	[EmpID] [char](32) NULL,
	[FollowDate] [datetime] NULL,
	[Content] [ntext] NULL,
	[AlertDate] [datetime] NULL,
	[AlertInfo] [nvarchar](200) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Follow_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Follow_FlagDeleted]  DEFAULT ((0)),
	[FlagAlerted] [bit] NULL CONSTRAINT [DF_Follow_FlagAlerted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[AlertType] [varchar](20) NULL,
	[ProcessPerson] [varchar](20) NULL,
	[ProcessDate] [datetime] NULL,
	[FollowType] [varchar](10) NULL,
	[InquiryID] [char](32) NULL,
	[Comment] [nvarchar](100) NULL,
	[FlagAudit] [bit] NULL CONSTRAINT [DF_Follow_FlagAudit]  DEFAULT ((0)),
	[VoiceFile] [varchar](500) NULL,
	[ItemInfo] [int] NOT NULL DEFAULT ((3))
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Follow]') AND name = N'Follow_FollowDate')
CREATE NONCLUSTERED INDEX [Follow_FollowDate] ON [dbo].[Follow] 
(
	[FollowDate] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Follow2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Follow2](
	[FollowID] [char](32) NOT NULL,
	[PropertyID] [char](32) NULL,
	[EmpID] [char](32) NULL,
	[FollowDate] [datetime] NULL,
	[Content] [ntext] NULL,
	[FollowType] [varchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guide]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Guide](
	[GuideID] [char](32) NOT NULL,
	[Ref1] [varchar](20) NULL,
	[Ref2] [varchar](20) NULL,
	[Ref3] [varchar](20) NULL,
	[Ref4] [varchar](20) NULL,
	[Price] [float] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Guide_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Guide_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NewTarget]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NewTarget](
	[TargetID] [char](32) NOT NULL,
	[DeptID] [char](32) NULL,
	[PositionID] [char](32) NULL,
	[TargetType] [varchar](50) NULL,
	[PropertyAmount] [smallint] NULL,
	[PropertyFollow] [smallint] NULL,
	[KanPropertyAmount] [smallint] NULL,
	[InquiryAmount] [smallint] NULL,
	[InquiryFollow] [smallint] NULL,
	[PropertyPhoto] [smallint] NULL,
	[Keys] [smallint] NULL,
	[Signs] [smallint] NULL,
	[DaiKan] [smallint] NULL,
	[FlagTrashed] [bit] NULL DEFAULT ((0)),
	[FlagDeleted] [bit] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[TargetID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Honest]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Honest](
	[HonestID] [char](32) NOT NULL,
	[HonestDate] [datetime] NULL,
	[HonestMoney] [float] NULL,
	[Trade] [varchar](10) NULL,
	[PropertyID] [char](32) NULL,
	[ContractID] [char](32) NULL,
	[Remark] [varchar](255) NULL,
	[DeptID] [char](32) NULL,
	[EmpID] [char](32) NULL,
	[PropertyNo] [varchar](20) NULL,
	[Address] [varchar](100) NULL,
	[PropertyUsage] [varchar](20) NULL,
	[Price] [float] NULL,
	[Status] [varchar](10) NULL,
	[SheetNo] [varchar](20) NULL,
	[CashType] [varchar](10) NULL,
	[Refund] [varchar](100) NULL,
	[OwnerName] [varchar](20) NULL,
	[OwnerMobile] [varchar](50) NULL,
	[OwnerTel] [varchar](50) NULL,
	[OwnerAdd] [varchar](50) NULL,
	[OwnerCard] [varchar](20) NULL,
	[CustName] [varchar](20) NULL,
	[CustMobile] [varchar](50) NULL,
	[CustTel] [varchar](50) NULL,
	[CustAdd] [varchar](50) NULL,
	[CustCard] [varchar](20) NULL,
	[RegDate] [datetime] NULL,
	[RegPerson] [varchar](20) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Honest_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Honest_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inquiry]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Inquiry](
	[InquiryID] [char](32) NOT NULL,
	[CustName] [nvarchar](50) NULL,
	[CustTel] [varchar](255) NULL,
	[Contact] [nvarchar](50) NULL,
	[CityName] [nvarchar](10) NULL,
	[DistrictName] [nvarchar](50) NULL,
	[AreaID] [char](32) NULL,
	[Position] [nvarchar](50) NULL,
	[Floor] [varchar](20) NULL,
	[Trade] [nvarchar](10) NULL,
	[Status] [nvarchar](10) NULL,
	[CountF] [varchar](3) NULL,
	[CountT] [char](1) NULL,
	[CountW] [char](1) NULL,
	[CountY] [char](1) NULL,
	[PropertyUsage] [varchar](20) NULL,
	[PropertyType] [varchar](20) NULL,
	[PropertyDirection] [varchar](20) NULL,
	[PropertyDecoration] [nvarchar](50) NULL,
	[PropertyCommission] [varchar](20) NULL,
	[TrustDate] [datetime] NULL,
	[DeptID] [char](32) NULL,
	[EmpID] [char](32) NULL,
	[Remark] [text] NULL,
	[RegPerson] [nvarchar](20) NULL,
	[RegDate] [datetime] NULL,
	[ModPerson] [nvarchar](20) NULL,
	[ModDate] [datetime] NULL,
	[FlagPrivate] [bit] NULL CONSTRAINT [DF_Inquiry_FlagPrivate]  DEFAULT ((0)),
	[FlagRecommand] [bit] NULL CONSTRAINT [DF_Inquiry_FlagRecommand]  DEFAULT ((0)),
	[CustTitle] [varchar](30) NULL,
	[CustAddress] [nvarchar](50) NULL,
	[SquareMin] [float] NULL,
	[SquareMax] [float] NULL,
	[PriceMin] [money] NULL,
	[PriceMax] [money] NULL,
	[LastFollowDate] [datetime] NULL,
	[CustType] [varchar](20) NULL,
	[FlagTrashed] [bit] NULL,
	[FlagDeleted] [bit] NULL,
	[InquiryNo] [varchar](20) NULL,
	[ExDate] [datetime] NULL,
	[PropertyBuy] [varchar](20) NULL,
	[CustGrade] [varchar](20) NULL,
	[InquirySource] [varchar](10) NULL,
	[PropertyFloor] [varchar](50) NULL,
	[UnitName] [varchar](10) NULL,
	[Country] [varchar](10) NULL,
	[CustMobile] [varchar](80) NULL,
	[Usage] [varchar](50) NULL,
	[CustOccupy] [varchar](10) NULL,
	[CustIntent] [varchar](10) NULL,
	[CustPeriod] [varchar](10) NULL,
	[InquiryTrust] [varchar](20) NULL,
	[DeptID1] [char](32) NULL,
	[EmpID1] [char](32) NULL,
	[CountFStart] [char](2) NULL,
	[FoorStart] [varchar](20) NULL,
	[FoorEnd] [varchar](20) NULL,
	[Sex] [char](5) NULL,
	[AgeRange] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InquiryBook]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InquiryBook](
	[InquiryID] [char](32) NOT NULL,
	[EmpID] [char](32) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InquiryFollow]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InquiryFollow](
	[FollowID] [char](32) NOT NULL,
	[InquiryID] [char](32) NULL,
	[EmpID] [char](32) NULL,
	[FollowDate] [datetime] NULL,
	[Content] [ntext] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_InquiryFollow_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_InquiryFollow_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[FlagAlerted] [bit] NULL CONSTRAINT [DF_InquiryFollow_FlagAlerted]  DEFAULT ((0)),
	[AlertDate] [datetime] NULL,
	[AlertInfo] [varchar](200) NULL,
	[AlertType] [varchar](20) NULL,
	[ProcessPerson] [varchar](20) NULL,
	[ProcessDate] [datetime] NULL,
	[FollowType] [varchar](10) NULL,
	[Comment] [nvarchar](100) NULL,
	[FlagAudit] [bit] NULL CONSTRAINT [DF_InquiryFollow_FlagAudit]  DEFAULT ((0)),
	[ItemInfo] [int] NOT NULL DEFAULT ((3)),
	[PropertyNoS] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InquiryFollow]') AND name = N'InquiryFollow_FollowDate')
CREATE NONCLUSTERED INDEX [InquiryFollow_FollowDate] ON [dbo].[InquiryFollow] 
(
	[FollowDate] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[APPVersion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[APPVersion](
	[VersionCode] [nvarchar](50) NOT NULL,
	[DeliveryTime] [nvarchar](50) NOT NULL,
	[Newest] [nchar](10) NOT NULL,
	[Remarks] [nvarchar](max) NOT NULL,
	[DownloadUrl] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_APPVersion] PRIMARY KEY CLUSTERED 
(
	[VersionCode] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InquiryFollow2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InquiryFollow2](
	[FollowID] [char](32) NOT NULL,
	[InquiryID] [char](32) NULL,
	[EmpID] [char](32) NULL,
	[FollowDate] [datetime] NULL,
	[Content] [ntext] NULL,
	[FollowType] [varchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InquirySchedule]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InquirySchedule](
	[ScheduleID] [char](32) NOT NULL,
	[InquiryID] [char](32) NULL,
	[EmpID0] [char](32) NULL,
	[EmpID1] [char](32) NULL,
	[EmpID2] [char](32) NULL,
	[Content] [varchar](200) NULL,
	[AssignDate] [datetime] NULL,
	[ScheduleDate] [datetime] NULL,
	[FlagFinished] [bit] NULL,
	[FinishDate] [datetime] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL,
	[FlagDeleted] [bit] NULL,
	[ExDate] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmpPosInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmpPosInfo](
	[UserName] [varchar](50) NOT NULL,
	[PositionInfo] [varchar](max) NOT NULL,
	[Date] [varchar](50) NOT NULL,
	[Hour] [varchar](50) NOT NULL,
	[StartTime] [varchar](50) NOT NULL,
	[InitialPos] [varchar](50) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Intro]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Intro](
	[IntroID] [char](32) NOT NULL,
	[IntroType] [varchar](10) NULL,
	[Trade] [varchar](10) NULL,
	[PropertyUsage] [varchar](10) NULL,
	[DistrictName] [varchar](10) NULL,
	[AreaID] [char](32) NULL,
	[EstateID] [char](32) NULL,
	[BuildNo] [varchar](100) NULL,
	[RoomNo] [varchar](10) NULL,
	[CountF] [varchar](2) NULL,
	[CountT] [char](1) NULL,
	[Square] [float] NULL,
	[Price] [float] NULL,
	[CustName] [varchar](50) NULL,
	[CustTel] [varchar](255) NULL,
	[Remark] [varchar](255) NULL,
	[EmpID0] [char](32) NULL,
	[EmpID1] [char](32) NULL,
	[FlagAudited0] [bit] NULL CONSTRAINT [DF_Intro_FlagAudited0]  DEFAULT ((0)),
	[FlagAudited1] [bit] NULL CONSTRAINT [DF_Intro_FlagAudited1]  DEFAULT ((0)),
	[IntroDate] [datetime] NULL,
	[RevDate] [datetime] NULL,
	[AuditDate0] [datetime] NULL,
	[AuditDate1] [datetime] NULL,
	[AuditPerson0] [nvarchar](20) NULL,
	[AuditPerson1] [nvarchar](20) NULL,
	[Process] [varchar](10) NULL,
	[Reason] [varchar](50) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Intro_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Intro_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[IntroSource] [nvarchar](10) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoomReview]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RoomReview](
	[RoomReviewID] [char](32) NOT NULL,
	[PropertyID] [char](32) NULL,
	[Content] [ntext] NULL,
	[ExDate] [datetime] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL DEFAULT ((0)),
	[FlagDeleted] [bit] NULL DEFAULT ((0)),
	[CommentPerson] [varchar](30) NULL,
	[AuditPerson] [varchar](30) NULL,
	[AuditFlag] [int] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[RoomReviewID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Log](
	[LogID] [char](32) NOT NULL,
	[OpDate] [datetime] NULL,
	[OpType] [varchar](50) NULL,
	[OpContent] [varchar](200) NULL,
	[EmpID] [char](32) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogClient]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LogClient](
	[LogID] [char](32) NOT NULL,
	[LogDate] [datetime] NULL,
	[LogType] [varchar](10) NULL,
	[LogContent] [varchar](100) NULL,
	[LocalHost] [varchar](20) NULL,
	[LocalID] [varchar](20) NULL,
	[DeptId] [char](32) NULL,
	[EmpID] [char](32) NULL,
	[Info] [varchar](200) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogComputer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LogComputer](
	[LocalID] [varchar](20) NOT NULL,
	[LocalHost] [varchar](20) NULL,
	[LocalChn] [nvarchar](20) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Map]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Map](
	[MapID] [char](32) NOT NULL,
	[CityName] [nvarchar](50) NULL,
	[MapNo] [nvarchar](50) NULL,
	[MapName] [nvarchar](50) NULL,
	[MapData] [image] NULL,
	[ModDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[mbEmployee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[mbEmployee](
	[EmpID] [char](32) NULL,
	[Mobile] [char](16) NULL,
	[imei] [varchar](200) NOT NULL,
	[username] [varchar](50) NULL,
	[FlagAccess] [bit] NULL CONSTRAINT [DF_mbEmployee_FlagAccess]  DEFAULT ((0)),
	[FlagBoss] [bit] NULL CONSTRAINT [DF_mbEmployee_FlagBoss]  DEFAULT ((0)),
	[Remark] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[mbLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[mbLog](
	[LogID] [char](32) NOT NULL,
	[OpDate] [datetime] NULL,
	[OpType] [varchar](50) NULL,
	[OpContent] [varchar](200) NULL,
	[OpImei] [varchar](200) NOT NULL,
	[OpRemark] [varchar](100) NULL,
	[EmpID] [char](32) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[mbOnlineUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[mbOnlineUsers](
	[imei] [varchar](200) NOT NULL,
	[lastOPtime] [datetime] NULL,
	[status] [bit] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[mbSysSet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[mbSysSet](
	[ParamName] [varchar](50) NULL,
	[ParamData] [varchar](500) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Message]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Message](
	[MessageID] [char](32) NOT NULL,
	[MessageType] [varchar](10) NULL,
	[Title] [varchar](200) NULL,
	[Content] [text] NULL,
	[SendDate] [datetime] NULL,
	[SendPerson] [varchar](30) NULL,
	[RecvPerson] [varchar](70) NULL,
	[RecvIDs] [varchar](70) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Message_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Message_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[ParentID] [char](32) NULL,
	[Layer] [tinyint] NULL,
	[AttachID] [char](32) NULL,
	[AttachType] [tinyint] NULL,
	[FlagMult] [bit] NULL,
	[FlagRead] [bit] NULL,
	[AttachKey] [varchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NewMac]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NewMac](
	[MacID] [char](32) NOT NULL,
	[MacAddress] [varchar](50) NULL,
	[StartTime] [datetime] NULL,
	[ExpireDate] [datetime] NULL,
	[CompanyName] [nvarchar](50) NULL,
	[StoreName] [nvarchar](50) NULL,
	[FlagTrashed] [bit] NULL DEFAULT ((0)),
	[FlagGrant] [bit] NULL,
	[FlagClose] [bit] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[MacID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[News]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[News](
	[NewsID] [char](32) NOT NULL,
	[NewsType] [nvarchar](10) NULL,
	[Title] [nvarchar](100) NULL,
	[Content] [ntext] NULL,
	[Source] [nvarchar](50) NULL,
	[EmpID] [char](32) NULL,
	[RegDate] [datetime] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_News_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_News_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[TitleColor] [int] NULL,
	[DeptIDRev] [char](32) NULL,
	[FlagTop] [bit] NULL CONSTRAINT [DF_News_FlagTop]  DEFAULT ((0)),
	[TitleColor2] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NewsTopic]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NewsTopic](
	[TopicID] [nvarchar](32) NOT NULL,
	[Comment] [nvarchar](4000) NULL,
	[NewsID] [nvarchar](32) NULL,
	[EmpID] [nvarchar](32) NULL,
	[RegDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_NewsTopic_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_NewsTopic_FlagDeleted]  DEFAULT ((0)),
	[Zan] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Note]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Note](
	[NoteID] [char](32) NOT NULL,
	[RegPerson] [nvarchar](20) NULL,
	[IconIndex] [tinyint] NULL,
	[Title] [nvarchar](100) NULL,
	[Content] [ntext] NULL,
	[RegDate] [datetime] NULL,
	[Layer] [tinyint] NULL,
	[ParentID] [char](32) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Note_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Note_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[BBS] [int] NULL CONSTRAINT [DF_Note_BBS]  DEFAULT ((0)),
	[FlagTop] [bit] NULL CONSTRAINT [DF_Note_FlagTop]  DEFAULT ((0)),
	[TopDays] [tinyint] NULL,
	[Pic1] [varchar](30) NULL,
	[Pic2] [varchar](30) NULL,
	[Pic3] [varchar](30) NULL,
	[Pic4] [varchar](30) NULL,
	[Pic5] [varchar](30) NULL,
	[Pic6] [varchar](30) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Photo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Photo](
	[PhotoID] [char](32) NOT NULL,
	[PropertyID] [char](32) NULL,
	[PhotoNo] [varchar](50) NULL,
	[PhotoName] [varchar](200) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Photo_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Photo_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[RegPerson] [nvarchar](20) NULL,
	[RegDate] [datetime] NULL,
	[PhotoUrl] [nvarchar](500) NULL,
	[CheckStatus] [nvarchar](10) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Phrase]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Phrase](
	[PhraseID] [char](32) NOT NULL,
	[PhraseFlag] [smallint] NULL,
	[PhraseType] [varchar](20) NULL,
	[Content] [varchar](300) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL,
	[FlagDeleted] [bit] NULL,
	[ExDate] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Plan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Plan](
	[PlanID] [char](32) NOT NULL,
	[Content] [varchar](200) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[EmpID] [char](32) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL,
	[FlagDeleted] [bit] NULL,
	[ExDate] [datetime] NULL,
	[FlagFinished] [bit] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Position]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Position](
	[PositionID] [char](32) NOT NULL,
	[PositionNo] [varchar](50) NULL,
	[PositionName] [varchar](50) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Position_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Position_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[Grade] [int] NULL CONSTRAINT [DF_Position_Grade]  DEFAULT ((0)),
	[Salary] [int] NULL CONSTRAINT [DF_Position_Salary]  DEFAULT ((0)),
	[GradeMin] [text] NULL,
	[GradeMax] [text] NULL,
	[CommRate] [text] NULL,
	[ACL3] [varchar](100) NULL,
	[ACL1] [varchar](300) NULL,
	[ACL2] [varchar](100) NULL,
	[ACL6] [varchar](100) NULL,
	[FlagSale] [bit] NULL CONSTRAINT [DF_Position_FlagSale]  DEFAULT ((0)),
	[FlagShop] [bit] NULL CONSTRAINT [DF_Position_FlagShop]  DEFAULT ((0)),
	[FlagZone] [bit] NULL CONSTRAINT [DF_Position_FlagZone]  DEFAULT ((0)),
	[ACL4] [varchar](10) NULL,
	[ACL3R] [varchar](10) NULL,
	[AppAuthCode] [varchar](50) NULL,
	[M_AppLimitTime] [varchar](50) NULL,
	[M_OwnerLimitTime] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Prepare]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Prepare](
	[PrepareID] [char](32) NOT NULL,
	[PropertyID] [char](32) NULL,
	[ContractNo] [varchar](20) NULL,
	[PropertyNo] [varchar](20) NULL,
	[TrustNo] [varchar](20) NULL,
	[Trade] [varchar](10) NULL,
	[Address] [varchar](50) NULL,
	[SignDate] [datetime] NULL,
	[PayMode] [varchar](20) NULL,
	[DeptID] [char](32) NOT NULL,
	[EmpID] [char](32) NOT NULL,
	[Remark] [varchar](200) NULL,
	[FlagTransfer] [bit] NULL,
	[FlagTrashed] [bit] NULL,
	[FlagDeleted] [bit] NULL,
	[ModDate] [datetime] NULL,
	[ExDate] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PropertyData](
	[DataID] [char](32) NOT NULL,
	[DistrictName] [varchar](10) NULL,
	[AreaName] [varchar](10) NULL,
	[EstateName] [varchar](20) NULL,
	[BuildNo] [varchar](100) NULL,
	[RoomNo] [varchar](10) NULL,
	[Floor] [int] NULL,
	[CountF] [varchar](2) NULL,
	[CountT] [varchar](1) NULL,
	[CountW] [varchar](1) NULL,
	[PropertyUsage] [varchar](10) NULL,
	[PropertyDirection] [varchar](10) NULL,
	[PropertyDecoration] [varchar](10) NULL,
	[PropertySource] [varchar](10) NULL,
	[Trade] [varchar](10) NULL,
	[Square] [float] NULL,
	[Price] [float] NULL,
	[PriceUnit] [float] NULL,
	[RentPrice] [float] NULL,
	[RentPriceUnit] [float] NULL,
	[Remark] [nvarchar](255) NULL,
	[OwnerName] [nvarchar](30) NULL,
	[OwnerTel] [varchar](50) NULL,
	[FlagTransfer] [bit] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL,
	[FlagDeleted] [bit] NULL,
	[ExDate] [datetime] NULL,
	[EmpID] [char](32) NULL,
	[PropertyOccupy] [varchar](20) NULL,
	[Remark2] [text] NULL,
	[RegDate] [datetime] NULL,
	[RegPerson] [nvarchar](20) NULL,
	[ModPerson] [nvarchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInquiry]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PropertyInquiry](
	[PIID] [char](32) NOT NULL,
	[PropertyID] [char](32) NULL,
	[InquiryID] [char](32) NULL,
	[Comment] [text] NULL,
	[EmpID] [char](32) NULL,
	[RegDate] [datetime] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_PropertyInquiry_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_PropertyInquiry_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Question]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Question](
	[QuestionID] [char](32) NOT NULL,
	[QuestionNo] [varchar](20) NULL,
	[Question] [varchar](50) NULL,
	[Answer1] [varchar](20) NULL,
	[Answer2] [varchar](20) NULL,
	[Answer3] [varchar](20) NULL,
	[Answer4] [varchar](20) NULL,
	[Answer5] [varchar](20) NULL,
	[Answer6] [varchar](20) NULL,
	[Answer7] [varchar](20) NULL,
	[Answer8] [varchar](20) NULL,
	[Score1] [float] NULL,
	[Score2] [float] NULL,
	[Score3] [float] NULL,
	[Score4] [float] NULL,
	[Score5] [float] NULL,
	[Score6] [float] NULL,
	[Score7] [float] NULL,
	[Score8] [float] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reference]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Reference](
	[RefName] [nvarchar](20) NOT NULL,
	[RefNameCn] [nvarchar](20) NULL,
	[ItemNo] [nvarchar](20) NOT NULL,
	[ItemValue] [nvarchar](50) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Reference_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Reference_FlagDeleted]  DEFAULT ((0)),
	[RefID] [char](32) NOT NULL,
	[ItemInfo] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rent]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Rent](
	[RentID] [char](32) NOT NULL,
	[PropertyID] [char](32) NOT NULL,
	[CustName] [varchar](20) NULL,
	[CustTel] [varchar](50) NULL,
	[RentDate] [datetime] NULL,
	[RentPerson] [nvarchar](20) NULL,
	[Remark] [varchar](200) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Rent_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Rent_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[RentNo] [varchar](20) NULL,
	[Company] [varchar](50) NULL,
	[EndDate] [datetime] NULL,
	[ThisDate0] [datetime] NULL,
	[ThisDate1] [datetime] NULL,
	[PayDate] [datetime] NULL,
	[R0] [float] NULL,
	[R1] [float] NULL,
	[W0] [float] NULL,
	[W1] [float] NULL,
	[E0] [float] NULL,
	[E1] [float] NULL,
	[G0] [float] NULL,
	[G1] [float] NULL,
	[P0] [float] NULL,
	[P1] [float] NULL,
	[Z0] [float] NULL,
	[Z1] [float] NULL,
	[Total0] [float] NULL,
	[Total1] [float] NULL,
	[Total2] [float] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reply]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Reply](
	[ReplyID] [nvarchar](32) NULL,
	[TopicID] [nvarchar](32) NULL,
	[Comment] [nvarchar](4000) NULL,
	[EmpID] [nvarchar](32) NULL,
	[To_EmpID] [nvarchar](32) NULL,
	[RegDataTime] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Reply_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Reply_FlagDeleted]  DEFAULT ((0))
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Report]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Report](
	[ReportID] [char](32) NOT NULL,
	[Title] [varchar](100) NULL,
	[Content] [text] NULL,
	[EmpID] [char](32) NULL,
	[ReportDate] [datetime] NULL,
	[Comment] [text] NULL,
	[ComDate] [datetime] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Report_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Report_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[Suggestion] [text] NULL,
	[ComPerson] [nvarchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roll]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Roll](
	[RollID] [char](32) NOT NULL,
	[EmpID] [char](32) NULL,
	[RollDate] [datetime] NULL,
	[WeekName] [varchar](6) NULL,
	[RollIn0] [datetime] NULL,
	[RollIn1] [datetime] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Roll_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Roll_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[RollType] [varchar](10) NULL,
	[FlagReturn] [bit] NULL,
	[Info] [varchar](200) NULL,
	[Remark] [varchar](100) NULL,
	[CoX] [float] NULL,
	[CoY] [float] NULL,
	[CoAddr] [nvarchar](100) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RollType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RollType](
	[TypeID] [char](32) NOT NULL,
	[TypeNo] [varchar](10) NULL,
	[TypeShort] [nvarchar](1) NULL,
	[TypeName] [nvarchar](10) NULL,
	[FlagRoll] [bit] NULL CONSTRAINT [DF_RollType_FlagRoll]  DEFAULT ((0)),
	[RollIn] [datetime] NULL,
	[RollOut] [datetime] NULL,
	[Remark] [nvarchar](10) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_RollType_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_RollType_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Room]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Room](
	[RoomID] [char](32) NOT NULL,
	[BuildingID] [char](32) NOT NULL,
	[CellName] [varchar](10) NULL,
	[Floor] [int] NULL CONSTRAINT [DF_Room_Floor]  DEFAULT ((0)),
	[RoomNo] [varchar](20) NULL,
	[CountF] [char](2) NULL,
	[CountT] [char](1) NULL,
	[CountW] [char](1) NULL,
	[CountY] [char](1) NULL,
	[Square] [float] NULL,
	[SquareUse] [float] NULL,
	[Direction] [nvarchar](6) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Room_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Room_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rule]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Rule](
	[RuleID] [char](32) NOT NULL,
	[RuleNo] [varchar](10) NULL,
	[RuleType] [smallint] NULL,
	[Trade] [varchar](10) NULL,
	[Status] [nvarchar](20) NULL,
	[PropertyUsage] [varchar](10) NULL,
	[DateType] [varchar](10) NULL,
	[Days] [smallint] NULL,
	[DeptID] [char](32) NOT NULL,
	[EmpID] [char](32) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Rule_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Rule_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[PropertyTrust] [varchar](20) NULL,
	[Privy] [smallint] NULL,
	[FlagStop] [bit] NULL CONSTRAINT [DF_Rule_FlagStop]  DEFAULT ((0))
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Schedule]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Schedule](
	[ScheduleID] [char](32) NOT NULL,
	[PropertyID] [char](32) NULL,
	[EmpID0] [char](32) NULL,
	[EmpID1] [char](32) NULL,
	[EmpID2] [char](32) NULL,
	[Content] [varchar](200) NULL,
	[AssignDate] [datetime] NULL,
	[ScheduleDate] [datetime] NULL,
	[FlagFinished] [bit] NULL CONSTRAINT [DF_Schedule_FlagFinished]  DEFAULT ((0)),
	[FinishDate] [datetime] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Schedule_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Schedule_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[School]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[School](
	[SchoolID] [char](32) NOT NULL,
	[SchoolName] [nvarchar](20) NULL,
	[SchoolType] [nvarchar](10) NULL,
	[SchoolGrade] [nvarchar](10) NULL,
	[DistrictName] [nvarchar](10) NULL,
	[Address] [nvarchar](100) NULL,
	[Brief] [nvarchar](255) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL,
	[FlagDeleted] [bit] NULL,
	[ExDate] [datetime] NULL,
	[CityName] [nvarchar](10) NULL,
	[SchoolLevel] [nvarchar](5) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SchoolEstate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SchoolEstate](
	[SEID] [char](32) NOT NULL,
	[SchoolID] [char](32) NOT NULL,
	[EstateID] [char](32) NOT NULL,
	[Distance] [nvarchar](10) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL,
	[FlagDeleted] [bit] NULL,
	[ExDate] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SMS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SMS](
	[MsgID] [int] NOT NULL,
	[SendTime] [datetime] NULL,
	[Phone] [varchar](30) NULL,
	[MsgText] [varchar](300) NULL,
	[SendFlag] [varchar](10) NULL,
	[Person] [varchar](30) NULL,
	[SMSGoal] [varchar](12) NULL,
	[DeptID] [char](32) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Spare]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Spare](
	[SpareID] [char](32) NOT NULL,
	[SpareDate] [datetime] NULL,
	[Money0] [float] NULL,
	[Money1] [float] NULL,
	[ContractID] [char](32) NULL,
	[Remark] [varchar](255) NULL,
	[DeptID] [char](32) NULL,
	[EmpID] [char](32) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpareRequest]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SpareRequest](
	[RequestID] [char](32) NOT NULL,
	[RequestDate] [datetime] NULL,
	[RequestMoney] [float] NULL,
	[FlagAudit] [bit] NULL,
	[Remark] [varchar](255) NULL,
	[DeptID] [char](32) NULL,
	[EmpID] [char](32) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Survey]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Survey](
	[SurveyID] [char](32) NOT NULL,
	[SurveyNo] [varchar](20) NULL,
	[ContractNo] [varchar](20) NULL,
	[TrustNo] [varchar](20) NULL,
	[CustName] [varchar](20) NULL,
	[CustType] [varchar](20) NULL,
	[CustAdd] [varchar](50) NULL,
	[CustMobile] [varchar](50) NULL,
	[CustTel] [varchar](50) NULL,
	[EmpID] [char](32) NULL,
	[SurveyDate] [datetime] NULL,
	[Score] [float] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SurveyQuestion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SurveyQuestion](
	[SQID] [char](32) NOT NULL,
	[SurveyID] [char](32) NULL,
	[QuestionID] [char](32) NULL,
	[Answer] [varchar](20) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SysSet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SysSet](
	[ParamName] [nvarchar](50) NOT NULL,
	[ParamData] [nvarchar](500) NULL,
	[ModDate] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SysUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SysUser](
	[SysUserID] [int] NOT NULL,
	[SysUser] [varchar](60) NULL,
	[LocalID] [varchar](20) NULL,
	[AllowVisit] [bit] NULL CONSTRAINT [DF_SysUser_AllowVisit]  DEFAULT ((0)),
	[AllowExchange] [bit] NULL CONSTRAINT [DF_SysUser_AllowExchange]  DEFAULT ((0)),
	[Remark] [varchar](100) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Target]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Target](
	[TargetID] [char](32) NOT NULL,
	[TargetType] [tinyint] NULL,
	[Y] [smallint] NOT NULL,
	[M] [smallint] NOT NULL,
	[D1] [smallint] NULL,
	[D2] [smallint] NULL,
	[D3] [smallint] NULL,
	[D4] [smallint] NULL,
	[D5] [smallint] NULL,
	[D6] [smallint] NULL,
	[D7] [smallint] NULL,
	[D8] [smallint] NULL,
	[D9] [smallint] NULL,
	[D10] [smallint] NULL,
	[D11] [smallint] NULL,
	[D12] [smallint] NULL,
	[D13] [smallint] NULL,
	[D14] [smallint] NULL,
	[D15] [smallint] NULL,
	[D16] [smallint] NULL,
	[D17] [smallint] NULL,
	[D18] [smallint] NULL,
	[D19] [smallint] NULL,
	[D20] [smallint] NULL,
	[D21] [smallint] NULL,
	[D22] [smallint] NULL,
	[D23] [smallint] NULL,
	[D24] [smallint] NULL,
	[D25] [smallint] NULL,
	[D26] [smallint] NULL,
	[D27] [smallint] NULL,
	[D28] [smallint] NULL,
	[D29] [smallint] NULL,
	[D30] [smallint] NULL,
	[D31] [smallint] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Target_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Target_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[R1] [smallint] NULL,
	[R2] [smallint] NULL,
	[R3] [smallint] NULL,
	[R4] [smallint] NULL,
	[R5] [smallint] NULL,
	[R6] [smallint] NULL,
	[R7] [smallint] NULL,
	[R8] [smallint] NULL,
	[R9] [smallint] NULL,
	[R10] [smallint] NULL,
	[R11] [smallint] NULL,
	[R12] [smallint] NULL,
	[R13] [smallint] NULL,
	[R14] [smallint] NULL,
	[R15] [smallint] NULL,
	[R16] [smallint] NULL,
	[R17] [smallint] NULL,
	[R18] [smallint] NULL,
	[R19] [smallint] NULL,
	[R20] [smallint] NULL,
	[R21] [smallint] NULL,
	[R22] [smallint] NULL,
	[R23] [smallint] NULL,
	[R24] [smallint] NULL,
	[R25] [smallint] NULL,
	[R26] [smallint] NULL,
	[R27] [smallint] NULL,
	[R28] [smallint] NULL,
	[R29] [smallint] NULL,
	[R30] [smallint] NULL,
	[R31] [smallint] NULL,
	[TD] [smallint] NULL,
	[TR] [smallint] NULL,
	[DeptID] [char](32) NULL,
	[PositionID] [char](32) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Trent]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Trent](
	[TrentID] [char](32) NOT NULL,
	[TrustID] [char](32) NULL,
	[TrentNo] [varchar](20) NULL,
	[CustName] [varchar](50) NULL,
	[CustTel] [varchar](50) NULL,
	[CustMobile] [varchar](50) NULL,
	[CustAdd] [varchar](100) NULL,
	[CustCard] [varchar](50) NULL,
	[CustBank] [varchar](20) NULL,
	[CustAccount] [varchar](50) NULL,
	[TrentDate0] [datetime] NULL,
	[TrentDate1] [datetime] NULL,
	[RentPrice] [float] NULL,
	[RentFree] [int] NULL CONSTRAINT [DF_Trent_RentFree]  DEFAULT ((0)),
	[RentPriceTotal] [float] NULL,
	[RentDeposit] [float] NULL,
	[PayMode] [varchar](10) NULL,
	[DeptID] [char](32) NULL,
	[EmpID] [char](32) NULL,
	[Comm] [float] NULL,
	[DeptID0] [char](32) NULL,
	[EmpID0] [char](32) NULL,
	[Comm0] [float] NULL,
	[DeptID1] [char](32) NULL,
	[EmpID1] [char](32) NULL,
	[Comm1] [float] NULL,
	[Remark] [text] NULL,
	[RegPerson] [varchar](20) NULL,
	[RegDate] [datetime] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Trent_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Trent_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[FlagAudit] [bit] NULL CONSTRAINT [DF_Trent_FlagAudit]  DEFAULT ((0)),
	[Fellback] [float] NULL,
	[TaxSide] [varchar](20) NULL,
	[MgtPrice] [float] NULL,
	[MgtSide] [varchar](20) NULL,
	[Status] [varchar](20) NULL,
	[FinishNo] [varchar](20) NULL,
	[DeptIDT] [char](32) NULL,
	[EmpIDT] [char](32) NULL,
	[ContractDate] [datetime] NULL,
	[EmptyDays] [int] NULL CONSTRAINT [DF_Trent_EmptyDays]  DEFAULT ((0)),
	[FinishDate] [datetime] NULL,
	[RentMonths] [smallint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrentAct]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TrentAct](
	[TrentActID] [char](32) NOT NULL,
	[TrentID] [char](32) NULL,
	[FeeR] [float] NULL,
	[FeeW] [float] NULL,
	[FeeE] [float] NULL,
	[FeeG] [float] NULL,
	[FeeP] [float] NULL,
	[FeeN] [float] NULL,
	[FeeM] [float] NULL,
	[FeeZ] [float] NULL,
	[FeeDate] [datetime] NULL,
	[Remark] [varchar](200) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_TrentAct_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_TrentAct_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[RemarkFix] [varchar](200) NULL,
	[FeeF] [float] NULL,
	[FeeC] [float] NULL,
	[FeeTotal] [float] NULL,
	[FlagAudit] [bit] NULL CONSTRAINT [DF_TrentAct_FlagAudit]  DEFAULT ((0))
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrentCon]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TrentCon](
	[TrentConID] [char](32) NOT NULL,
	[TrentID] [char](32) NULL,
	[FeeR] [float] NULL,
	[FeeW] [float] NULL,
	[FeeE] [float] NULL,
	[FeeG] [float] NULL,
	[FeeP] [float] NULL,
	[FeeN] [float] NULL,
	[FeeM] [float] NULL,
	[FeeZ] [float] NULL,
	[FeeDate] [datetime] NULL,
	[Remark] [varchar](200) NULL,
	[FlagPaid] [bit] NULL CONSTRAINT [DF_TrentCon_FlagPaid]  DEFAULT ((0)),
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_TrentCon_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_TrentCon_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[RemarkFix] [varchar](200) NULL,
	[FeeF] [float] NULL,
	[FeeC] [float] NULL,
	[FeeTotal] [float] NULL,
	[FlagAudit] [bit] NULL CONSTRAINT [DF_TrentCon_FlagAudit]  DEFAULT ((0))
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrentFollow]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TrentFollow](
	[FollowID] [char](32) NOT NULL,
	[TrentID] [char](32) NULL,
	[EmpID] [char](32) NULL,
	[FollowDate] [datetime] NULL,
	[Content] [ntext] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_TrentFollow_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_TrentFollow_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[FlagAlerted] [bit] NULL CONSTRAINT [DF_TrentFollow_FlagAlerted]  DEFAULT ((0)),
	[AlertDate] [datetime] NULL,
	[AlertInfo] [varchar](200) NULL,
	[ProcessPerson] [varchar](20) NULL,
	[ProcessDate] [datetime] NULL,
	[FollowType] [varchar](10) NULL,
	[DeptIDA] [char](32) NULL,
	[EmpIDA] [char](32) NULL,
	[PositionID] [char](32) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Trust]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Trust](
	[TrustID] [char](32) NOT NULL,
	[PropertyID] [char](32) NULL,
	[TrustNo] [varchar](20) NULL,
	[PropertyNo] [varchar](20) NULL,
	[Address] [varchar](100) NULL,
	[OwnerName] [varchar](50) NULL,
	[OwnerTel] [varchar](50) NULL,
	[OwnerMobile] [varchar](50) NULL,
	[OwnerAdd] [varchar](100) NULL,
	[OwnerCard] [varchar](50) NULL,
	[OwnerBank] [varchar](20) NULL,
	[OwnerAccount] [varchar](50) NULL,
	[TrustDate0] [datetime] NULL,
	[TrustDate1] [datetime] NULL,
	[RentPrice] [float] NULL,
	[RentFree] [int] NULL CONSTRAINT [DF_Trust_RentFree]  DEFAULT ((0)),
	[RentPriceTotal] [float] NULL,
	[RentDeposit] [float] NULL,
	[PayMode] [varchar](10) NULL,
	[DeptID] [char](32) NULL,
	[EmpID] [char](32) NULL,
	[Comm] [float] NULL,
	[DeptID0] [char](32) NULL,
	[EmpID0] [char](32) NULL,
	[Comm0] [float] NULL,
	[DeptID1] [char](32) NULL,
	[EmpID1] [char](32) NULL,
	[Comm1] [float] NULL,
	[Description] [text] NULL,
	[Remark] [text] NULL,
	[RegPerson] [varchar](20) NULL,
	[RegDate] [datetime] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Trust_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Trust_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[TaxSide] [varchar](20) NULL,
	[MgtPrice] [float] NULL,
	[FinishNo] [varchar](20) NULL,
	[FlagAudit] [bit] NULL CONSTRAINT [DF_Trust_FlagAudit]  DEFAULT ((0)),
	[DeptIDT] [char](32) NULL,
	[EmpIDT] [char](32) NULL,
	[Fellback] [float] NULL,
	[MgtSide] [varchar](20) NULL,
	[AuditNote1] [varchar](200) NULL,
	[AuditNote2] [varchar](200) NULL,
	[Audit] [int] NULL CONSTRAINT [DF_Trust_Audit]  DEFAULT ((0)),
	[ContractDate] [datetime] NULL,
	[Status] [varchar](20) NULL,
	[RentMonths] [smallint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrustAct]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TrustAct](
	[TrustActID] [char](32) NOT NULL,
	[TrustID] [char](32) NULL,
	[FeeDate] [datetime] NULL,
	[Remark] [varchar](200) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_TrustAct_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_TrustAct_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[FeeR] [float] NULL,
	[FeeW] [float] NULL,
	[FeeE] [float] NULL,
	[FeeG] [float] NULL,
	[FeeP] [float] NULL,
	[FeeN] [float] NULL,
	[FeeM] [float] NULL,
	[FeeZ] [float] NULL,
	[FeeF] [float] NULL,
	[FeeC] [float] NULL,
	[FeeTotal] [float] NULL,
	[FlagAudit] [bit] NULL CONSTRAINT [DF_TrustAct_FlagAudit]  DEFAULT ((0))
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrustCon]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TrustCon](
	[TrustConID] [char](32) NOT NULL,
	[TrustID] [char](32) NULL,
	[FeeDate] [datetime] NULL,
	[Remark] [varchar](200) NULL,
	[FlagPaid] [bit] NULL CONSTRAINT [DF_TrustCon_FlagPaid]  DEFAULT ((0)),
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_TrustCon_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_TrustCon_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[FeeR] [float] NULL,
	[FeeW] [float] NULL,
	[FeeE] [float] NULL,
	[FeeG] [float] NULL,
	[FeeP] [float] NULL,
	[FeeN] [float] NULL,
	[FeeM] [float] NULL,
	[FeeZ] [float] NULL,
	[FeeF] [float] NULL,
	[FeeC] [float] NULL,
	[FeeTotal] [float] NULL,
	[FlagAudit] [bit] NULL CONSTRAINT [DF_TrustCon_FlagAudit]  DEFAULT ((0))
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrustFee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TrustFee](
	[TrustFeeID] [char](32) NOT NULL,
	[TrustID] [char](32) NOT NULL,
	[FeeName] [nvarchar](10) NULL,
	[FeeTotal] [float] NULL,
	[FeeOwner] [float] NULL,
	[FeeCust] [float] NULL,
	[FeeComp] [float] NULL,
	[FeeDate] [datetime] NULL,
	[DeptID] [char](32) NULL,
	[Remark] [varchar](200) NULL,
	[FlagAudit] [bit] NULL CONSTRAINT [DF_TrustFee_FlagAudit]  DEFAULT ((0)),
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_TrustFee_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_TrustFee_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[PayDate] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrustFollow]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TrustFollow](
	[FollowID] [char](32) NOT NULL,
	[TrustID] [char](32) NULL,
	[EmpID] [char](32) NULL,
	[FollowDate] [datetime] NULL,
	[Content] [ntext] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_TrustFollow_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_TrustFollow_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[FlagAlerted] [bit] NULL CONSTRAINT [DF_TrustFollow_FlagAlerted]  DEFAULT ((0)),
	[AlertDate] [datetime] NULL,
	[AlertInfo] [varchar](200) NULL,
	[ProcessPerson] [varchar](20) NULL,
	[ProcessDate] [datetime] NULL,
	[FollowType] [varchar](10) NULL,
	[DeptIDA] [char](32) NULL,
	[EmpIDA] [char](32) NULL,
	[PositionID] [char](32) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wxEntrust]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[wxEntrust](
	[EntrustID] [char](32) NOT NULL,
	[EntrustType] [varchar](20) NULL,
	[Phone] [varchar](100) NULL,
	[RoomNo] [char](2) NULL,
	[ParlorNo] [char](2) NULL,
	[Price1] [smallmoney] NULL,
	[price2] [smallmoney] NULL,
	[priceType] [varchar](20) NULL,
	[ModDate] [datetime] NULL,
	[Community] [varchar](100) NULL,
	[DisposeDate] [datetime] NULL,
	[IsDispose] [varchar](20) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wxSysSet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[wxSysSet](
	[ParamName] [nvarchar](50) NOT NULL,
	[ParamData] [nvarchar](500) NULL,
	[ModDate] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Property]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Property](
	[PropertyID] [char](32) NOT NULL,
	[CityName] [nvarchar](10) NULL,
	[DistrictName] [nvarchar](10) NULL,
	[EstateID] [char](32) NULL,
	[RoomNo] [varchar](20) NULL,
	[Floor] [int] NULL CONSTRAINT [DF_Property_Floor]  DEFAULT ((0)),
	[Trade] [nvarchar](10) NULL,
	[Status] [nvarchar](10) NULL,
	[CountF] [varchar](2) NULL,
	[CountT] [char](1) NULL,
	[CountW] [char](1) NULL,
	[CountY] [char](1) NOT NULL,
	[Grade] [tinyint] NULL CONSTRAINT [DF_Property_Grade]  DEFAULT ((0)),
	[PropertyUsage] [varchar](20) NULL,
	[PropertyType] [varchar](20) NULL,
	[PropertyDirection] [varchar](20) NULL,
	[PropertyLook] [varchar](20) NULL,
	[PropertyBuy] [varchar](20) NULL,
	[PropertyCommission] [varchar](20) NULL,
	[PropertySource] [varchar](20) NULL,
	[Square] [float] NULL,
	[PriceUnit] [money] NULL CONSTRAINT [DF_Property_PriceUnit]  DEFAULT ((0)),
	[Price] [money] NULL CONSTRAINT [DF_Property_Price]  DEFAULT ((0)),
	[PriceBase] [money] NULL CONSTRAINT [DF_Property_PriceBase]  DEFAULT ((0)),
	[RentPriceUnit] [money] NULL CONSTRAINT [DF_Property_RentPriceUnit]  DEFAULT ((0)),
	[RentPrice] [money] NULL CONSTRAINT [DF_Property_RentPrice]  DEFAULT ((0)),
	[MgtPrice] [money] NULL CONSTRAINT [DF_Property_MgtPrice]  DEFAULT ((0)),
	[TrustDate] [smalldatetime] NULL CONSTRAINT [DF_House_RegDate]  DEFAULT (getdate()),
	[DeptID] [char](32) NULL,
	[EmpID] [char](32) NULL,
	[PropertyDecoration] [varchar](20) NULL,
	[PropertyFloor] [varchar](32) NULL,
	[Remark] [text] NULL,
	[RegPerson] [nvarchar](20) NULL,
	[RegDate] [datetime] NULL CONSTRAINT [DF_Property_RegDate]  DEFAULT (getdate()),
	[ModPerson] [nvarchar](20) NULL,
	[ModDate] [smalldatetime] NULL CONSTRAINT [DF_Property_ModDate]  DEFAULT (getdate()),
	[PropertyTrust] [varchar](20) NULL,
	[KeyNo] [varchar](10) NULL,
	[CompleteYear] [varchar](10) NULL,
	[PropertyOccupy] [varchar](20) NULL,
	[PropertyOwn] [varchar](20) NULL,
	[SquareUse] [float] NULL,
	[LastFollowDate] [smalldatetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [PropertyFlagTrashedDefault]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [PropertyFlagDeletedDefault]  DEFAULT ((0)),
	[OwnerName] [nvarchar](50) NULL,
	[OwnerTel] [varchar](255) NULL,
	[ContactName] [nvarchar](50) NULL,
	[PropertyFurniture] [varchar](20) NULL,
	[PropertyNo] [varchar](20) NULL,
	[PriceLine] [float] NULL CONSTRAINT [PropertyPriceLineDefault]  DEFAULT ((0)),
	[RentPriceLine] [float] NULL CONSTRAINT [PropertyRentPriceLineDefault]  DEFAULT ((0)),
	[BuildNo] [varchar](50) NULL,
	[PropertyCertificate] [varchar](20) NULL,
	[PropertyElectric] [varchar](20) NULL,
	[ExDate] [datetime] NULL CONSTRAINT [PropertyExDateDefault]  DEFAULT ('2002-12-01'),
	[FloorAll] [int] NULL CONSTRAINT [PropertyFloorAllDefault]  DEFAULT ((0)),
	[HandOverDate] [datetime] NULL,
	[UnitName] [varchar](10) NULL CONSTRAINT [PropertyUnitNameDefault]  DEFAULT ('万元'),
	[RentUnitName] [varchar](10) NULL CONSTRAINT [PropertyRentUnitNameDefault]  DEFAULT ('元/月'),
	[PhotoCount] [int] NULL CONSTRAINT [PropertyPhotoCountDefault]  DEFAULT ((0)),
	[Usage1] [float] NULL CONSTRAINT [PropertyUsage1Default]  DEFAULT ((0)),
	[Usage2] [float] NULL CONSTRAINT [PropertyUsage2Default]  DEFAULT ((0)),
	[TrustNo] [varchar](20) NULL,
	[PropertyTax] [varchar](20) NULL,
	[OwnerMobile] [varchar](80) NULL,
	[Country] [varchar](10) NULL,
	[DeptID1] [char](32) NULL,
	[EmpID2] [char](32) NULL,
	[DeptID2] [char](32) NULL,
	[EmpID1] [char](32) NULL,
	[Usage] [varchar](50) NULL,
	[BusDatas] [text] NULL,
	[Privy] [smallint] NULL,
	[FlagWeb] [bit] NULL DEFAULT ((0)),
	[Word] [nvarchar](50) NULL,
	[IDCard] [varchar](30) NULL,
	[PropertyDate] [datetime] NULL,
	[RegulatoryNo] [nvarchar](20) NULL,
	[WebTitle] [nvarchar](100) NULL,
	[PropertyBrief] [ntext] NULL,
	[DeptID3] [char](32) NULL,
	[EmpID3] [char](32) NULL,
 CONSTRAINT [PK_Property] PRIMARY KEY CLUSTERED 
(
	[PropertyID] DESC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Advertisement]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Advertisement](
	[AdID] [char](32) NOT NULL,
	[PropertyID] [char](32) NULL,
	[Media] [varchar](50) NULL,
	[Volumn] [varchar](50) NULL,
	[PublishDate] [datetime] NULL,
	[FlagPublished] [bit] NULL CONSTRAINT [DF_Advertisement_FlagPublished]  DEFAULT ((0)),
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Advertisement_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Advertisement_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[Word] [varchar](100) NULL,
	[Price] [float] NULL,
	[RegDate] [datetime] NULL,
	[RegPerson] [varchar](50) NULL,
	[UnitName] [varchar](2) NULL,
	[FlagAudited] [bit] NULL CONSTRAINT [DF_Advertisement_FlagAudited]  DEFAULT ((0))
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Area]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Area](
	[AreaID] [char](32) NOT NULL,
	[CityName] [varchar](10) NULL,
	[DistrictName] [varchar](20) NULL,
	[AreaNo] [varchar](10) NULL,
	[AreaName] [varchar](20) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Area_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Area_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BlackList]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BlackList](
	[BlackID] [char](32) NOT NULL,
	[BlackType] [varchar](50) NULL,
	[BlackName] [varchar](50) NULL,
	[BlackDesc] [varchar](200) NULL,
	[BlackTel] [varchar](100) NULL,
	[EmpID] [char](32) NULL,
	[RegDate] [datetime] NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_BlackList_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_BlackList_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[Remark] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Building]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Building](
	[BuildingID] [char](32) NOT NULL,
	[EstateID] [char](32) NULL,
	[BuildingName] [nvarchar](50) NULL,
	[ModDate] [datetime] NULL,
	[FlagTrashed] [bit] NULL CONSTRAINT [DF_Building_FlagTrashed]  DEFAULT ((0)),
	[FlagDeleted] [bit] NULL CONSTRAINT [DF_Building_FlagDeleted]  DEFAULT ((0)),
	[ExDate] [datetime] NULL,
	[FloorAll] [smallint] NULL,
	[CountT] [varchar](2) NULL,
	[CountH] [varchar](3) NULL,
	[Cell] [varchar](3) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChinesePY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ChinesePY](
	[Word] [nvarchar](2) NOT NULL,
	[PYAll] [nvarchar](6) NULL,
	[PYFirst] [nvarchar](1) NULL
) ON [PRIMARY]
END
