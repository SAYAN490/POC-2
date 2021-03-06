SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADDRESS](
	[ADD_ID] [int] NOT NULL,
	[NAME] [varchar](30) NOT NULL,
	[ADD1] [varchar](30) NULL,
	[ADD2] [varchar](30) NULL,
	[CITY] [varchar](30) NULL,
	[STATE] [varchar](30) NULL,
	[ZIP] [int] NULL,
	[PHN] [int] NULL,
	[ACC_ID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADDRESS] ADD PRIMARY KEY CLUSTERED 
(
	[ADD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADDRESS]  WITH CHECK ADD  CONSTRAINT [FK_ADDRESS_ACC_ID] FOREIGN KEY([ACC_ID])
REFERENCES [dbo].[USERAC] ([ACC_ID])
GO
ALTER TABLE [dbo].[ADDRESS] CHECK CONSTRAINT [FK_ADDRESS_ACC_ID]
GO
