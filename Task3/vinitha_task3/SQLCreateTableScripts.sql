
USE [MVP_DW]
GO

/****** Object:  Table [dbo].[load_Aus_SubCityDistrictState]    Script Date: 17-05-2025 14:29:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[load_Aus_SubCityDistrictState](
	[postcode] [nvarchar](50) NOT NULL,
	[suburb] [nvarchar](255) NOT NULL,
	[city] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[state_code] [nvarchar](255) NULL,
	[lat] [float] NULL,
	[lon] [float] NULL,
	[district] [nvarchar](255) NULL
) ON [PRIMARY]
GO


/**************************************/
USE [MVP_DW]
GO

/****** Object:  Table [dbo].[load_NSW_PropertyMedianValue]    Script Date: 17-05-2025 14:29:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[load_NSW_PropertyMedianValue](
	[state] [nvarchar](255) NULL,
	[city/town] [nvarchar](255) NULL,
	[suburb] [nvarchar](255) NULL,
	[postcode] [int] NULL,
	[district] [nvarchar](255) NULL,
	[location] [nvarchar](255) NULL,
	[property_median_value] [float] NULL,
	[updated_year] [int] NULL,
	[updated_month] [int] NULL
) ON [PRIMARY]
GO


/*****************************************/

USE [MVP_DW]
GO

/****** Object:  Table [dbo].[Load_Nsw_Public_Schools_Master_Dataset]    Script Date: 17-05-2025 14:29:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Load_Nsw_Public_Schools_Master_Dataset](
	[school_code] [nvarchar](50) NULL,
	[age_id] [nvarchar](50) NULL,
	[school_name] [nvarchar](255) NULL,
	[street] [nvarchar](255) NULL,
	[town_suburb] [nvarchar](255) NULL,
	[postcode] [nvarchar](50) NULL,
	[student_number] [nvarchar](50) NULL,
	[indigenous_pct] [nvarchar](50) NULL,
	[lbote_pct] [nvarchar](50) NULL,
	[ICSEA_Value] [nvarchar](50) NULL,
	[level_of_schooling] [nvarchar](255) NULL,
	[selective_school] [nvarchar](255) NULL,
	[opportunity_class] [nvarchar](50) NULL,
	[school_specialty_type] [nvarchar](255) NULL,
	[school_subtype] [nvarchar](255) NULL,
	[support_classes] [nvarchar](255) NULL,
	[preschool_ind] [nvarchar](50) NULL,
	[distance_education] [nvarchar](50) NULL,
	[intensive_english_centre] [nvarchar](50) NULL,
	[school_gender] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[school_email] [nvarchar](255) NULL,
	[fax] [nvarchar](50) NULL,
	[late_opening_school] [nvarchar](50) NULL,
	[date_1st_teacher] [nvarchar](50) NULL,
	[lga] [nvarchar](255) NULL,
	[electorate] [nvarchar](255) NULL,
	[fed_electorate] [nvarchar](255) NULL,
	[operational_directorate] [nvarchar](255) NULL,
	[principal_network] [nvarchar](255) NULL,
	[facs_district] [nvarchar](255) NULL,
	[local_health_district] [nvarchar](255) NULL,
	[aecg_region] [nvarchar](255) NULL,
	[ASGS_remoteness] [nvarchar](255) NULL,
	[latitude] [nvarchar](50) NULL,
	[longitude] [nvarchar](50) NULL,
	[date_extracted] [nvarchar](50) NULL
) ON [PRIMARY]
GO

/*************************************/
USE [MVP_DW]
GO

/****** Object:  Table [dbo].[dimdate]    Script Date: 17-05-2025 14:30:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dimdate](
	[DateKey] [int] NOT NULL,
	[FullDate] [date] NULL,
	[DateName] [date] NOT NULL,
	[DayOfWeek] [tinyint] NOT NULL,
	[DayNameOfWeek] [nvarchar](50) NOT NULL,
	[DayOfMonth] [tinyint] NOT NULL,
	[DayOfYear] [smallint] NOT NULL,
	[WeekdayWeekend] [nvarchar](50) NOT NULL,
	[WeekOfYear] [tinyint] NOT NULL,
	[MonthName] [nvarchar](50) NOT NULL,
	[MonthOfYear] [tinyint] NOT NULL,
	[IsLastDayOfMonth] [bit] NOT NULL,
	[CalendarQuarter] [tinyint] NOT NULL,
	[CalendarYear] [smallint] NOT NULL,
	[CalendarYearMonth] [nvarchar](50) NOT NULL,
	[CalendarYearQtr] [nvarchar](50) NOT NULL,
	[FiscalMonthOfYear] [tinyint] NOT NULL,
	[FiscalQuarter] [tinyint] NOT NULL,
	[FiscalYear] [smallint] NOT NULL,
	[FiscalYearMonth] [nvarchar](50) NOT NULL,
	[FiscalYearQtr] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
(
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/***********************************************************/
USE [MVP_DW]
GO

/****** Object:  Table [dbo].[dim_geography]    Script Date: 17-05-2025 14:30:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_geography](
	[dim_location_key] [int] IDENTITY(1,1) NOT NULL,
	[postcode] [nvarchar](50) NULL,
	[suburb] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[statecode] [nvarchar](255) NULL,
	[lat] [float] NULL,
	[lon] [float] NULL,
 CONSTRAINT [PK_dim_geography] PRIMARY KEY CLUSTERED 
(
	[dim_location_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/***********************************************************/
USE [MVP_DW]
GO

/****** Object:  Table [dbo].[dimschool]    Script Date: 17-05-2025 14:31:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dimschool](
	[dim_school_key] [int] IDENTITY(1,1) NOT NULL,
	[school_code] [nvarchar](50) NULL,
	[age_id] [int] NULL,
	[school_name] [nvarchar](255) NULL,
	[street] [nvarchar](255) NULL,
	[student_number] [nvarchar](50) NULL,
	[ibote_pct] [nvarchar](50) NULL,
	[ICSEA_value] [nvarchar](50) NULL,
	[level_of_schooling] [nvarchar](255) NULL,
	[school_gender] [nvarchar](50) NULL,
	[dim_location_key] [int] NULL,
	[postcode] [nvarchar](50) NULL,
	[town_suburb] [nvarchar](255) NULL,
	[date_extracted_key] [int] NULL,
 CONSTRAINT [PK_dimschool] PRIMARY KEY CLUSTERED 
(
	[dim_school_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[dimschool]  WITH CHECK ADD  CONSTRAINT [FK_dimschool_dim_geography] FOREIGN KEY([dim_location_key])
REFERENCES [dbo].[dim_geography] ([dim_location_key])
GO

ALTER TABLE [dbo].[dimschool] CHECK CONSTRAINT [FK_dimschool_dim_geography]
GO

ALTER TABLE [dbo].[dimschool]  WITH CHECK ADD  CONSTRAINT [FK_dimschool_dimdate] FOREIGN KEY([date_extracted_key])
REFERENCES [dbo].[dimdate] ([DateKey])
GO

ALTER TABLE [dbo].[dimschool] CHECK CONSTRAINT [FK_dimschool_dimdate]
GO

/************************************/
USE [MVP_DW]
GO

/****** Object:  Table [dbo].[fact_propertyvalue]    Script Date: 17-05-2025 14:31:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[fact_propertyvalue](
	[fact_propertykey] [int] IDENTITY(1,1) NOT NULL,
	[dim_location_key] [int] NULL,
	[category] [nvarchar](50) NULL,
	[property_median_value] [float] NULL,
	[dim_updated_month_year_key] [int] NULL,
 CONSTRAINT [PK_fact_propertyvalue] PRIMARY KEY CLUSTERED 
(
	[fact_propertykey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[fact_propertyvalue]  WITH CHECK ADD  CONSTRAINT [FK_fact_propertyvalue_dim_geography] FOREIGN KEY([dim_location_key])
REFERENCES [dbo].[dim_geography] ([dim_location_key])
GO

ALTER TABLE [dbo].[fact_propertyvalue] CHECK CONSTRAINT [FK_fact_propertyvalue_dim_geography]
GO

ALTER TABLE [dbo].[fact_propertyvalue]  WITH CHECK ADD  CONSTRAINT [FK_fact_propertyvalue_dimdate] FOREIGN KEY([dim_updated_month_year_key])
REFERENCES [dbo].[dimdate] ([DateKey])
GO

ALTER TABLE [dbo].[fact_propertyvalue] CHECK CONSTRAINT [FK_fact_propertyvalue_dimdate]
GO

/******************************/
