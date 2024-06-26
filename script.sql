USE [LibraryDB]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 7/24/2023 5:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[appointment_id] [int] IDENTITY(1,1) NOT NULL,
	[book_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[date] [date] NOT NULL,
	[status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[appointment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 7/24/2023 5:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[author_id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[infomation] [nvarchar](max) NOT NULL,
	[brief_infomaton] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[author_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 7/24/2023 5:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[blog_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[detail] [nvarchar](max) NOT NULL,
	[author] [nvarchar](100) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[user_id] [int] NOT NULL,
	[status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 7/24/2023 5:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[book_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[category_id] [int] NOT NULL,
	[author_id] [int] NOT NULL,
	[publisher] [nvarchar](50) NULL,
	[publication_date] [date] NULL,
	[quantity] [int] NOT NULL,
	[image] [nvarchar](max) NULL,
	[rate] [float] NULL,
	[status] [bit] NULL,
	[Introduction] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book_Review]    Script Date: 7/24/2023 5:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_Review](
	[user_id] [int] NOT NULL,
	[book_id] [int] NOT NULL,
	[date] [date] NULL,
	[rate] [int] NULL,
	[comment] [varchar](max) NULL,
 CONSTRAINT [PK_Book_Review] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 7/24/2023 5:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[BookId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/24/2023 5:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](50) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fine]    Script Date: 7/24/2023 5:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fine](
	[fine_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[loan_id] [int] NOT NULL,
	[fine_date] [date] NOT NULL,
	[fine_amount] [float] NOT NULL,
 CONSTRAINT [PK_Fine] PRIMARY KEY CLUSTERED 
(
	[fine_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loan]    Script Date: 7/24/2023 5:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loan](
	[loan_id] [int] IDENTITY(1,1) NOT NULL,
	[book_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[loan_date_actual] [date] NOT NULL,
	[loan_date_from] [date] NOT NULL,
	[loan_date_tor] [date] NOT NULL,
	[status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Loan] PRIMARY KEY CLUSTERED 
(
	[loan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 7/24/2023 5:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[BookId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC,
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/24/2023 5:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Total] [float] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 7/24/2023 5:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[reservation_id] [int] IDENTITY(1,1) NOT NULL,
	[book_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[date] [date] NOT NULL,
	[status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Reservation] PRIMARY KEY CLUSTERED 
(
	[reservation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/24/2023 5:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[mail] [nvarchar](50) NOT NULL,
	[user_role] [nvarchar](50) NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (1, N'Dan Brown', N'img/authors/DanBrown.PNG', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.', N'Official Bio Kit Rocha is the pseudonym for co-writing team Donna Herren and Bree Bridges. After penning dozens of paranormal novels, novellas and stories as Moira Rogers, they branched out into gritty, sexy dystopian romance. The Beyond series has appeared on the New York Times and USA Today bestseller lists, has been nominated for best erotic romance in the RT Reviewer?s Choice award five times, and won in 2013 and 2015. Their most recent adventure is partnering with Tor to launch their critically acclaimed Mercenary Librarians series.')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (7, N'Kit Rocha', N'img/authors/KitRocha.PNG', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.', N'Official Bio Kit Rocha is the pseudonym for co-writing team Donna Herren and Bree Bridges. After penning dozens of paranormal novels, novellas and stories as Moira Rogers, they branched out into gritty, sexy dystopian romance. The Beyond series has appeared on the New York Times and USA Today bestseller lists, has been nominated for best erotic romance in the RT Reviewer?s Choice award five times, and won in 2013 and 2015. Their most recent adventure is partnering with Tor to launch their critically acclaimed Mercenary Librarians series.')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (11, N'Suzanne Collins', N'img/authors/SuzanneCollins.PNG', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.', N'Official Bio Kit Rocha is the pseudonym for co-writing team Donna Herren and Bree Bridges. After penning dozens of paranormal novels, novellas and stories as Moira Rogers, they branched out into gritty, sexy dystopian romance. The Beyond series has appeared on the New York Times and USA Today bestseller lists, has been nominated for best erotic romance in the RT Reviewer?s Choice award five times, and won in 2013 and 2015. Their most recent adventure is partnering with Tor to launch their critically acclaimed Mercenary Librarians series.')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (13, N'Veronica Roth', N'https://compote.slate.com/images/1fd2464a-b0f1-4484-a744-6c8ff0ee0a11.jpeg?width=780&height=520&rect=1560x1040&offset=0x0', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.', N'Official Bio Kit Rocha is the pseudonym for co-writing team Donna Herren and Bree Bridges. After penning dozens of paranormal novels, novellas and stories as Moira Rogers, they branched out into gritty, sexy dystopian romance. The Beyond series has appeared on the New York Times and USA Today bestseller lists, has been nominated for best erotic romance in the RT Reviewer?s Choice award five times, and won in 2013 and 2015. Their most recent adventure is partnering with Tor to launch their critically acclaimed Mercenary Librarians series.')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (19, N'James Dashner', N'data:image/jpeg;base64,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', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.', N'Official Bio Kit Rocha is the pseudonym for co-writing team Donna Herren and Bree Bridges. After penning dozens of paranormal novels, novellas and stories as Moira Rogers, they branched out into gritty, sexy dystopian romance. The Beyond series has appeared on the New York Times and USA Today bestseller lists, has been nominated for best erotic romance in the RT Reviewer?s Choice award five times, and won in 2013 and 2015. Their most recent adventure is partnering with Tor to launch their critically acclaimed Mercenary Librarians series.')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (20, N'Rick Riordan', N'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Rick_Riordan_%2810439%29.jpg/1200px-Rick_Riordan_%2810439%29.jpg', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.', N'Official Bio Kit Rocha is the pseudonym for co-writing team Donna Herren and Bree Bridges. After penning dozens of paranormal novels, novellas and stories as Moira Rogers, they branched out into gritty, sexy dystopian romance. The Beyond series has appeared on the New York Times and USA Today bestseller lists, has been nominated for best erotic romance in the RT Reviewer?s Choice award five times, and won in 2013 and 2015. Their most recent adventure is partnering with Tor to launch their critically acclaimed Mercenary Librarians series.')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (22, N'Edward Arthur', N'https://upload.wikimedia.org/wikipedia/commons/5/59/Edward_Arthur_Milne-%281917%29.jpg', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.', N'Official Bio Kit Rocha is the pseudonym for co-writing team Donna Herren and Bree Bridges. After penning dozens of paranormal novels, novellas and stories as Moira Rogers, they branched out into gritty, sexy dystopian romance. The Beyond series has appeared on the New York Times and USA Today bestseller lists, has been nominated for best erotic romance in the RT Reviewer?s Choice award five times, and won in 2013 and 2015. Their most recent adventure is partnering with Tor to launch their critically acclaimed Mercenary Librarians series.')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (24, N'
Victor Hugo', N'https://upload.wikimedia.org/wikipedia/commons/7/7c/Victor_Hugo.jpg', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.', N'Official Bio Kit Rocha is the pseudonym for co-writing team Donna Herren and Bree Bridges. After penning dozens of paranormal novels, novellas and stories as Moira Rogers, they branched out into gritty, sexy dystopian romance. The Beyond series has appeared on the New York Times and USA Today bestseller lists, has been nominated for best erotic romance in the RT Reviewer?s Choice award five times, and won in 2013 and 2015. Their most recent adventure is partnering with Tor to launch their critically acclaimed Mercenary Librarians series.')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (26, N'JAMES VAN PRAAGH', N'data:image/jpeg;base64,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', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (28, N'MICHAEL NEWTON', N'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUWFRgWFhUYGBgaGBgYGBgaGBkYGBoYGBoZHBgYGBgcIS4lHB4rHxgYJjgmKy8xNTU1GiU7QDs0Py40NjEBDAwMEA8QGhISGDEhGiExMTE0NDQ0NDExNDExNDE0NDE0MTQ0NDQ0MTE0MTQ0NDExMTQxNDQ0MTQ/NDExMTExMf/AABEIAOsA1gMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAACAwEEBQAGB//EAD0QAAEDAgMFBgUDAgUEAwAAAAEAAhEhMQNBUQQSYXGBBSKRobHwBjJywdETQvFi4SNSgrLCFFOi0hUzkv/EABkBAAMBAQEAAAAAAAAAAAAAAAABAgMEBf/EAB4RAQEBAQACAwEBAAAAAAAAAAABAhEDIRIxQVEE/9oADAMBAAIRAxEAPwDyTU5jVXw1YYFrIzqwxW8IKthMKtYdAqSZCDdhcCuxH0Qop71TxHJjnJDyhNA4rg9Q4KWtQSCuhEAr2ydm4uJRjHO5BBxSYE1rVtN+Gdp/7cf6mflRidg7QwS7CfGoG8OpFkuz+n8b/GSxiM4atfpRQhBCaVV7YSHKw9Kc1KgoqUe4p/TUcAWsRNaihSAmaAEQXAIgEg4LlKU96Aodtu7g+sejlyR2y7uD6h6OXJVUW2MqrWGErDCsNatYlYw0bnpIfCgPlBw2UrFejL1WxHJ8Fpb3oUJRYbJIEpd4UnTMHZ3PMNaT9ua2Nj+FsZ9d5jR9U+it7Js4a21Fa2btIglrPfFc+vNe+nTjwTi3sXwlh4fexDv8ojwW7s2PhsAaDut0pHWIWNhPxDckg0I4Jn/SHNZa8lroz4JPx6Bu2YEiXkTnA3fym7T2o1lARahFuo93Xmn7JQqpiBwEcx+FPyO+Hi92rj4O0CHsDX/520IPHUc15PG2UtJF/wAZFapYTzTcJ26eJzWmfLYy34JY83iYJrKquaV7bH2VuKwn940IAPSF5XGwoJC2zuac2vHcqzQuhNLELk0cLIUAJgahKAkNQlECgc5AC56Q9yJ5SnICh2se6PqHoVyDtY9wfUPRy5JbeZhJpEBMa6EDlqjhS4BS5qCE+EMlKc1EUJKQArvZWEHPnRUV6T4V2TfeBTUzoFnu+uNfHO1oYuA4YdiJtr0Cs9k9lhg3nVcfLgtHaWN3pvFG/wAcE3BC4tXlel48+umYeCApe5dKFyhoW9yp4rATKsvCqYxhLq+RxDQs/GFU7Eeq2IZTlRrLT7I2stMObTOuXisTt7Z2b5eyxVnZtog+Sy+18SHEW9Ftm/rk3n3xQLlG6l7M+SR75Kw6AujOvlHHqfG8BCW5qaXpTinEBKByJxSXvTCHBIemOKSXINT7VHcH1D0cuUdqfIPqHo5ckcbyneUMCjEWqXOcoJXBQXJxIXFCVzioRTiGMJK9l8Ls3QSLnyAXk8MVovXdhvDGca+Kx8jp8M7WzcyrWGKKnsZlXm2XD916X5xMIS1GxqlwRwpVV4VXHZKvYgVV5upXGVilV3vgdFexmRVZm0vkIKqrMSp4qj2xjbwBzHmm4roKp7cwuaCL5dFpmufyRRwsaHAjX2FpYxWKxhJp1C03vyXR4/2OLyz6C5y4PSiVBK1ZJxHqs5xTnBA5qDgQ9Aj3VBanImqPa3yD6h6OXI+1R3B9Q9HKEU43pgIAmAoJVlQuQOTHKIT6nhUKWhM3VwCRz0hq9PsBhjBqJ/C8yQtjsnFJEVkUCy8k9OjwX29RsNlpsC85h7buGMorZW39vbotlafOFx8ej8o3UDyvPYXxM1xiPBauDtYeJCmnmHPEqo8Qqm39qbk15HJed2j4iBdAJPG48EcV8uPQY8kLN2lsLP8A/mKX8JHkVQft5caffzqjnGfz6dtBrRJxnjc6/wBlxeSq+2A7nqnn7Rv3nqlhGSXl26AYiJLjwCul81QbBsgLDvZfm6biMAJAsFv4r3Vjm82ZMS/pbgh3UblAK6uOPqQ1AWp7DRKc1FBRCiEUIVMp8Uu1h3B9Q9HLlPa4/wAMfUPRy5K05Gs0oguEId5aElxQkIlyDc0LiuldKIVQ5avYLocTw81lEq92Piw8caJbncr8d5qNracEUcbRU8libdtR3SWYbnMBjedI67ov1Xs9gY1zIN59E47FoFwdnfb1Pj2PC9n7K97d4sDax8u6eoBMeJXquw9lezea+uh5rTbsAFT+VEAGBootaZzz9eZ+JMDeJAKycLsgQKz453pmt3bz/iVVvZcBpRLwXLx21dl4ofGG8blZJcd7gN2wFdMkeHsr7EA8QIPVe4/6EE5KvtezhgJAyRrXUTxyPN7RgBjeiptbIdyKu9oYndVHAPdJSz9lvkhmwbNDN6aOBkcrqsSSrT/kMHhwgqsAur/PPvTj/wBWvUyU9qFOclhq6uuLgmuQOcjKXCnVVmOClQQuUqUe2PkH1j0cuQ9sfIPrHo5cpNpSUbUJMo2NWhUSGVLkpypJqGVDXrt5OQq4Kzszt1wOhlVWGqssCWhPt7TsrHknQwechbBxF4rsvai3P5fQrddt4iZXnbnNV7Phs1iVfxdqyF/QJbDcrLG89pMwTY6LMftO0MBDgHRYilOSTf1Fzb8MF9TCr4O17jwJkGiw9pxtoxTQFg1KZsOxvad57945cErEfL36e3wNpETKodrbSIus9m0FovRZ+3bUTqpVbFLbcaQQqLMQ0FhmrG0DuzqVn7RQHlCeftz7bWPig0balfslFKwX90HgpL16GJM55HmeXV1rtS5CUBKIFX1mhwUNCIuUgUUWrkBKW4o3FQAEgzu1j3B9Q9HLlPbfyj6h6OXKVNbDamByS56lr1shLylPcoe9LBR0hSpBUMcjAVSpomKxKVhqN+qVVI1Oznjfg2IWpgbPDoNRcclg7M/dcHaL1mzPBDX3EV5Lj82eXv8AXof5d9zz+CdjtbAyyQvxmuzCjH2RhM7odzrHJLwtgwL58CfSVk7c9v2r7TuAXWZjbUwZha20bHsxuD4n8rNxMDDmGMbzgKaVBgYweIHqjx9mG7PFHhYQafvACZt+I0MDRdIvxjdoUDQPdFkvEmPdld2/G73IJezYBNTmnPV6x179E7DiCHCNM9R+VZcPCYVDZ2y54qYdTpkrmC8XBzqLrqzrji3mUSgvTX4BIloJSC0i4jmtZqVlc8EKoHhEHaICUGAvTAghG1Iqo9sfIPqHo5cu7Z+QfUPRy5I1wFHvKoXwobiq+p4e9yEuSt9SXJWiQ5jkwPVUPUh6c0LlZ30/Bw81UY6TF+Ga0MPCdAyBzVSp+N/BE0Wr2JtZBLDY205LOw8KMpzBy5QkYj3NIg/LEUgECv3Wfk5qcb+KXOuvZYZMwcl2NgTlVZfZ/aQeWzR0QRw1W4SFxalnp6mNTU9M1+yoP0QFfeQqm0PFlKrGftDoVN7qbzjySu1tsAoCsR+1veYBonJWOtc9HsZvvLjaVqBgAlV9kZQKt8Q9rDCZuNq9wgDQG5Kcl1UWzM7Wbsbid94J7z3OHnu+IV4AzXppzPGyz9kBaxrNRUEAXz5fccytHCcAKicr3FB+PHjXo45PtbZMUJiQLRW1Nbf+XjLXzeogxaw4dUvfpMzZ0ZaiufvrIxRHy8eliJ5z7sBONhsy7vVKdgHzjRMEXmv9ozPNM3qmRIkGTxvaD7KctL4yqT8NwyKgBXnPgZ68PKqPEw2n9tdddZqq+Sblg9rfIPqHo5cn9v7PGGL/ADj/AGuXI6XFMvUhKa1Oa1MCaiBU4WEXGGiT7votTC7Na09/5v8AKLC19boPjPwsBzzDWkrSwuzGirjJ0FALXPGfJaWGwNGkTAFp55oXiKCJIjlkR0CZzJX6LWiGiOQ8fAiE1kjp4anLVIDqkk5ageBNPzTVNwz0vfOdTnQxHBBpe6ndpznw8lT2jM+MfaLK1ivpqIuKG4FUgszgXAvWZipFhXPikGZtm0/pbrxMB3fpTcdIJB1kTzlbI7XxGNDh32ESHDTisrtfvMeCZo6ZPC4PQflea7K7Zdhd01ZNtOSz1mVeN3Ne4PxM2KtdPJZm19vPdRojjmkhuHjDeYRPBJZsUlZ2SfcbfPWvqk995qtLAwAwVVbG2rDwh3nV0uT0Xnu0e134lB3W6A1PMombr19RN1M++9rc7Q+IWsBbhw52v7R+V5/ZGuxsUFxJJMk3Wet74dwfmd0/v74rWZmZ6Ya3dX22v0hFaAW1iItcjPqVZwcDQZxSR4+Y6lCMOBJpTwGR5wrGGHCs0nO1S280in/imEuwxQmSeOuZHUhc21BnN4OX59U7GdQwRbLOkH/aPFKdcWpwrSZrnla0xyDcJaQ0WMkfemWef5AtdWBammukUHvgDxw75jJNb3pBNM731QNcN4QRUQLCljWeP94NQh78DzFOsenuzHv4mwrwE59D7BCCtKCk5cRS1unTJMkEQTWK0PCfXXhogMrtquEyB+4WnR0rkXbr5YHQKvF72dwPguQTJY5aPZmy/qPDZhv7joFmNK9D2M2GEihIknkDHqnBxcw2NYIZSpg58CT7uowjN636j10QAyB5yB49f+Kd+sDPC8SIEGIrGtUzMY+kE3AgRMG0+SB7aESOBrbU6Uk9CcghcY3q1HGxsAZ536aoQCY7xN+EG9OcdN3mmD9nwjAk+ltb3E6iKpZZSRxFIte/JCx+4SI7ppTI/wBXCfsnjDpUU4VvofGEAh2GCMuVhGX880bmBrbRURTrlehHGotdS9oAFpJHGkgCfDyhc0yDprw4exfMzAGb2oyMJ+ctLulp8TfzXz3NfQu1R/hvFJ3baACsdYXz5imlfszB2hzDLXFp1BhWT2vj/wDcPgJ8YVRzEEJchdosR5cZJJOpQFTC6EyQvY/D2CG4LSc5P39AvIBq9/smzhrWtH7WtGeYEkzccPJBxYa3u1tmD5Nd7mFz56TqLiLkihtPLmjLq2rJgVtBiTr41ISsF9QIiBWaX9mtbpKc5xsanI/auZpf+TxMVjWySBFJmIpM6+72knPqTBtSIjOBrNRa00iFmN2UOeA928JloMWp+0CJhuYy0QAYu1ve4hkgCO+IrN93LM18BaLbGlsEGTXyE8/3cLjgA9mAGgRkRSDHKv8AqPsxz3HeBgTXemupPlyz4oBkCpivOToNAPtyTGNpxqaRx4e7cltm5uIMWNP7gfjJG0Dpc1GotJOhvS2VEBmdvYTv0wIiHgUE2a4ZxmD7lco7cB/TAkHvNNgbh+ppp05qU0sVjl6bssSwGKQB4gyBrSfJeUYDMASvV9lAtZBr6Rnllw1RDh2GMjqacjXlNExxMXMD3N715dEpgq4WG8DrlqI06VT2g1JkzWxvHqCfCmqcNL22E8Rl0JPCImw6IMPeknSOYrTlyv1qixAAbUiIgSeHkUqbmIqZIzoR1sb685YHhgT8pkRoBWouL1XNZEA2oRWQfZsfxQcOBrJNQazwpaTmM+KJpGvGJmJj+IM60lAE8SDJ7x6305T5jOUOATE3mTJneJ4+6V5IyyRNxAA4AGYnQTQxHgl4Lppk10DOlwPYqZzqAKfakbjqkmO8T4eVL66VPz5gX0XbqsdBBMW0tux5dOJK+eEVcBaTCkqkqEUIS1CUErgpDVDzCAbsGHvYrG6vaPML6C5pApF54SAb8L1oYbxXjPhnB3sdp/ygu8oA817R4IAM5CM2m8A+XgUKiHHOkAxUaDPUyJ/K6JMmLzxk1qdYzgXmqUBMcuMForB8jnkFYaADWooSbC80E2pS40ukbiSDERlQZnKRImukXQY+HvDvXFqd2IgwOgEeVEQdcnU1iImgk6xroaoHNePmJBFZ5Uk61pzlARgjeu6LxGuk1n+06lMc0iuljbQSTkev96mI8sc2vetFfODlEzxVrFdfXIcYaKdYiJy4JwJw6VIjQ3gez/FkTGmoEmaZippaIsbZjWgXME0ngBx+WK9fTgp/UHeMTSTFfDrBppygDJ7fJ3ATm5pFRMQ7M8vcSYQ9uuJYARUPim7kHD7e85SST2TgCryK2b1ufAlb2zNge5yiyzezmndaAOduP5WmCLGc630ztb3ZUcDhSHm0lsjShI0zkXz85ixAiLyTFrSefuQVX2gAPBmZkdDYVJi0D3FkuMmtuMXiM6EyfVIwvxHEZ5Cnl5+4lc0jdvmB0r5fldiNNNM7WGXC9tDzUjDkke/yczbLmmC2sk5kC0cZP58CnhwMajpIuCeunBKNCDFhEcsqj+nyCaf6r/zQ51HFMAY4EGs1JPOkn+bcLIWEzEXA8IiDWn48zcQec+NxaxqNPykvxDPIgWMRwHEn0sgq7aSSxwoNIpeplwGZPnoIXz/aRu4jh/UV9AcJB60NhH2gR1OkrwPabN3FdzlL9FLhSoaVKSXOCruMlNxHpbAgPR/CeAJxHEgQGjxk08F6XEmoAmaETpI6GIAKyvhPBjDcanefPRtqRWzitPaDQ7gEePQcYIHOaoqoBjt6OFJ1pNNPI0snGQCDevCBmQCOduCgMrW/CnGK/wAVTWMkRSKUyJvUWia10FUjLa+DllathRozBy5oXyDxBg0B3TXICwEzGiZtDWxPE862MXEzXlxVTbscBsNsRoK/iTW2QTBez4Re8n9o1rlUzE2pPAHNW2tHy5zAmTXMDX5vMRQyO2LCa1gaY0NI8JPGcugqpxTSm6b9ZnkM7WrxSJGG20eFak0tmCZ90BPcIkb2kSZNWnIf0ivI8QlzyIv+2aT08fdoXtL4FADFiOE1ve/QnOCmah20e4Ig96piRQHKKZ+mS5U+1pI/1CecHIUXJJbuzYe64Mg1EeF+dFcLazPAUrXpMWtPpNZo7wMEgGDIraI+/VWHOEgwYNDc6EcAa+fU0pV20QA6bHer03hz91rDmvJAvmBNRyr0PTRU9ueS08ncRcfx7hM2LELmDOlBSthnzQXTmGDwFdYrAPofPNWGsAyGgJ0EUHEDjYhVwdeWvX1P9rPD7GO9U35nKpMRXUzcoNDmxJPG0ACDBvyGnzBFh4l6zQZcMhb+TmgxLyeUmvWCK5+HCgsf3ZH7SbHPx0NOqAc9gHMVvl658L1SCARSLF3ExaaHjQ6t1TJJBJgAZAQDJF4oPzRCbb123Irf9x4nWOCA5s5HKQam5n8eYpZeI+ImRizqOcdV7QOEQacLEV/n2SV5X4ob3mu8xaw8OSVKsZhUylsKMoSW8o2CiDNPwGbzmt1IHigPb9js3MFgsd0GdC6DMZxToBqnOcZ+mtrcB52NyaKYAZFwAaigpFeRoaZDnEbO0wOpMmtczP3peqFniIF6+JBvQZ3qNbLmPcK1qKcjIoR7opbhUmZMGCcuIDuZPW9FJdXQNgRMxIzPkJ14JCoe8RByBpehgmBGdoWbh4e/ikUO7U2ubUsKfaVc2nEgEmkAh0xSKEXMRMRkkdn72447pl0kc8hPvPWrJce9xoAdRA/sLTbjlKB8kXIdQ8xa/KB14mGb5JMm9jOZNKk1q4VzkGkwkExHEDIGmvu/CUgVibwmlZdUmYr49f5FbaMUQINDY9RBpW4NwmvfpUiDMxE3PGtfxRZu0YpjuiIsa6RZAV9oqx1qYgA//LqxpZcuxWRgNJEy8nW+9eeXuq5Mm2zbmzA0z1n+8eOqfg7UJmaTrNZ8fOc+KoYjAcv2hKZTxKDXdoMt6E0pOvv0zDYTDeDXOjka6e+KFtWn6f8AkU3Z7uQFnDkCc6EEV95aXGoRvcN4g90gzFaeXO39kOAaDn6lyLDseNaUueHNMBfvboyJNCLcfPz6qH4k1AigOpEdafmeClrzvGv+X7j7Bdk3mfVASze3QOMzrqI8Ml2IwFp4m1jINTrpouwqN6/lE7P6vRAIiHCSLTeY3aG+kRlMZrG+J8I7k0hpHGCchwrfittlCD/V/wAQsz4kYBhmli7/AJJUfjxrCjclNTHISFt1qdg4e9js0BLjwABr4wspq3Phj/7T9B/3NQHqnmYFqkQPANMG8UpxXNplyOVIvqNVGPRzop8opSlKeSU2/UD/AG/k+KS1tjTIaMgDHOswKEVk7utqpjhIymTnNqEb0ZCeZRCoBzOIQdDTMWQY7zrm29b7pzTFZXaLt4tZOhPGoAFPsakrSwmwA00FIismgHrenTPJZ8+J9LR4hv8A7O8Vdw2Ahsiax4gfk+KCOeRJIjyrobVE/fWAjaXNjOASb0JtU+/RHifu5k9aVS8fDFRFJtyLh9h4JBTftImKTBt49fcUvm7c+AZ0B429+4V7ankWMVWXtbyWmuvq5Ap+2t/wmAG27OX7TyXKdoef0m8xamR0XJpf/9k=', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (29, N'Rudolf Steiner', N'data:image/jpeg;base64,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', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (30, N'Sylvia Browne', N'data:image/jpeg;base64,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', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (31, N'Alice A. Bailey', N'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/%D0%90%D0%BB%D0%B8%D1%81%D0%B0_%D0%90%D0%BD%D0%BD%D0%B0_%D0%91%D0%B5%D0%B9%D0%BB%D0%B8.jpeg/800px-%D0%90%D0%BB%D0%B8%D1%81%D0%B0_%D0%90%D0%BD%D0%BD%D0%B0_%D0%91%D0%B5%D0%B9%D0%BB%D0%B8.jpeg', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (33, N'RAYMOND MOODY', N'data:image/jpeg;base64,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', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.', N'Contact Information
You can contact Bree & Donna at kit@kitrocha.com Bree & Donna are represented by Sarah Younger at NYLA. For rights inquiries about their books, contact rights@nyliterary.com

Unofficial Bio
Bree & Donna met while writing X-Men fanfic in 2000 and became BFFs 4Evah. When Bree?s fallback job as a salesperson for non-denominational angel paraphernalia could no longer support her California rent, Donna invited her to move to Alabama and live with her. After meeting their husbands in a table top RPG at the local comic book store, they served as each others? Maids of Honor in 2004. In 2007 they decided that they should return to That Writing Thing they?d always loved, but this time writing original characters?together. The rest is history.

They currently live in the backwoods in Alabama, three miles apart, and spend their non-writing time caring for their various cats, dogs, and chickens. (Oh, yeah, and Donna?s kids.) You can follow their Kit Rocha twitter account or keep up with their individual adventures at @mostlybree and @totallydonna.

In their free time, they make jewelry and crafts and sell them on etsy.')
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([blog_id], [title], [detail], [author], [image], [user_id], [status]) VALUES (3, N'Seeing the Good in Balanced Literacy ... and Moving On', N'Moving towards evidence-based instruction does not mean leaving behind the things that work; it means learning more about what practices work for whom, and why. It means intentionally excising the parts that stymie student growth (like leveled books) even if we’ve used them for years. And it means learning new methods to shrink the achievement gap so we ensure that all students become skilled readers and writers.', N'Margaret Goldberg', N'img/blogWritter/author1.png', 1, N'1')
INSERT [dbo].[Blog] ([blog_id], [title], [detail], [author], [image], [user_id], [status]) VALUES (5, N'Benefits of Reading Books: How It Can Positively Affect Your Life', N'In the 11th century, a Japanese woman known as Murasaki Shikibu wrote “The Tale of Genji,” a 54-chapter story of courtly seduction believed to be the world’s first novel.

Over 1,000 years later, people the world over are still engrossed by novels — even in an era where stories appear on handheld screens and disappear 24 hours later.

What exactly do human beings get from reading books? Is it just a matter of pleasure, or are there benefits beyond enjoyment? The scientific answer is a resounding “yes.”

Reading books benefits both your physical and mental health, and those benefits can last a lifetime. They begin in early childhood and continue through the senior years. Here’s a brief explanation of how reading books can change your brain — and your body — for the better.', N'Mordo Genre', N'img/blogWritter/1.jpg', 1, N'1')
INSERT [dbo].[Blog] ([blog_id], [title], [detail], [author], [image], [user_id], [status]) VALUES (11, N'Leveled Books', N'Ensure success in your classroom and beyond with engaging, developmentally appropriate books at various levels of text complexity. Graduated levels of difficulty build students'' confidence while increasing comprehension and fluency. Reading A-Z books support instruction in comprehension, vocabulary, close reading of text, and more.

', N'Bernado Dept', N'img/blogWritter/2.png', 1, N'1')
INSERT [dbo].[Blog] ([blog_id], [title], [detail], [author], [image], [user_id], [status]) VALUES (12, N'4 Ways to Read a Book: How to Get the Most out of Reading', N'English philosopher Francis Bacon once wrote, “Some books are to be tasted, others to be swallowed, and some few to be chewed and digested.” Bacon’s message that there are many ways to read a book can apply to today’s nonfiction books, fiction bestsellers, or whatever you’re reading in your book club this month.', N'MasterClass', N'img/blogWritter/3.png', 1, N'0')
INSERT [dbo].[Blog] ([blog_id], [title], [detail], [author], [image], [user_id], [status]) VALUES (15, N'Why ''getting lost in a book'' is so good for you, according to science', N'Whether you’re the reader who rips through a new book each week or the one still slogging through that bestseller your friend recommended months ago, psychologists (and their research) say your time is being well spent.

And if it’s been a while since your last date with a good book, the experts have a few reasons that might convince you to give it another go.

“One of the benefits to reading fiction is simply that it provides enjoyment and pleasure,” Melanie Green, PhD, associate professor in the department of communication at University at Buffalo, tells NBC News BETTER. “It can provide an escape from boredom or stress.”', N'Sarah DiGiulio', N'img/blogWritter/4.png', 1, N'1')
INSERT [dbo].[Blog] ([blog_id], [title], [detail], [author], [image], [user_id], [status]) VALUES (18, N'8 Science-Backed Reasons to Read a (Real) Book', N'There''s nothing like the smell of old books or the crack of a new one''s spine. (Plus, you''ll never run low on battery.) As it turns out, diving into a page-turner can also offer benefits for your health and happiness. Although more and more people own e-books, it seems safe to say that real books aren''t going anywhere yet, and these benefits of reading are here to stay. (Pick up one of these great books for any mood if you need a recommendation.)

', N'Emily Peterson', N'img/blogWritter/5.png', 1, N'1')
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (3, N'Dance With The Devils', 12, 11, N'GDS Publisher', CAST(N'2022-06-08' AS Date), -1, N'/img/books/DanceWithTheDevil.PNG', 5, 1, N'Test Edit Introduction', N'POWER IS NEVER GIVEN, ONLY TAKENTobias Richter, the fearsome VP of Security of the TechCorps is dead. The puppetmaster is gone and the organization is scrambling to maintain control by ruthlessly limiting Atlanta''s access to resources, hoping to quell rebellion. Our band of mercenary librarians have decided that the time for revolution has come.Maya uses her wealth of secrets to weaken the TechCorps from within. Dani strikes from the shadows, picking off the chain of command one ambush at a time. And Nina is organizing their community?not just to survive, but to fight back. When Maya needs to make contact with a sympathetic insider, Dani and Rafe are the only ones with the skill-set and experience to infiltrate the highest levels of the TechCorps. They''ll go deep undercover in the decadent, luxury-soaked penthouses on the Hill.Bringing Dani face-to-face with the man who turned her into a killer. And forcing Rafe to decide how far he''ll go to protect both of his families?the one he was born to, and the one he made for himself.Victory will break the back of Power. Failure will destroy Atlanta.', 10)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (5, N'Catching Fire', 3, 7, N'GDS Publisher', CAST(N'2020-01-23' AS Date), 99, N'/img/books/CatchingFire.PNG', 4, 1, N'Sparks are igniting.
Flames are spreading.
And the Capitol wants revenge.', N'Against all odds, Katniss Everdeen has won the Hunger Games. She and fellow District 12 tribute Peeta Mellark are miraculously still alive. Katniss should be relieved, happy even. After all, she has returned to her family and her longtime friend, Gale. Yet nothing is the way Katniss wishes it to be. Gale holds her at an icy distance. Peeta has turned his back on her completely. And there are whispers of a rebellion against the Capitol—a rebellion that Katniss and Peeta may have helped create.

Much to her shock, Katniss has fueled an unrest that she''s afraid she cannot stop. And what scares her even more is that she''s not entirely convinced she should try. As time draws near for Katniss and Peeta to visit the districts on the Capitol''s cruel Victory Tour, the stakes are higher than ever. If they can''t prove, without a shadow of a doubt, that they are lost in their love for each other, the consequences will be horrifying.

In Catching Fire, the second novel of the Hunger Games trilogy, Suzanne Collins continues the story of Katniss Everdeen, testing her more than ever before . . . and surprising readers at every turn.', 13)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (6, N'Divergent', 2, 7, N'GDS Publish', CAST(N'2021-09-07' AS Date), 99, N'/img/books/Divergent.PNG', 3, 1, N'In Beatrice Prior''s dystopian Chicago world, society is divided into five factions, each dedicated to the cultivation of a particular virtue—Candor (the honest), Abnegation (the selfless), Dauntless (the brave), Amity (the peaceful), and Erudite (the intelligent). On an appointed day of every year, all sixteen-year-olds must select the faction to which they will devote the rest of their lives. For Beatrice, the decision is between staying with her family and being who she really is—she can''t have both. So she makes a choice that surprises everyone, including herself.', N'During the highly competitive initiation that follows, Beatrice renames herself Tris and struggles alongside her fellow initiates to live out the choice they have made. Together they must undergo extreme physical tests of endurance and intense psychological simulations, some with devastating consequences. As initiation transforms them all, Tris must determine who her friends really are—and where, exactly, a romance with a sometimes fascinating, sometimes exasperating boy fits into the life she''s chosen. But Tris also has a secret, one she''s kept hidden from everyone because she''s been warned it can mean death. And as she discovers unrest and growing conflict that threaten to unravel her seemingly perfect society, she also learns that her secret might help her save those she loves . . . or it might destroy her.', 5.99)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (7, N'Insurgent', 1, 1, N'REQ Publish', CAST(N'2019-06-03' AS Date), 99, N'/img/books/Insurgent.PNG', 4, 1, N'One choice can transform you—or it can destroy you. But every choice has consequences, and as unrest surges in the factions all around her, Tris Prior must continue trying to save those she loves—and herself—while grappling with haunting questions of grief and forgiveness, identity and loyalty, politics and love.', N'Tris''s initiation day should have been marked by celebration and victory with her chosen faction; instead, the day ended with unspeakable horrors. War now looms as conflict between the factions and their ideologies grows. And in times of war, sides must be chosen, secrets will emerge, and choices will become even more irrevocable—and even more powerful. Transformed by her own decisions but also by haunting grief and guilt, radical new discoveries, and shifting relationships, Tris must fully embrace her Divergence, even if she does not know what she may lose by doing so.

New York Times bestselling author Veronica Roth''s much-anticipated second book of the dystopian DIVERGENT series is another intoxicating thrill ride of a story, rich with hallmark twists, heartbreaks, romance, and powerful insights about human nature.', 6.92)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (8, N'Mockingjay', 4, 1, N'REQ Publish', CAST(N'2018-01-24' AS Date), 99, N'/img/books/Mockingjay.PNG', 5, 1, N'My name is Katniss Everdeen.
Why am I not dead?
I should be dead.', N'Katniss Everdeen, girl on fire, has survived, even though her home has been destroyed. Gale has escaped. Katniss''s family is safe. Peeta has been captured by the Capitol. District 13 really does exist. There are rebels. There are new leaders. A revolution is unfolding.

It is by design that Katniss was rescued from the arena in the cruel and haunting Quarter Quell, and it is by design that she has long been part of the revolution without knowing it. District 13 has come out of the shadows and is plotting to overthrow the Capitol. Everyone, it seems, has had a hand in the carefully laid plans—except Katniss.

The success of the rebellion hinges on Katniss''s willingness to be a pawn, to accept responsibility for countless lives, and to change the course of the future of Panem. To do this, she must put aside her feelings of anger and distrust. She must become the rebels'' Mockingjay—no matter what the personal cost.', 6.23)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (9, N'The Da Vinci Code', 5, 1, N'REQ Publish', CAST(N'2020-05-06' AS Date), 99, N'/img/books/TheDaVinciCode.PNG', 4, 1, N'While in Paris, Harvard symbologist Robert Langdon is awakened by a phone call in the dead of the night. The elderly curator of the Louvre has been murdered inside the museum, his body covered in baffling symbols. As Langdon and gifted French cryptologist Sophie Neveu sort through the bizarre riddles, they are stunned to discover a trail of clues hidden in the works of Leonardo da Vinci—clues visible for all to see and yet ingeniously disguised by the painter.', N'Even more startling, the late curator was involved in the Priory of Sion—a secret society whose members included Sir Isaac Newton, Victor Hugo, and Da Vinci—and he guarded a breathtaking historical secret. Unless Langdon and Neveu can decipher the labyrinthine puzzle—while avoiding the faceless adversary who shadows their every move—the explosive, ancient truth will be lost forever.', 9.34)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (10, N'The Hunger Game', 2, 11, N'REQ Publish', CAST(N'2021-11-15' AS Date), 99, N'/img/books/TheHungerGame.PNG', 4, 1, N'Could you survive on your own in the wild, with every one out to make sure you don''t live to see the morning?
', N'In the ruins of a place once known as North America lies the nation of Panem, a shining Capitol surrounded by twelve outlying districts. The Capitol is harsh and cruel and keeps the districts in line by forcing them all to send one boy and one girl between the ages of twelve and eighteen to participate in the annual Hunger Games, a fight to the death on live TV.

Sixteen-year-old Katniss Everdeen, who lives alone with her mother and younger sister, regards it as a death sentence when she steps forward to take her sister''s place in the Games. But Katniss has been close to dead before—and survival, for her, is second nature. Without really meaning to, she becomes a contender. But if she is to win, she will have to start making choices that weight survival against humanity and life against love.', 12.46)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (12, N'The Lightning Thief', 3, 11, N'REQ Publish', CAST(N'2021-11-15' AS Date), 99, N'/img/books/TheLightningThief.PNG', 5, 1, N'Percy Jackson is about to be kicked out of boarding school...again. And that''s the least of his troubles.', N'Percy Jackson is a good kid, but he can''t seem to focus on his schoolwork or control his temper. And lately, being away at boarding school is only getting worse - Percy could have sworn his pre-algebra teacher turned into a monster and tried to kill him. When Percy''s mom finds out, she knows it''s time that he knew the truth about where he came from, and that he go to the one place he''ll be safe. She sends Percy to Camp Half Blood, a summer camp for demigods (on Long Island), where he learns that the father he never knew is Poseidon, God of the Sea. Soon a mystery unfolds and together with his friends—one a satyr and the other the demigod daughter of Athena - Percy sets out on a quest across the United States to reach the gates of the Underworld (located in a recording studio in Hollywood) and prevent a catastrophic war between the gods.', 7.68)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (22, N'The Maze Runner S', 3, 7, N'REQ Publisher', CAST(N'2022-09-28' AS Date), 101, N'/img/books/TheMazeRunner.PNG', 4, 0, N'If you ain’t scared, you ain’t human.', N'When Thomas wakes up in the lift, the only thing he can remember is his name. He’s surrounded by strangers—boys whose memories are also gone.', 3.99)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (23, N'From the Shadows', 1, 1, N'Soho Crime', CAST(N'2022-09-06' AS Date), 99, N'/img/books/FromTheShadows.PNG', 4, 1, N'A Billy Boyle WWII Mystery', N'In southern France in 1944, Captain Billy Boyle works with French Resistance fighters to protect a Royal Navy Commander, uncovering a wide web of subterfuge and betrayal in the process.

Following their mission in the Soviet Union, Billy, Kaz, and Big Mike are sent to southern France for what should be a simple assignment: to serve as security for Royal Navy Commander Gordon Stewart, head of the Special Operations Executive’s Section F in Algiers. Stewart’s mission is to work with Resistance leaders in liberated areas to gather information that will help track down Vichy officials and other traitors who escaped with the retreating Germans. Stewart has received multiple death threats, and there has already been one attempt on his life in Algiers.

Over the course of his investigation, Billy learns that Stewart has many enemies in both the SOE and the Resistance, linked to a fatal Resistance uprising. Diana Seaton, Billy’s wartime lover, crosses paths with him as she and legendary SOE agent Christine Granville embark on a humanitarian mission on behalf of those killed while helping the SOE.

The race to find an important witness leads Billy to the legendary 442nd Regimental Combat Team, a unit made up of Nisei soldiers that went on to become the most highly decorated unit in the history of the US Army.

With sacrifice and betrayal afoot, Billy doesn''t know who he can trust, or how close to death this case may bring him.', 5.96)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (24, N'It Looks Like Us', 1, 20, N'Page Street Kids', CAST(N'2022-09-13' AS Date), 99, N'/img/books/ItLooksLikeUs.PNG', 4, 0, NULL, N'The remote terror of THE THING meets the body horror of WILDER GIRLS in this fast-paced Antarctic thriller.

Shy high school junior Riley Kowalski is spending her winter break on a research trip to Antarctica, sponsored by one of the world’s biggest tech companies. She joins five student volunteers, a company-approved chaperone, and an impartial scientist to prove that environmental plastic pollution has reached all the way to Antarctica, but what they find is something much worse… something that looks human.

Riley has anxiety--ostracized by the kids at school because of panic attacks--so when she starts to feel like something’s wrong with their expedition leader, Greta, she writes it off. But when Greta snaps and tries to kill Riley, she can’t chalk it up to an overactive imagination anymore. Worse, after watching Greta disintegrate, only to find another student with the same affliction, she realizes they haven’t been infected, they’ve been infiltrated--by something that can change its shape. And if the group isn’t careful, that something could quickly replace any of them.', 7.96)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (25, N'The Demon Code', 1, 22, N' Avon Books UK, Avon', CAST(N'2022-09-15' AS Date), 99, N'/img/books/TheDemonCode.PNG', 4, 1, NULL, N'High in the Italian alps, cut off from the outside world, sits a chapel battered by winds and icy blizzards. The priests who guard this sacred place have sworn to protect the dangerous treasure that lies within their walls.

But when Joe Mason and his team are called to the remote church, they find its ancient stones reduced to rubble, the priests murdered in cold blood and their precious cargo stolen.

As Mason pursues the thieves across continents and dangerous waters, he wonders what incredible secret the priests laid down their lives for… And if he can recover it before it claims more innocent victims, and brings the downfall of civilisation as we know it…', 8.99)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (26, N'Vision of Virtue', 1, 20, N'Bold Strokes Books', CAST(N'2022-09-01' AS Date), 99, N'/img/books/VisionOfVirtue.PNG', 4, 1, NULL, N'Clio Ardalides loves being in the limelight. As the Muse of History and Virtue, it’s her job to share all the laudable traits and accomplishments of the gods, and she’s turned her work into a national television show. For Clio, the perception of events and highlighting the positive is sometimes a little more important than authenticity. Who wants reality when there’s glamour and beauty in the world?

Kit Kalloway wants the truth. And not the shiny, polished version people are getting from the news or shows like Clio’s. As the headline reporter for Truth Spotter, she uncovers the things not getting done and the people being left behind. To Kit, Clio has sold out. No matter how sexy and vivacious she is, she’s just another self-obsessed influencer only interested in being admired.

When disaster strikes and they must depend on one another, desire and passion are ready and waiting. But will it be enough for them to find a shared vision?', 10)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (27, N'Test T', 5, 11, N'Test Publisher', CAST(N'2022-11-03' AS Date), 2, N'/img/books/vendor-6.jpg', 1, 0, N'Test Edit Introduction', N'POWER IS NEVER GIVEN, ONLY TAKENTobias Richter, the fearsome VP of Security of the TechCorps is dead. The puppetmaster is gone and the organization is scrambling to maintain control by ruthlessly limiting Atlanta''s access to resources, hoping to quell rebellion. Our band of mercenary librarians have decided that the time for revolution has come.Maya uses her wealth of secrets to weaken the TechCorps from within. Dani strikes from the shadows, picking off the chain of command one ambush at a time. And Nina is organizing their community?not just to survive, but to fight back. When Maya needs to make contact with a sympathetic insider, Dani and Rafe are the only ones with the skill-set and experience to infiltrate the highest levels of the TechCorps. They''ll go deep undercover in the decadent, luxury-soaked penthouses on the Hill.Bringing Dani face-to-face with the man who turned her into a killer. And forcing Rafe to decide how far he''ll go to protect both of his families?the one he was born to, and the one he ', 11.99)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (28, N'Test New', 3, 11, N'TEst publisher', CAST(N'2022-11-11' AS Date), 2, N'/img/books/product-2.jpg', 4, 0, N'Test Edit Introduction', N'POWER IS NEVER GIVEN, ONLY TAKENTobias Richter, the fearsome VP of Security of the TechCorps is dead. The puppetmaster is gone and the organization is scrambling to maintain control by ruthlessly limiting Atlanta''s access to resources, hoping to quell rebellion. Our band of mercenary librarians have decided that the time for revolution has come.Maya uses her wealth of secrets to weaken the TechCorps from within. Dani strikes from the shadows, picking off the chain of command one ambush at a time. And Nina is organizing their community?not just to survive, but to fight back. When Maya needs to make contact with a sympathetic insider, Dani and Rafe are the only ones with the skill-set and experience to infiltrate the highest levels of the TechCorps. They''ll go deep undercover in the decadent, luxury-soaked penthouses on the Hill.Bringing Dani face-to-face with the man who turned her into a killer. And forcing Rafe to decide how far he''ll go to protect both of his families?the one he was born to, and the one he ', 5.21)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (33, N'1026', 11, 30, N'FPT', CAST(N'2023-07-23' AS Date), 23, N'/img/books/offer-1.jpg', 5, 1, N'De', N'In', 9.99)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [category_name], [image]) VALUES (1, N'Action', N'/img/category/action.PNG')
INSERT [dbo].[Category] ([category_id], [category_name], [image]) VALUES (2, N'Comedy', N'/img/category/comedy.PNG')
INSERT [dbo].[Category] ([category_id], [category_name], [image]) VALUES (3, N'Adventure', N'/img/category/adventure.PNG')
INSERT [dbo].[Category] ([category_id], [category_name], [image]) VALUES (4, N'Crime', N'/img/category/crime.PNG')
INSERT [dbo].[Category] ([category_id], [category_name], [image]) VALUES (5, N'Sci-Fiction', N'/img/category/sci-fiction.PNG')
INSERT [dbo].[Category] ([category_id], [category_name], [image]) VALUES (10, N'Religion', N'/img/category/religion.PNG')
INSERT [dbo].[Category] ([category_id], [category_name], [image]) VALUES (11, N'Romance', N'/img/category/romance.PNG')
INSERT [dbo].[Category] ([category_id], [category_name], [image]) VALUES (12, N'Wars', N'/img/category/vendor-2.jpg')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (3, 2, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (3, 3, 5)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (3, 4, 4)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (3, 5, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (3, 6, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (3, 7, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (3, 8, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (3, 9, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (3, 10, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (3, 11, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (3, 12, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (3, 13, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (3, 14, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (3, 15, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (5, 2, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (5, 5, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (5, 6, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (5, 7, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (5, 8, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (5, 9, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (5, 10, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (5, 11, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (5, 12, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (5, 13, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (5, 14, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (5, 15, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (6, 4, 5)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (26, 16, 3)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (2, 2, CAST(N'2023-07-21T11:41:22.0535310' AS DateTime2), N'Cancelled', N'DH FPTs', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (3, 2, CAST(N'2023-07-22T17:03:05.4062570' AS DateTime2), N'Pending', N'Ha Noi', 50)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (4, 5, CAST(N'2023-07-24T08:54:36.7250017' AS DateTime2), N'Completed', N'HN', 15.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (5, 2, CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2), N'Completed', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (6, 2, CAST(N'2023-02-19T00:00:00.0000000' AS DateTime2), N'Completed', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (7, 2, CAST(N'2023-03-11T00:00:00.0000000' AS DateTime2), N'Completed', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (8, 2, CAST(N'2023-04-01T00:00:00.0000000' AS DateTime2), N'Completed', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (9, 2, CAST(N'2023-05-20T00:00:00.0000000' AS DateTime2), N'Completed', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (10, 2, CAST(N'2023-06-01T00:00:00.0000000' AS DateTime2), N'Completed', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (11, 2, CAST(N'2023-08-22T00:00:00.0000000' AS DateTime2), N'Pending', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (12, 2, CAST(N'2023-09-02T00:00:00.0000000' AS DateTime2), N'Pending', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (13, 2, CAST(N'2023-10-10T00:00:00.0000000' AS DateTime2), N'Pending', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (14, 2, CAST(N'2023-11-25T00:00:00.0000000' AS DateTime2), N'Pending', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (15, 2, CAST(N'2023-12-09T00:00:00.0000000' AS DateTime2), N'Rejected', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (16, 2, CAST(N'2023-07-24T09:13:09.4587692' AS DateTime2), N'Pending', N'DH FPT', 48)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [fullname], [username], [password], [mail], [user_role], [status]) VALUES (1, N'Marketing', N'mkt1', N'1234', N'mkt@gmail.com', N'user', 0)
INSERT [dbo].[User] ([user_id], [fullname], [username], [password], [mail], [user_role], [status]) VALUES (2, N'Huy', N'user1', N'123', N'phucvhhe161615@fpt.edu.vn', N'user', 1)
INSERT [dbo].[User] ([user_id], [fullname], [username], [password], [mail], [user_role], [status]) VALUES (5, N'ádsd', N'admin', N'123', N'as', N'admin', 1)
INSERT [dbo].[User] ([user_id], [fullname], [username], [password], [mail], [user_role], [status]) VALUES (11, N'123', N'admin2', N'123', N'123', N'admin', 0)
INSERT [dbo].[User] ([user_id], [fullname], [username], [password], [mail], [user_role], [status]) VALUES (12, N'123', N'admin4', N'123', N'123', N'admin', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[OrderDetails] ADD  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [Status]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [Address]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [Total]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Book] FOREIGN KEY([book_id])
REFERENCES [dbo].[Book] ([book_id])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Book]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_User]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_User]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author] FOREIGN KEY([author_id])
REFERENCES [dbo].[Author] ([author_id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Author]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Category]
GO
ALTER TABLE [dbo].[Book_Review]  WITH CHECK ADD  CONSTRAINT [FK_Book_Review_Book] FOREIGN KEY([book_id])
REFERENCES [dbo].[Book] ([book_id])
GO
ALTER TABLE [dbo].[Book_Review] CHECK CONSTRAINT [FK_Book_Review_Book]
GO
ALTER TABLE [dbo].[Book_Review]  WITH CHECK ADD  CONSTRAINT [FK_Book_Review_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Book_Review] CHECK CONSTRAINT [FK_Book_Review_User]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Book_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Book] ([book_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Book_BookId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([user_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_User_UserId]
GO
ALTER TABLE [dbo].[Fine]  WITH CHECK ADD  CONSTRAINT [FK_Fine_Loan] FOREIGN KEY([loan_id])
REFERENCES [dbo].[Loan] ([loan_id])
GO
ALTER TABLE [dbo].[Fine] CHECK CONSTRAINT [FK_Fine_Loan]
GO
ALTER TABLE [dbo].[Fine]  WITH CHECK ADD  CONSTRAINT [FK_Fine_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Fine] CHECK CONSTRAINT [FK_Fine_User]
GO
ALTER TABLE [dbo].[Loan]  WITH CHECK ADD  CONSTRAINT [FK_Loan_Book] FOREIGN KEY([book_id])
REFERENCES [dbo].[Book] ([book_id])
GO
ALTER TABLE [dbo].[Loan] CHECK CONSTRAINT [FK_Loan_Book]
GO
ALTER TABLE [dbo].[Loan]  WITH CHECK ADD  CONSTRAINT [FK_Loan_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Loan] CHECK CONSTRAINT [FK_Loan_User]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Book_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Book] ([book_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Book_BookId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([user_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_User_UserId]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Book] FOREIGN KEY([book_id])
REFERENCES [dbo].[Book] ([book_id])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Book]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_User]
GO
