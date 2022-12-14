USE [TimeTest]
GO

/****** Object:  Table [dbo].[Employee]    Script Date: 8/16/2022 11:09:01 AM ******/
SET 
  ANSI_NULLS ON
GO

SET 
  QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee] (
    [eid] [int] NOT NULL, 
    [ename] [varchar](150) NOT NULL, 
    CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([eid] ASC) WITH (
      PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, 
      IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, 
      ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
    ) ON [PRIMARY]
  ) ON [PRIMARY]
GO

  /****** Object:  Table [dbo].[TimeSheet]    Script Date: 8/16/2022 11:09:01 AM ******/
SET 
  ANSI_NULLS ON
GO

SET 
  QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSheet] (
    [tid] [int] IDENTITY(1, 1) NOT NULL, 
    [eid] [int] NOT NULL, 
    [checkin] [datetime] NOT NULL, 
    [checkout] [datetime] NOT NULL, 
    CONSTRAINT [PK_TimeSheet] PRIMARY KEY CLUSTERED ([tid] ASC) WITH (
      PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, 
      IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, 
      ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
    ) ON [PRIMARY]
  ) ON [PRIMARY]
GO
INSERT [dbo].[Employee] ([eid], [ename]) 
VALUES 
  (1, N'mr A') INSERT [dbo].[Employee] ([eid], [ename]) 
VALUES 
  (2, N'mr B') INSERT [dbo].[Employee] ([eid], [ename]) 
VALUES 
  (3, N'Mr C') INSERT [dbo].[Employee] ([eid], [ename]) 
VALUES 
  (4, N'Mr D') INSERT [dbo].[Employee] ([eid], [ename]) 
VALUES 
  (5, N'Mr E')
GO

SET 
  IDENTITY_INSERT [dbo].[TimeSheet] ON INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    1, 
    1, 
    CAST(
      N'2022-08-05T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-05T17:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    2, 
    1, 
    CAST(
      N'2022-08-06T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-06T17:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    3, 
    1, 
    CAST(
      N'2022-08-07T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-07T17:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    4, 
    1, 
    CAST(
      N'2022-08-08T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-08T17:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    5, 
    1, 
    CAST(
      N'2022-08-09T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-09T17:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    6, 
    1, 
    CAST(
      N'2022-08-10T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-10T17:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    7, 
    1, 
    CAST(
      N'2022-08-11T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-11T17:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    8, 
    1, 
    CAST(
      N'2022-08-12T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-12T17:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    9, 
    1, 
    CAST(
      N'2022-08-13T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-13T17:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    10, 
    1, 
    CAST(
      N'2022-08-14T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-14T17:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    11, 
    1, 
    CAST(
      N'2022-08-15T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-15T17:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    12, 
    1, 
    CAST(
      N'2022-08-16T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-16T17:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    13, 
    1, 
    CAST(
      N'2022-08-17T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-17T17:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    14, 
    1, 
    CAST(
      N'2022-08-18T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-18T17:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    15, 
    1, 
    CAST(
      N'2022-08-19T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-19T17:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    16, 
    1, 
    CAST(
      N'2022-08-20T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-20T17:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    17, 
    2, 
    CAST(
      N'2022-08-05T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-05T14:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    18, 
    2, 
    CAST(
      N'2022-08-06T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-06T14:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    19, 
    2, 
    CAST(
      N'2022-08-07T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-07T14:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    20, 
    2, 
    CAST(
      N'2022-08-08T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-08T14:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    21, 
    2, 
    CAST(
      N'2022-08-09T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-09T14:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    22, 
    2, 
    CAST(
      N'2022-08-10T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-10T14:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    23, 
    2, 
    CAST(
      N'2022-08-11T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-11T14:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    24, 
    2, 
    CAST(
      N'2022-08-12T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-12T14:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    25, 
    2, 
    CAST(
      N'2022-08-13T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-13T14:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    26, 
    2, 
    CAST(
      N'2022-08-14T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-14T14:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    27, 
    2, 
    CAST(
      N'2022-08-15T08:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-15T14:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    44, 
    4, 
    CAST(
      N'2022-08-12T12:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-12T19:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    45, 
    4, 
    CAST(
      N'2022-08-13T12:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-13T19:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    46, 
    4, 
    CAST(
      N'2022-08-14T12:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-14T19:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    47, 
    4, 
    CAST(
      N'2022-08-15T12:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-15T19:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    48, 
    4, 
    CAST(
      N'2022-08-16T12:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-16T19:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    49, 
    4, 
    CAST(
      N'2022-08-17T12:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-17T19:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    50, 
    4, 
    CAST(
      N'2022-08-18T12:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-18T19:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    51, 
    4, 
    CAST(
      N'2022-08-19T12:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-19T19:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    52, 
    3, 
    CAST(
      N'2022-08-12T12:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-12T19:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    53, 
    3, 
    CAST(
      N'2022-08-13T12:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-13T19:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    54, 
    3, 
    CAST(
      N'2022-08-14T12:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-14T19:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    55, 
    3, 
    CAST(
      N'2022-08-15T12:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-15T19:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    56, 
    3, 
    CAST(
      N'2022-08-16T12:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-16T19:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    57, 
    3, 
    CAST(
      N'2022-08-17T12:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-17T19:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    58, 
    3, 
    CAST(
      N'2022-08-18T12:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-18T19:00:00.000' AS DateTime
    )
  ) INSERT [dbo].[TimeSheet] (
    [tid], [eid], [checkin], [checkout]
  ) 
VALUES 
  (
    59, 
    3, 
    CAST(
      N'2022-08-19T12:00:00.000' AS DateTime
    ), 
    CAST(
      N'2022-08-19T19:00:00.000' AS DateTime
    )
  ) 
SET 
  IDENTITY_INSERT [dbo].[TimeSheet] OFF
GO

ALTER TABLE 
  [dbo].[TimeSheet] WITH CHECK 
ADD 
  CONSTRAINT [FK_TimeSheet_Employee] FOREIGN KEY([eid]) REFERENCES [dbo].[Employee] ([eid])
GO

ALTER TABLE 
  [dbo].[TimeSheet] CHECK CONSTRAINT [FK_TimeSheet_Employee]
