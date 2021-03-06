USE [OnlineQuiz]
GO
/****** Object:  Table [dbo].[tblBilling]    Script Date: 7/20/2021 5:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBilling](
	[BillingID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [varchar](250) NULL,
	[Date] [datetime] NULL,
	[serviceID] [int] NULL,
	[PaymentType] [varchar](50) NULL,
	[status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBlog]    Script Date: 7/20/2021 5:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBlog](
	[BlogID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](250) NULL,
	[Content] [text] NULL,
	[Image] [text] NULL,
	[categoryID] [int] NULL,
	[AuthorID] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 7/20/2021 5:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [varchar](250) NULL,
	[description] [varchar](250) NULL,
	[level] [varchar](50) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCategoryBlog]    Script Date: 7/20/2021 5:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategoryBlog](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [varchar](250) NULL,
	[description] [varchar](250) NULL,
	[status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblClass]    Script Date: 7/20/2021 5:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClass](
	[ClassID] [int] IDENTITY(1,1) NOT NULL,
	[NumberOfStudent] [int] NULL,
	[Status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCourse]    Script Date: 7/20/2021 5:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCourse](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[AuthorID] [varchar](250) NULL,
	[Duration] [varchar](10) NULL,
	[Status] [bit] NULL,
	[categoryID] [int] NULL,
	[Name] [varchar](250) NULL,
	[Description] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCourseDetail]    Script Date: 7/20/2021 5:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCourseDetail](
	[CourseID] [int] NOT NULL,
	[LearnerID] [varchar](250) NOT NULL,
	[StartDate] [datetime] NULL,
	[Progress] [float] NULL,
	[ClassID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC,
	[LearnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLecture]    Script Date: 7/20/2021 5:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLecture](
	[LectureID] [int] IDENTITY(1,1) NOT NULL,
	[LectureName] [varchar](250) NULL,
	[Description] [varchar](max) NULL,
	[CourseID] [int] NULL,
	[ClassID] [int] NULL,
	[Status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[LectureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblQuestion]    Script Date: 7/20/2021 5:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQuestion](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NULL,
	[Question1] [text] NULL,
	[Question2] [text] NULL,
	[Question3] [text] NULL,
	[Question4] [text] NULL,
	[Description] [text] NULL,
	[Answer] [int] NULL,
	[AuthorID] [varchar](250) NULL,
	[Status] [varchar](50) NULL,
	[categoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblQuiz]    Script Date: 7/20/2021 5:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQuiz](
	[QuizID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NULL,
	[NumberOfQuestions] [int] NULL,
	[Description] [text] NULL,
	[TotalMark] [float] NULL,
	[AuthorID] [varchar](250) NULL,
	[Status] [varchar](50) NULL,
	[ClassID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[QuizID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblQuizDetail]    Script Date: 7/20/2021 5:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQuizDetail](
	[QuizID] [int] NOT NULL,
	[QuestionID] [int] NOT NULL,
	[Time] [varchar](250) NULL,
	[Mark] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[QuizID] ASC,
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRole]    Script Date: 7/20/2021 5:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRole](
	[roleID] [varchar](2) NOT NULL,
	[name] [varchar](10) NULL,
	[detail] [varchar](500) NULL,
 CONSTRAINT [PK_tblRole] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblScore]    Script Date: 7/20/2021 5:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblScore](
	[QuizID] [int] NOT NULL,
	[UserID] [varchar](250) NOT NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[Mark] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[QuizID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblService]    Script Date: 7/20/2021 5:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblService](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NULL,
	[Description] [text] NULL,
	[Price] [float] NULL,
	[Status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSource]    Script Date: 7/20/2021 5:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSource](
	[SourceID] [int] IDENTITY(1,1) NOT NULL,
	[LectureID] [int] NULL,
	[FileDoc] [varchar](250) NULL,
	[FilePic] [varchar](250) NULL,
	[FileVid] [varchar](250) NULL,
	[Reference] [varchar](250) NULL,
	[Status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 7/20/2021 5:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[userID] [varchar](250) NOT NULL,
	[password] [varchar](250) NOT NULL,
	[fullName] [nvarchar](250) NULL,
	[roleID] [varchar](2) NULL,
	[phone] [int] NULL,
	[email] [varchar](250) NOT NULL,
	[address] [varchar](250) NULL,
	[verification_code] [varchar](64) NULL,
	[image] [varchar](8000) NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblBilling]  WITH CHECK ADD FOREIGN KEY([serviceID])
REFERENCES [dbo].[tblService] ([ServiceID])
GO
ALTER TABLE [dbo].[tblBilling]  WITH CHECK ADD  CONSTRAINT [FK__tblBillin__userI__4CA06362] FOREIGN KEY([userID])
REFERENCES [dbo].[tblUser] ([userID])
GO
ALTER TABLE [dbo].[tblBilling] CHECK CONSTRAINT [FK__tblBillin__userI__4CA06362]
GO
ALTER TABLE [dbo].[tblBlog]  WITH CHECK ADD  CONSTRAINT [FK__tblBlog__AuthorI__47DBAE45] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[tblUser] ([userID])
GO
ALTER TABLE [dbo].[tblBlog] CHECK CONSTRAINT [FK__tblBlog__AuthorI__47DBAE45]
GO
ALTER TABLE [dbo].[tblBlog]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[tblCategoryBlog] ([categoryID])
GO
ALTER TABLE [dbo].[tblCourse]  WITH CHECK ADD  CONSTRAINT [FK__tblCourse__Autho__3B75D760] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[tblUser] ([userID])
GO
ALTER TABLE [dbo].[tblCourse] CHECK CONSTRAINT [FK__tblCourse__Autho__3B75D760]
GO
ALTER TABLE [dbo].[tblCourse]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[tblCategory] ([categoryID])
GO
ALTER TABLE [dbo].[tblCourseDetail]  WITH CHECK ADD FOREIGN KEY([ClassID])
REFERENCES [dbo].[tblClass] ([ClassID])
GO
ALTER TABLE [dbo].[tblCourseDetail]  WITH CHECK ADD FOREIGN KEY([CourseID])
REFERENCES [dbo].[tblCourse] ([CourseID])
GO
ALTER TABLE [dbo].[tblCourseDetail]  WITH CHECK ADD  CONSTRAINT [FK__tblCourse__Learn__412EB0B6] FOREIGN KEY([LearnerID])
REFERENCES [dbo].[tblUser] ([userID])
GO
ALTER TABLE [dbo].[tblCourseDetail] CHECK CONSTRAINT [FK__tblCourse__Learn__412EB0B6]
GO
ALTER TABLE [dbo].[tblLecture]  WITH CHECK ADD FOREIGN KEY([ClassID])
REFERENCES [dbo].[tblClass] ([ClassID])
GO
ALTER TABLE [dbo].[tblLecture]  WITH CHECK ADD FOREIGN KEY([CourseID])
REFERENCES [dbo].[tblCourse] ([CourseID])
GO
ALTER TABLE [dbo].[tblQuestion]  WITH CHECK ADD  CONSTRAINT [FK__tblQuesti__Autho__534D60F1] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[tblUser] ([userID])
GO
ALTER TABLE [dbo].[tblQuestion] CHECK CONSTRAINT [FK__tblQuesti__Autho__534D60F1]
GO
ALTER TABLE [dbo].[tblQuestion]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[tblCategory] ([categoryID])
GO
ALTER TABLE [dbo].[tblQuiz]  WITH CHECK ADD  CONSTRAINT [FK__tblQuiz__AuthorI__5070F446] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[tblUser] ([userID])
GO
ALTER TABLE [dbo].[tblQuiz] CHECK CONSTRAINT [FK__tblQuiz__AuthorI__5070F446]
GO
ALTER TABLE [dbo].[tblQuiz]  WITH CHECK ADD FOREIGN KEY([ClassID])
REFERENCES [dbo].[tblClass] ([ClassID])
GO
ALTER TABLE [dbo].[tblQuizDetail]  WITH CHECK ADD FOREIGN KEY([QuestionID])
REFERENCES [dbo].[tblQuestion] ([QuestionID])
GO
ALTER TABLE [dbo].[tblQuizDetail]  WITH CHECK ADD FOREIGN KEY([QuizID])
REFERENCES [dbo].[tblQuiz] ([QuizID])
GO
ALTER TABLE [dbo].[tblScore]  WITH CHECK ADD FOREIGN KEY([QuizID])
REFERENCES [dbo].[tblQuiz] ([QuizID])
GO
ALTER TABLE [dbo].[tblScore]  WITH CHECK ADD  CONSTRAINT [FK__tblScore__UserID__5AEE82B9] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([userID])
GO
ALTER TABLE [dbo].[tblScore] CHECK CONSTRAINT [FK__tblScore__UserID__5AEE82B9]
GO
ALTER TABLE [dbo].[tblSource]  WITH CHECK ADD FOREIGN KEY([LectureID])
REFERENCES [dbo].[tblLecture] ([LectureID])
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD  CONSTRAINT [FK__tblUser__roleID__38996AB5] FOREIGN KEY([roleID])
REFERENCES [dbo].[tblRole] ([roleID])
GO
ALTER TABLE [dbo].[tblUser] CHECK CONSTRAINT [FK__tblUser__roleID__38996AB5]
GO
