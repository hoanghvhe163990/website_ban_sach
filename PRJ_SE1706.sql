USE [master]
GO
/****** Object:  Database [PRJ301_SE1706]    Script Date: 3/14/2023 8:12:03 PM ******/
CREATE DATABASE [PRJ301_SE1706]
GO
ALTER DATABASE [PRJ301_SE1706] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_SE1706] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_SE1706] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_SE1706] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_SE1706] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_SE1706] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PRJ301_SE1706] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_SE1706] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_SE1706] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_SE1706] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_SE1706] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_SE1706] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_SE1706] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_SE1706] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_SE1706] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRJ301_SE1706] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_SE1706] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_SE1706] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_SE1706] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_SE1706] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_SE1706] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_SE1706] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_SE1706] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ301_SE1706] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301_SE1706] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_SE1706] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_SE1706] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_SE1706] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301_SE1706] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_SE1706] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJ301_SE1706] SET QUERY_STORE = OFF
GO
USE [PRJ301_SE1706]
GO
/****** Object:  Table [dbo].[Account_HE163990]    Script Date: 3/14/2023 8:12:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_HE163990](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[pass] [nvarchar](50) NOT NULL,
	[role] [int] NOT NULL,
	[phone] [int] NULL,
	[address] [nvarchar](max) NULL,
	[avatar] [nvarchar](max) NULL,
 CONSTRAINT [PK_Account_HE163990] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book_HE163990]    Script Date: 3/14/2023 8:12:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_HE163990](
	[bid] [int] IDENTITY(1,1) NOT NULL,
	[cid] [nvarchar](50) NOT NULL,
	[bname] [nvarchar](250) NOT NULL,
	[author] [nvarchar](250) NOT NULL,
	[image] [nvarchar](max) NULL,
	[pid] [nvarchar](50) NOT NULL,
	[quantity] [int] NULL,
	[describe] [nvarchar](max) NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK__Book_HE1__3DE0C2271D91BD49] PRIMARY KEY CLUSTERED 
(
	[bid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_HE163990]    Script Date: 3/14/2023 8:12:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_HE163990](
	[cid] [nvarchar](50) NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_HE163990]    Script Date: 3/14/2023 8:12:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_HE163990](
	[oid] [int] IDENTITY(1,1) NOT NULL,
	[aid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[total] [float] NOT NULL,
 CONSTRAINT [PK_Order_HE163990] PRIMARY KEY CLUSTERED 
(
	[oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail_HE163990]    Script Date: 3/14/2023 8:12:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail_HE163990](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[oid] [int] NOT NULL,
	[bid] [int] NOT NULL,
	[quanity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[total] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher_HE163990]    Script Date: 3/14/2023 8:12:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher_HE163990](
	[pid] [nvarchar](50) NOT NULL,
	[pname] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account_HE163990] ON 

INSERT [dbo].[Account_HE163990] ([id], [username], [email], [pass], [role], [phone], [address], [avatar]) VALUES (1, N'Messi', N'bcowlin3@woothemes.com', N'Cowlin', 1, 123456789, N'thanh hoa', NULL)
INSERT [dbo].[Account_HE163990] ([id], [username], [email], [pass], [role], [phone], [address], [avatar]) VALUES (3, N'test3', N'odibsdale2@newsvine.com', N'pass3', 0, 123456789, N'ha tinh ', N'https://khoinguonsangtao.vn/wp-content/uploads/2022/07/avatar-cute-2.jpg')
INSERT [dbo].[Account_HE163990] ([id], [username], [email], [pass], [role], [phone], [address], [avatar]) VALUES (12, N'hoang1', N'hoang@gmail.com', N'123', 1, 123456789, N'ha tay', NULL)
INSERT [dbo].[Account_HE163990] ([id], [username], [email], [pass], [role], [phone], [address], [avatar]) VALUES (22, N'Viet Hoang', N'hoanghvhe163990@fpt.edu.vn', N'123456', 1, 123456789, N'ha noi', NULL)
INSERT [dbo].[Account_HE163990] ([id], [username], [email], [pass], [role], [phone], [address], [avatar]) VALUES (24, N'hoang', N'hoang@123', N'123', 0, NULL, NULL, N'https://img.meta.com.vn/Data/image/2022/05/20/avatar-zalo-13.jpg')
INSERT [dbo].[Account_HE163990] ([id], [username], [email], [pass], [role], [phone], [address], [avatar]) VALUES (25, N'test', N'tester@123', N'123', 1, 0, N'', NULL)
INSERT [dbo].[Account_HE163990] ([id], [username], [email], [pass], [role], [phone], [address], [avatar]) VALUES (26, N'admin', N'admin@gmail.com', N'admin', 0, 841234567, N'ha noi xin', NULL)
INSERT [dbo].[Account_HE163990] ([id], [username], [email], [pass], [role], [phone], [address], [avatar]) VALUES (28, N'hoang', N'hoang@1234', N'123', 1, NULL, NULL, NULL)
INSERT [dbo].[Account_HE163990] ([id], [username], [email], [pass], [role], [phone], [address], [avatar]) VALUES (31, N'hachoang', N'hoangden@gmail.com', N'123456', 1, NULL, NULL, NULL)
INSERT [dbo].[Account_HE163990] ([id], [username], [email], [pass], [role], [phone], [address], [avatar]) VALUES (32, N'hacviethoang', N'hoangkbiet@gmail.com', N'123456789', 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Account_HE163990] OFF
GO
SET IDENTITY_INSERT [dbo].[Book_HE163990] ON 

INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (2, N'3', N'sach day triet li', N'viet hoang', N'https://static-shop.waka.vn/resize/340x497x2/image/img.product/0/0/0/38/19831_1.jpg', N'3', 7420, N'Một trong những lý do hẳn là sự tái sinh đầy ngoạn mục của JAL. Từ tình trạng nợ nần chồng chất và việc kinh doanh đang trên bờ phá sản, sau khi được ngài Inamori lãnh đạo và dẫn dắt trong vòng 2 năm 8 tháng, JAL đã có thể hoạt động trở lại. Khả năng phi thường đó đã được truyền đi rộng rãi khắp nước Nhật và khiến số lượng doanh nhân muốn học tập “phong cách kinh doanh Inamori” tăng vọt.Hiện nay, Nhật Bản đang bước vào thời kì chuyển đổi vô cùng mạnh mẽ. Dân số giảm, dân số bị già hoá; quá trình toàn cầu hoá kinh doanh đang bước vào giai đoạn phát triển như vũ bão. Bởi vậy, vai trò của chính trị đối với quản lý đất nước cũng dần thay đổi. Có rất nhiều người gật đầu đồng ý với quan điểm Nhật Bản phải thay đổi, nhưng câu hỏi “Làm thế nào để thay đổi?” vẫn chưa được trả lời.Khi lúng túng, phân vân không biết xử lý một việc gì đó như thế nào, có một nguyên tắc bất di bất dịch là hãy quay trở về điểm xuất phát. Quốc gia là gì? Kinh doanh là gì? Chính trị là gì? Doanh nghiệp là gì?Chúng tôi nghĩ rằng ở thời đại này, có lẽ chẳng có ai đưa ra những câu hỏi mang tính gốc rễ, căn nguyên giống như vậy. Câu hỏi tuyệt đối không được phép quên là “Bản chất của doanh nhân là gì?”Sứ mệnh của doanh nhân rốt cuộc là gì? Là tăng lợi nhuận? Khiến cho việc kinh doanh của công ty kéo dài mãi mãi? Đương nhiên, đây đều là những mục tiêu quan trọng mà bất cứ ai làm kinh doanh đều hướng đến, cũng có thể nói đó là sứ mệnh của cả công ty. Chúng tôi muốn thử tìm kiếm câu trả lời cho câu hỏi đó với tư cách là một doanh nhân và muốn đổi câu hỏi “Doanh nhân là gì?” thành “Nếu là một doanh nhân thì nên là một con người như thế nào?”“Phương pháp luận về người lãnh đạo cao nhất” của ngài Inamori đã thay đổi bản chất của doanh nhân, từ đó phát triển doanh nghiệp. Những doanh nhân tham gia khoá học Morikazu đã có trải nghiệm như vậy cho chính mình: vừa tự cổ vũ bản thân, vừa thử “nỗ lực không thua kém bất kỳ ai” theo lời ngài Inamori. Nỗ lực phấn đấu từng ngày và chiến đấu với chính bản thân mình của họ khiến chúng tôi thực sự xúc động mỗi lần nhớ lại. Chúng tôi muốn mang lại một làn gió mới, mạnh mẽ, quyết liệt cho những doanh nghiệp vừa và nhỏ đang ngày đêm cố gắng bằng cách mang đến cho họ câu trả lời cho câu hỏi “Doanh nhân là gì?” thông qua cuốn sách nàyChương I nói về những đóng góp của ngài Inamori, chương II kể về câu chuyện của bảy người học trò của ngài và ở chương III, chúng tôi sẽ gửi gắm tới bạn đọc suy nghĩ của mình về câu hỏi “Doanh nhân là gì?” Mong rằng sau khi đọc cuốn sách này, độc giả sẽ ý thức được “Doanh nhân là gì?” một cách sâu sắc hơn và tự trang bị cho mình những kỹ năng để trở thành một doanh nhân tài giỏi.', 160000)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (3, N'2', N'Leo Ra Khỏi Hang Thỏ - Hopping Over The Rabbit Hole', N'Anthony Scaramucci', N'images\leorakhoihangtho.jpg', N'2', 9999, N'LEO RA KHỎI HANG THỎ - Vực dậy công ty khốn khó bằng tư duy khác biệt

Thương trường như chiến trường

Bạn có biết: Một nửa các doanh nghiệp sẽ biến mất chỉ trong năm đầu tiên hoạt động, 80% các doanh nghiệp mới sẽ thất bại trước kỷ niệm năm năm thành lập? Ở mốc 10 năm, 96% công ty sẽ thất bại. Chỉ 4% doanh nghiệp còn lại sống sót được cả thập kỷ! Thậm chí những doanh nghiệp 100 năm cũng có thể bị sụp đổ đấy (Bạn còn nhớ Lehman Brothers chứ?), nhưng điều đó không có nghĩa là bạn sẽ bất bại.

Nếu bạn có cơ hội làm việc với hàng trăm ngàn chủ doanh nghiệp, từ những tỷ phú lâu đời cho đến người mới bắt đầu sự nghiệp, bạn sẽ thấy: 80% thành công là do tâm lý và 20% là từ quy trình làm việc. Bạn có thể hướng dẫn ai đó mọi chiến lược, nhưng nếu tâm trí họ bị nỗi sợ hãi, lo lắng và tức giận quá mức chi phối, họ sẽ tự hủy hoại chính mình hoặc kéo theo một làn sóng hủy diệt phía sau họ. Ở những trang sách Leo ra khỏi hang thỏ, Anthony sẽ vạch ra một số chiến lược “sát thủ” nhưng quan trọng hơn hết, anh ấy cũng tiết lộ tâm lý chiến thắng.

Động cơ là thứ rất quan trọng và nếu bạn có thể nhớ là phải yêu khách hàng của mình, chứ không phải sản phẩm hay dịch vụ của bạn, bạn sẽ giành chiến thắng lâu dài. Sản phẩm và dịch vụ sẽ bị hạ bệ và thay thế, nhưng nếu bạn luôn nỗ lực để tìm ra cách thức độc đáo và sáng tạo để đáp ứng nhu cầu của khách hàng, bạn sẽ có được khách hàng trung thành thực sự, chứ không đơn thuần là những khách hàng cảm thấy hài lòng. Người khách hàng cảm thấy thỏa mãn với sản phẩm, dịch vụ của bạn sẽ dễ từ bỏ bạn, nhưng những khách hàng trung thành sẽ ở bên bạn đến cùng.

Vậy nên, điều cần thiết để trở nên thật sự thành công trong kinh doanh, phát triển công ty và mang lại sự thịnh vượng đích thực cho bản thân, cho các cổ đông và cho cả nhân viên của bạn là gì? Câu trả lời cho câu hỏi này rất đơn giản nhưng cũng không kém phần sâu sắc. Bạn phải luôn khắc ghi trong đầu rằng: Tìm cách giúp đỡ những người khác nhiều hơn bất cứ ai có thể tưởng tượng được! Tìm cách liên tục tăng thêm giá trị. Đó chính xác là lý do hội nghị SALT của Anthony luôn đạt thành tích vượt mức tiêu chuẩn chung từ năm này qua năm khác.

Leo ra khỏi hang thỏ - Tinh thần đấu sĩ bất diệt

Chủ doanh nghiệp là những đấu sĩ vì khi họ tham gia giao tranh càng lâu thì xác suất tử vong của họ càng lớn. Phải có một tâm lý vững mạnh mới có thể bước vào đấu trường và nắm được lợi thế. Vài người có thể nói rằng bạn cần một chút điên rồ. Nhưng những đấu sĩ không bận tâm đến những thứ thuộc về xác suất. Họ chỉ bước vào trận đấu và dâng hiến toàn bộ lòng quyết tâm và sự hy sinh cần thiết – ngày qua ngày, bất kể nắng mưa. Đó chính là sự tương đồng mà tất cả các nhà kinh doanh nên có, bởi vì chúng ta đã biết mình cần kỹ năng và tính cách gì để thành công.

Leo ra khỏi hang thỏ truyền tải tinh hoa của tinh thần đấu sĩ bằng câu chuyện sâu sắc và đầy cảm hứng của Anthony. Anh bước vào công cuộc tái thiết công ty sau cuộc khủng hoảng tài chính, để rồi giành giải Doanh nhân của năm do công ty Ernst and Young tổ chức năm 2011. Bạn sẽ đánh giá cao sự thẳng thắn khi bàn luận về những tháng ngày đen tối của anh ấy. Tuy nhiên, anh ấy không để những ngày tháng khó khăn đó định hình cuộc đời mình. Anh luôn xem những thử thách là động lực để tìm ra lối đi, động lực để phát triển, động lực để học hỏi, động lực để tư duy thoát khỏi lối mòn. Anthony là một tấm gương phi thường chứng minh rằng điều gì cũng có khả năng xảy ra khi chính bạn không chấp nhận bất cứ thất bại hay lời bào chữa nào từ bản thân cũng như những người cộng sự cùng thực hiện nhiệm vụ.

Thành công là công việc khó khăn, và lo lắng, và những trục trặc nhỏ có thể biến thành thảm họa chỉ với một bước sai lầm. Cuốn sách này chỉ cho bạn cách sử dụng nghịch cảnh làm lợi thế cuối cùng của bạn và xây dựng các kỹ năng cần thiết để ứng phó hiệu quả với những điều không mong đợi:

- Học cách đối phó với các sự kiện không lường trước

- Lập kế hoạch dự phòng chiến lược A và sau đó là kế hoạch dự phòng B

- Rèn luyện bản thân để phản ứng theo cách hiệu quả nhất

- Nội dung các bài học kinh nghiệm của một nhà lãnh đạo trong lĩnh vực kinh doanh...

Bạn đang nắm trong tay cơ hội để đúc kết thật nhiều những bài học khôn ngoan từ những trang sách này, bởi vì bạn chuẩn bị học hỏi từ một người đàn ông “nói là làm”. Và bạn có muốn bỏ lỡ cơ hội này không?', 162000)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (4, N'2', N'Vòng Đời Sản Phẩm Tinh Gọn - The Lean Product Lifecycle', N'Craig Strong', N'images\vongdoisanpham.jpg', N'2', 9999, N'Vòng đời sản phẩm tinh gọn - Cuốn sách dành cho những “kẻ thay đổi cuộc chơi”

Trong bối cảnh thế giới đang thay đổi từng ngày, mỗi công ty phải có khả năng đổi mới sáng tạo và duy trì tăng trưởng để giữ vững lợi thế cạnh tranh. Vòng đời sản phẩm tinh gọn là cuốn sách dành cho những “kẻ thay đổi cuộc chơi” – những người muốn kiến tạo hành trình đổi mới và tăng trưởng bền vững. Những kẻ thay đổi cuộc chơi này có thể là bất kỳ ai: công nhân, giám đốc sản phẩm (product manager), chủ sở hữu sản phẩm (product owner), nhà thiết kế, kỹ sư phần mềm, giám đốc đổi mới, giám đốc công nghệ số, giám đốc marketing và kinh doanh, giám đốc tài chính, quản lý cấp cao và những người nằm trong ban điều hành.

Vòng đời sản phẩm tinh gọn là một cuốn sách cung cấp các phương pháp và công cụ để phát triển các sản phẩm và mô hình kinh doanh mới sáng tạo trong khi quản lý danh mục đầu tư cốt lõi của bạn. Thực hiện theo 6 giai đoạn chính của vòng đời sản phẩm: Ý tưởng - Khám phá - Hợp lệ - Phát triển - Bền vững - Quay lại. Và khám phá cách phát triển sản phẩm theo giai đoạn cuộc đời của chúng và đảm bảo đầu tư đúng mức cho từng sản phẩm được giao. Có một hướng dẫn từng bước về các phương pháp phát triển sản phẩm tốt nhất bằng cách sử dụng các ví dụ và nghiên cứu điển hình từ một số công ty và công ty khởi nghiệp.

Vòng đời sản phẩm tinh gọn giúp bạn:

- Đưa một sản phẩm mới từ ý tưởng đến quy mô trong thị trường.

- Hiểu sự khác biệt giữa việc thực hiện trên các sản phẩm đã thành công trên thị trường và việc tìm kiếm các mô hình kinh doanh có lãi cho các sản phẩm mới.

- Sử dụng các công cụ và phương pháp phù hợp để xác nhận các ý tưởng sản phẩm và mô hình kinh doanh mới.

- Hiểu cách quản lý các sản phẩm trưởng thành và loại bỏ các sản phẩm cũ bằng cách sử dụng các nguyên tắc đổi mới tinh gọn.

Và nếu bạn là:

- Người đang đảm nhiệm vai trò quản lý hoặc phân phối sản phẩm trong một startup/doanh nghiệp lâu năm,

- Người đang tìm cách ứng dụng đổi mới sáng tạo tinh gọn (lean innovation) vào công việc hằng ngày,

- Một nhà lãnh đạo mong muốn khơi nguồn đổi mới sáng tạo trong công ty,

- Người đang tìm kiếm những cách thức đổi mới sáng tạo để phát triển công ty và quản lý sản phẩm trong danh mục của mình.

- Và dĩ nhiên nếu bạn không thuộc bất cứ nhân vật nào, mà chỉ đơn thuần muốn phát triển bản thân, chuẩn bị thêm kiến thức và kinh nghiệm vững chắc hơn thì cũng sách cũng dành cho bạn…

Hay bất cứ ai muốn tạo ra những sản phẩm đáp ứng đúng nhu cầu của khách hàng, Vòng đời sản phẩm tinh gọn rất đáng để bạn dành thời gian trải nghiệm nó đấy. Hy vọng bạn sẽ thích hành trình đầy thú vị này!', 162000)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (5, N'3', N'Uninvited: Nghĩ Thông Suốt, Đời Nhẹ Như Mây', N'Lysa TerKeurst', N'images\nghithongsuot.jpg', N'3', 9999, N'Uninvited: Nghĩ thông suốt, đời nhẹ như mây

Kẻ thù luôn muốn chúng ta cảm thấy bị từ chối, bị bỏ rơi và cô đơn...

Trong Nghĩ thông suốt, đời nhẹ như mây, tác giả Lysa TerKeurst chia sẻ những trải nghiệm cá nhân sâu sắc của mình về sự từ chối — từ nhận định về người phụ nữ có thân hình săn chắc hoàn hảo một mình một góc cho đến tuổi thơ vô cùng đau đớn bị cha bỏ rơi. Lysa TerKeurst tập trung vào để kiểm tra một cách trung thực gốc rễ của sự từ chối, cũng như khả năng sự từ chối có thể đầu độc các mối quan hệ từ trong ra ngoài, bao gồm cả mối quan hệ của chúng ta với Chúa.

Với sự am hiểu sâu rộng về Kinh thánh, bằng một đức tính trung thực dễ bị tổn thương nhưng không kém phần hóm hỉnh, Lysa TerKeurst sẽ giúp bạn:

• NGỪNG CẢM THẤY BỊ BỎ RƠI bằng cách tin rằng ngay cả khi bạn bị người khác coi thường, bạn vẫn được Chúa lựa chọn.

• THAY ĐỔI KHUYNH HƯỚNG SUY SỤP hoặc kiểm soát hành động của người khác bằng cách dựa vào lòng tôn kính Chúa để xử lý tổn thương của bạn.

• BIẾT CHÍNH XÁC NHỮNG GÌ CẦN CẦU NGUYỆN trong mười ngày tới để ổn định tâm hồn và khôi phục sự tự tin của bạn khi bị từ chối.

• VƯỢT QUA HAI NỖI SỢ HÃI CỐT LÕI nuôi dưỡng sự bất an của bạn bằng cách am hiểu bí mật của sự sở hữu.

Nghĩ thông suốt, đời nhẹ như mây nhắc nhở rằng chúng ta đã được định sẵn cho một tình yêu không bao giờ có thể bị suy giảm, hoen ố, lung lay hay chiếm đoạt - một tình yêu không bị chối từ.

Lời khen tặng dành cho Nghĩ thông suốt, đời nhẹ như mây:

“Đây quả là cuốn sách không thể rời mắt, nó hấp dẫn từ trang đầu đến trang cuối! Là người từng phải chịu nhiều tổn thương, Lysa đã chân tình gợi mở cách thức kiểm soát những nỗi sợ hãi, khước từ, bất an và lo âu mà tất cả chúng ta đều thi thoảng trải qua. Chúng tôi dám cá rằng bạn chưa bao giờ đọc cuốn sách nào như thế này trước đây. Vậy nên, đừng bỏ lỡ nó nhé!” – Tiến sĩ Les & Tiến sĩ Leslie Parrott, Đồng tác giả cuốn Saving Your Marriage Before It Starts

---

“Lysa TerKeurst đã rất tài tình và chẳng ngại tỏ hết lòng mình khi kể về những tranh đấu, vật lộn của chính bản thân để khích lệ và củng cố sức mạnh nội tại trong chúng ta. Đây có lẽ là một trong những cuốn sách hiếm hoi lột tả chi tiết về bản chất con người, đồng thời phân tích kỹ càng những bài học đắt giá trong Kinh Thánh mà tôi từng được đọc.” – Chris Hodges, Mục sư trưởng; Tác giả cuốn Fresh Air và cuốn Four Cups

---

“Là người từng phải đối mặt với sự khước từ vô số lần, Nghĩ thông suốt, đời nhẹ như mây là dòng nước ngọt lành cho tâm hồn khô cháy của tôi. Trong hành trình theo gót Chúa Giê-su, tôi vẫn thường kêu van mong cầu được chữa lành và tìm kiếm những lời Chân lý để nương náu. Cuốn sách này cung cấp những lời chân lý đó, đồng thời, nó còn dạy tôi nhiều bài học về lòng vị tha. Nếu bạn đang tìm kiếm hy vọng, hãy đọc nó!” – Tara C.', 135000)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (6, N'3', N'Từ Bóng Tối Đến Ánh Sáng', N'J.Krishnamurti', N'images\tubongtoi.jpg', N'3', 9999, N'Ta cô độc trên đường, không một bóng người trước mặt; có thể nhiều bóng người sau lưng ta, nhưng ta chẳng mong muốn nhìn lại những nỗi đau kinh hoàng của quá khứ. Ở một trong hai phía của đại lộ dài dường như vô tận này của cuộc đời ta, hoang mạc tiêu điều vẫy gọi ta gia nhập sự tĩnh lặng khốn khổ của nó – cái chết. Trước mặt ta, con đường kéo dài hết dặm này đến dặm khác, năm này qua năm khác, thế kỉ này sang thế kỉ khác, trắng xóa trong ánh mặt trời cháy rực nhẫn tâm; con đường liên tục nâng lên theo một độ dốc không thể cảm nhận được. Màu trắng của con đường nhọc nhằn này, cùng với ánh mặt trời chói chang, khiến ta gần như mù lòa; nào, hãy tìm chỗ để ta có thể cho đôi mắt mệt mỏi nghỉ ngơi, khắp mọi nơi là đại dương mênh mông của ánh sáng chói lóa, rành rành trong sự mãnh liệt của nó.

Quyển Từ Bóng Tối Đến Ánh Sáng là bộ sưu tập các bài văn vần và ngụ ngôn từ thời kỳ đầu của J. Krishnamurti thể hiện các quan điểm về cách sống, mang ta ra từ những sai lầm, mù quáng trong bóng tối để đến dần tới ánh sáng của trí tuệ và yêu thương.

Jiddu Krishnamurti là một trong những triết gia, nhà tâm linh vĩ đại nhất mà thế giới từng biết. Ông đã truyền cảm hứng cho Eckhart Tolle, Joseph Campbell, Alan Watts và vẫn tiếp tục truyền cảm hứng cho hàng ngàn người ngày nay. Song ông không hề thuộc về một tôn giáo, tổ chức hay quốc gia nào. Ông cũng không theo bất cứ trường phái chính trị hay tôn giáo nào. Trái lại, ông luôn cho rằng đây chính là những yếu tố gây chia rẽ con người và mang đến cung đột. Chính cách nhìn này đã khiến những lời dạy của ông đặc biệt thiết thực trong thời đại ngày nay.', 60000)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (7, N'4', N'Bé Biết Nhiều Nghề - Ai Dùng Kéo? (2 Tuổi)', N'Kim Mihye', N'images\bebietnhieu.jpg', N'4', 9999, N'Bé ơi, sau này lớn lên bé muốn làm nghề gì nào?

Bé có biết:

Ai dùng kéo không nào? Đó là bác làm vườn, dùng kéo tỉa cây; là cô thợ cắt tóc, dùng kéo cắt từng lọn tóc; là chú bán kẹo kéo, dùng kéo cắt kẹo cho chúng mình. 

Ai dùng cọ nữa nhỉ? Đó là hoa sỹ cầm cọ vẽ; là chú thợ sơn đang dùng chổi lông, quét tường; là nhà thư pháp cầm bút lông vẽ nét đậm, nét cong.

Ai thì dùng búa vậy? Đó là bác thợ mộc dùng búa, đóng đinh, dựng nhà vững chắc; là nhà điêu khắc dùng búa, đục đẽo tượng; là bác thợ giầy dùng búa, biến giày cũ thành giày mới.

Ôi, còn bé, bé muốn sau này mình làm công việc gì nhỉ?', 31200)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (8, N'4', N'Bộ Hạt Giống Tâm Hồn Dành Cho Thiếu Nhi (Bộ 5 Cuốn)', N'Nhiều tác giả', N'images\hatgiongtamhon.jpg', N'4', 9999, NULL, 238000)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (9, N'5', N'Nghệ Thuật Và Nghệ Nhân Vùng Kinh Thành Huế
', N'Léopold Michel Cadière, Edmond Gras', N'images\nghethuatvanghenhan.jpg', N'5', 9999, N'Mỹ thuật hay nghệ thuật nói chung, thật ra, chưa bao giờ là lĩnh vực nằm ngoài “vòng tay” của văn hóa, “nơi” đã sản sinh ra nó. Chính vì thế, những hiểu biết quán xuyến và sâu sắc về mặt văn hóa luôn giúp chúng ta dễ dàng hơn trong những liên tưởng đối sánh và phân tích, khi nghiên cứu lĩnh vực vốn  được xếp vào phạm trù của cái đẹp. Nguyên tắc trên vẫn luôn là thuộc tính cần thiết, không riêng gì trong lĩnh vực nghiên cứu hay phê bình nghệ thuật, mà chúng còn liên quan mật thiết đến cả hoạt động sáng tác nữa.

Nghệ thuật và nghệ nhân vùng kinh thành Huế (L’Art à Hué) là một ấn phẩm đặc biệt của B.A.V.H (Số 1/1919), sau đó được in lại trở thành một tác phẩm độc lập, bề thế, có ví trí quan trọng trong thư mục nghiên cứu nghệ thuật Huế, bao gồm cả nội dung lẫn nhiều phụ bản màu, đen trắng. Đây có thể xem là một trong những công trình nghiên cứu khoa học về nghệ thuật tạo hình Huế đầu tiên và hiếm hoi được công bố rộng rãi từ năm 1919. Chúng đã trở thành tư liệu quý giá để người đời nay có thể bổ sung, đối sánh, mà qua bao nhiêu binh biến và thời gian, nhiều di tích, nhiều tác phẩm đến nay đã không còn.

Bố cục của tác phẩm này được cấu tạo thành nhiều phần, mở đầu bằng một chương tổng quát trình bày về nghệ thuật ở Huế của L. Cadière; và phần khác viết về thành phố, nhà cửa, đồ đạc trang trí nội thất Huế của Edmon Gras. Sau những nhận định tổng quát về nghệ thuật Huế, tác giả Cadière bắt đầu tiếp cận một cách chi tiết với từng phần cụ thể, liên quan đến nghệ thuật tạo hình.

- Phần I khảo tả về các dạng thức trang trí hình học với nhiều phụ bản, nhằm dẫn dắt người đọc tiếp cận với những mô tả sinh động bằng những bản vẽ tái hiện một cách chân thật và chi tiết đến từng góc nhỏ.

- Phần II viết về mẫu chữ Hán, với 18 phụ bản minh họa, đánh số từ 36 đến 53

- Phần III đề cập đến đề tài tĩnh vật và những điển tích với phần bình luận và 17 phụ lục. Đây cũng là chủ đề phổ biến nhất trong trang trí mỹ thuật.

- Phần IV khảo tả mỹ thuật Huế về đề tài thực vật, với hoa và lá, cành và quả cùng 48 phụ bản để minh họa.

- Phần V khảo tả những đề tài liên quan đến hệ động vật, với 95 phụ bản màu cũng như đen trắng.

- Phần cuối tác giả dành cho đề tài phong cảnh với 7 phụ bản minh họa bằng màu. Đây thực sự là những bức tranh giúp độc giả có được cái nhìn tổng quát về những di tích danh thắng đặc trưng, đầy ấn tượng của Huế.

Nguyễn Hữu Thông', 239000)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (10, N'1', N'Mùa Nắng Phai', N'Nguyễn Quốc Dũng', N'images\muanangphai.jpg', N'5', 9999, N'Cái khác lạ dễ nhận ra nhất ở cuốn sách ảnh Mùa Nắng Phai đó là chất hội họa bảng lảng trong từng tác phẩm.


Nguyễn Quốc Dũng vốn là người vẽ, đi học vẽ, hành nghề vẽ, có nhiều triển lãm tranh riêng chung trong ngoài nước. Có thời gian dài làm hội họa rồi mới “bỗng dung” chuyển “gam” sang nhiếp ảnh. Thế nên cũng là dễ hiểu khi đằng sau người chụp luôn có bóng hình người vẽ.
Chất hội họa trong ảnh của tác giả nói chính xác phải là chất đồ họa. Tức là thiên về mảng phẳng, ít chi tiết, bố cục khúc chiết gồm 2 hoặc 3 miếng lớn, vuông bằng sổ thẳng. Ví dụ một (hoặc một nhóm) nhân vật đứng trước một cái nền nào đó, có thể là bức tường, có thể là cánh đồng, mặt ao hoặc cơn mưa…
Nhiếp ảnh chỉ có hai con đường, một là nhiếp ảnh báo chí, hai là nhiếp ảnh nghệ thuật. Với nhiếp ảnh báo chí thì quan trọng nhất là chụp gì chứ không phải chụp thế nào. Tức là nội dung quan trọng hơn hình thức. Ngược lại ảnh nghệ thuật thì hình thức quan trọng hơn nội dung, cách chụp quan trọng hơn đối tượng được chụp. Nói cách khác, với ảnh nghệ thuật thì màu, bố cục, ánh sáng, đậm nhạt… là chính. Vì vậy mà ảnh nghệ thuật gần hội họa. Bởi vì hội họa chính là hình thức, nhân vật kỹ sư được vẽ ra sao chứ không phải bức tranh anh kỹ sư thì hay hơn bức tranh bác nông dân.
Trong những tác phẩm của mình, tác giả cũng hiểu điều này nhưng anh ấy vẫn muốn “tham lam”, vẫn muốn làm cả hai, cả hình thức và nội dung. Cho nên cái nội dung – áo dài được chọn là đề tài xuyên suốt. Mùa Nắng Phai, một cái tên gợi không thôi, những cô gái mặc áo dài cũ, yếm váy đụp cũ trên một bối cảnh cũ, nhà Bắc Bộ 3 gian 2 chái, cầu ao đá, giếng chùa, cổng làng, ao bèo; những vẻ đẹp cũ, không khí cũ yên bình, mùa nắng cũ hay mùa của thời gian đã qua… Hóa ra phong cảnh làng quê, những cô gái trẻ đẹp nõn nà, những lụa bạch, yếm phai, những cơn mưa, những đồng lúa, những ao bèo, những ánh sáng bóng tối, những thân phận, những nỗi niềm… cũng chỉ là nguyên liệu để tác giả làm mình, làm Mùa Nắng Phai của riêng mình.  ', 378000)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (11, N'2', N'Content Đúng Là King (Tái Bản 2021)
', N'Dan Norris', N'images\contentdung.jpg', N'3', 99, N'Xây dựng một doanh nghiệp hàng triệu đôla, mà không tốn 1 đồng quảng cáo. Tại sao không? Với những tuyệt chiêu Content Marketing trong cuốn bí kíp này, bạn sẽ còn làm được nhiều hơn thế!

Cuốn sách này sẽ giúp bạn đạt được một số điều:
Trước tiên, bạn sẽ hoàn toàn hiểu được content marketing là gì và làm thế nào để một chiến lược content marketing trở nên hiệu quả. Bạn có thể sẽ nhận ra rằng mình không phù hợp với công việc này, hoặc sẽ nhảy cẫng lên đầy hứng khởi. Dù thế nào đi nữa, bạn vẫn cần phải hiểu về content marketing trước khi quyết định mọi thứ.

Hai là bạn sẽ học được một mô hình ba bước đơn giản để thực hiện content marketing thành công. Nó sẽ giúp bạn tập trung vào những điều đúng đắn, chứ không phải cứ cặm cụi “viết hằng ngày”.

Và hơn cả, tác giả sẽ khiến cho cuộc sống của bạn đơn giản hơn bằng việc cung cấp một số mô hình và tư liệu quý giá mà bạn có thể dễ dàng tải về. Bạn có thể ngay lập tức áp dụng vào công việc kinh doanh của mình, để xây dựng được chiến lược content
marketing hiệu quả.

Dù bạn là một blogger, nhà tiếp thị nội dung, doanh nhân hay quản lý marketing, cuốn sách này sẽ giúp bạn thấy được phần thưởng bạn xứng đáng được nhận từ những nỗ lực content marketing của mình.', 71200)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (12, N'2', N'Thịnh Vượng Tài Chính Tuổi 30 - Tập 2 (Tái Bản 2022)', N'Go Deuk Seong', N'images\thinhvuongtaichinh.jpg', N'3', 999, N'Thịnh Vượng Tài Chính Tuổi 30 - Tập 2 (Tái Bản 2022)Là kết quả của sự kết hợp nhuần nhuyễn giữa trí tuệ và kỹ năng quản lý tài chính từ bước đi của một nhà hoạch định tài chính nổi danh của ngân hàng SC First Hàn Quốc được tập hợp trong cuốn sách này. Thịnh Vượng Tài Chính Tuổi 30 - Tập 2 chú trọng đến những bước chuẩn bị về tài chính, và sự chuẩn bị đó được áp dụng vào đời sống thực tế như thế nào. Có thể nói cuốn sách này là bản thực hành của con người trước những việc cần chuẩn bị cho cuộc sống sau này, những hiện thực khốc liệt, tính cấp bách, tính tất yếu và mức độ cẩn trọng của công việc chuẩn bị cho những tháng năm về hưu.Đại diện Bảo hiểm nhân thọ AIG – Kim Seongil đã nhận định: “Nếu được đọc cuốn sách này sớm, con đường đến thành công của bạn sẽ bằng phẳng hơn. Đây không phải là cuốn sách dạy làm giàu hay liệt kê cách quản lý tài chính đơn thuần. Thông qua việc mô tả kinh nghiệm của năm nhân vật đang làm những công việc bình thường, cuốn sách sẽ lần lượt giảng giải về những vấn đề mà bạn gặp phải trong từng giai đoạn cuộc đời và hướng dẫn bạn cách quản lý tài chính trong giai đoạn đó. Các bạn thanh niên độ tuổi đôi mươi mới bước vào đời, các bạn độ tuổi ba mươi đang trong giai đoạn lập nghiệp, những người độ tuổi bốn mươi với vai trò người chủ gia đình, cùng những công chức độ tuổi năm mươi chuẩn bị về hưu…”Tiền bạc từ xưa đến nay luôn là vấn đề khiến con người suy nghĩ và phiền muộn nhiều nhất. Không sử dụng một mệnh lệnh thức, mà nhờ cách hành văn theo lối tiểu thuyết, tạo cho người đọc cảm giác gần gũi, thân quen, tác giả khéo léo mô tả cuộc sống của con người với việc chi tiêu cá nhân trong ngày. Từ đó nhẹ nhàng truyền tải đến người đọc những nguyên tắc ý nhị, sâu xa nhất, những ý tưởng và nguồn năng lượng tràn đầy. Chỉ đơn thuần là lời giảng, là bài học của Giáo sư Masu mà như một phép thần thông những khó khăn trong quá trình quản lý tài chính được gỡ bỏ một cáh nhẹ nhàng, và mục tiêu về một cuộc sống thịnh vượng trong tương lai không chỉ còn là mơ ước đối với mỗi người nữa.Và theo chính tác giả Go Deuk Seong thì “mục đích cuối cùng của quản lý chi tiêu là đạt đến sự tự do về mặt tài chính, cả đời không phải đau đầu vì tiền, lúc nào cần đến tiền là có để dùng ngay. Đến lúc về hưu chúng ta cũng cần phải được tự do về tài chính, chỉ có như vậy ta mới ứng phó được với những vấn đề sau khi về hưu. Cần biết rằng khoản tiền 1.000 NDT ta đã tiêu khi còn trẻ nếu để dành đến lúc về hưu sẽ có ý nghĩa và tác dụng lớn lao hơn rất nhiều”. Như một con ong chăm chỉ, như một chú kiến cần mẫn, siêng năng, tích lũy từng chút mật ngọt cho đời. Công việc vất vả và hi sinh của ngày hôm nay sẽ được trả thích đáng cho một tương lai tươi sáng, an bình và thịnh vượng sau này.Tất cả rồi sẽ qua đi, chỉ có thời gian là thước đo chính xác nhất kết quả sự nghiệp của mỗi người. Thành công và thịnh vượng hay không, con đường làm giàu 30 năm hay thậm chí chỉ mất hơn 10 năm cũng đều là con đường do bạn phác thảo, vẽ ra và đi qua. Thịnh Vượng Tài Chính Tuổi 30 - Tập 2 sẽ là hành trang, là bản thiết kế chi tiết cho cuộc sống hạnh phúc của bạn mai sau.', 79200)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (13, N'2', N'Cái Bắt Tay Triệu Đô - The Million Dollar Handshake
', N'Catherine Molloy', N'images\caibattaytrieudo.png', N'2', 850, N'Bảy giây - bạn có thể đạt được những gì trong từng này thời gian? Thật ra chỉ trong bảy giây ngắn ngủi, bạn đã có thể ghi ấn tượng khó phai với người bạn gặp gỡ lần đầu tiên. Nếu bạn đến gặp ai đó với hy vọng được tuyển dụng, ký kết hợp đồng làm ăn, hoặc thậm chí là tìm bạn đời, ấn tượng ban đầu là hết sức quan trọng và bạn muốn để lại dấu ấn thật tốt đẹp.

Vậy ấn tượng ban đầu đến từ đâu? Tác giả Catherine Molly khẳng định: “Trước cả khi bạn mở lời, cách bạn đi đứng, bắt tay, giao tiếp bằng mắt và kết nối với đối phương đã nói lên rất nhiều điều về bạn”. Và vì thế, chuyên gia giao tiếp này đã chia sẻ những bài học đắt giá về ngôn ngữ cơ thể và phong cách hành vi trong cuốn sách “Cái bắt tay triệu đô” (tựa gốc “The Million Dollar Handshake”), nhằm giúp bạn tạo được ấn tượng tốt đẹp trong mắt người khác chỉ trong vòng bảy giây.

Bản thân tác giả chính là một bằng chứng sống. Trong năm đầu tiên điều hành công ty riêng, Catherine Molloy đã chốt được số hợp đồng có giá trị lên tới một triệu đô-la, tất cả đều bắt nguồn từ những cuộc gặp gỡ trực tiếp đã tạo được ấn tượng tốt với khách hàng tiềm năng, và mỗi cuộc gặp đều bắt đầu bằng cái bắt tay tự tin, chủ động cùng phong cách giao tiếp phù hợp.

Bắt tay như thế nào là đúng cách? Trong chương 1, Catherine Molloy giải thích về cách bắt tay thể hiện sự tự tin của bản thân và lòng tôn trọng dành cho đối phương.

Trong chương 2, bà giới thiệu đến độc giả mọi khía cạnh có liên quan đến ngôn ngữ cơ thể như ánh mắt, nét mặt, giọng nói, cử chỉ… cũng như sức ảnh hưởng của những yếu tố này đối với cơ hội thành công.

Chương 3 bàn về “phong cách hành vi”, một phương tiện giao tiếp hữu hiệu bên cạnh lời nói và các tín hiệu phi ngôn từ. Bạn là người tự tin hay ít nói và suy nghĩ thận trọng? Bạn có muốn trở thành tâm điểm của sự chú ý không? Bạn thích tán gẫu hay muốn đi thẳng vào vấn đề? Theo Catherine, khi biết về phong cách hành vi của bản thân và của người khác, bạn sẽ có thể điều chỉnh cách giao tiếp của mình, khiến đối phương cảm thấy thoải mái và từ đó tăng hiệu quả kết nối.

Chương 4 tập trung vào “tư duy triệu đô”, lối tư duy giúp chúng ta có cái nhìn và niềm tin tích cực hơn về bản thân mình, người khác cũng như các tình huống ta gặp phải. Trong chương 5, tác giả chia sẻ kinh nghiệm làm việc trong môi trường quốc tế, giúp bạn chuẩn bị sẵn sàng cho các cuộc gặp gỡ với những người đến từ nhiều nền văn hóa khác nhau.

Ở chương 6, bạn đọc sẽ khám phá “khuôn khổ kết nối có ý thức”, hay nói cách khác là trạng thái tỉnh thức, luôn toàn tâm toàn ý khi giao tiếp và kết nối.

Không chỉ có cách dẫn dắt súc tích, hấp dẫn và chân thật, Catherine Molloy còn chia sẻ trong “Cái bắt tay triệu đô” những nghiên cứu tâm lý kinh điển, nhiều câu chuyện người thật việc thật, cùng những phần trắc nghiệm thú vị để bạn khám phá phong cách hành vi của mình.

Quyển sách này đặc biệt hữu ích cho các doanh nhân, các bạn sinh viên mới ra trường đang chuẩn bị phỏng vấn xin việc, nhân viên bán hàng và bất cứ ai thường xuyên giao tiếp trong công việc lẫn cuộc sống hằng ngày. Ấn phẩm sẽ giúp bạn tạo được ấn tượng tốt đẹp trong bảy giây tương tác đầu tiên và cả sau đó, nhằm tạo được sự kết nối mạnh mẽ và xây dựng các mối quan hệ sâu sắc cả trong công việc lẫn cuộc sống.

“Đây là quyển sách về việc bắt tay một triệu lần và thành công đàm phán được cả một triệu thoả thuận”, Catherine Molloy hứa hẹn.                  

Về tác giả

Catherine Molloy là chuyên gia giao tiếp kiêm diễn giả quốc tế về thuật lãnh đạo và kỹ năng bán hàng. Với 25 năm kinh nghiệm trong mảng kinh doanh, đào tạo và điều phối, Catherine đã đào sâu nghiên cứu về giao tiếp và ngôn ngữ cơ thể. Bà là nhà sáng lập kiêm giám đốc điều hành của Auspac Business Advantage - một công ty đào tạo đã được trao nhiều giải thưởng.

Catherine sở hữu chứng chỉ thực hành Lập trình ngôn ngữ tư duy (Neuro-linguistic Programming - NLP), đồng thời bà cũng là một nhà tư vấn có áp dụng mô hình tính cách DISC (Directing, Influencing, Stabilising, Complying). Catherine từng hai lần được trao Giải thưởng Quốc tế Stevie, trong đó có một giải về Giáo dục và Dịch vụ Khách hàng, một giải về Đổi mới Sản phẩm. Ngoài ra, bà còn nhận được Giải thưởng Khu vực của Viện Quản lý Úc dành cho nhà quản lý/chủ sở hữu xuất sắc của năm.', 108800)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (14, N'5', N'Chữa Lành Ánh Sáng Bản Thể
', N'Barbara Ann Brennan', N'images\chualanhanhsang.jpg', N'3', 110, N'Tôi tin rằng Barbara Brennan có thể dễ dàng được xem như một nhà chữa trị bằng bàn tay và thấu thị có ảnh hưởng nhất của thế kỷ 21. Có thể thấy rõ, công trình của bà mang tính tiên phong và đột phá. Các lý thuyết của Barbara Brennan về Trường Năng lượng Con người (HEF) đang được trích dẫn rộng rãi. Trên thực tế, các lý thuyết của bà về Trường Năng lượng Con người đã được ứng dụng và được xây dựng thành những thông tin giới thiệu chung về trường chữa trị năng lượng. Chúng đã đóng vai trò công cụ truyền tải thông tin và hướng dẫn đối với nhiều mô hình chữa trị bằng năng lượng mới được tạo ra gần đây. Các khía cạnh khác trong công trình của bà, như tầm quan trọng của chủ định rõ ràng, cũng đã được chứng minh là có ảnh hưởng sâu rộng. Tôi không mảy may nghi ngờ về ngôi trường của bà, về những buổi thực trình, các cuốn sách, các học viên, và tầm ảnh hưởng bao trùm của bà đã chạm đến hàng vạn nếu không muốn nói là hàng triệu cuộc đời trên thế giới.

Mọi người rõ ràng đã rất thích thú với những câu chuyện cuộc đời của Barbara. Họ muốn biết về thời thơ ấu, về khả năng chữa trị của bà, và về thế giới của những hiện tượng tâm linh vô hình mà bà có khả năng nhìn thấy và trải nghiệm. Các chủ đề này thường được nêu lên trong các câu hỏi từ phía các học viên và cử tọa tham dự các bài giảng của bà. Barbara đã dẫn dắt người nghe qua nhiều chủ đề, từ các vấn đề cá nhân cho đến các vấn đề toàn cầu, cùng một loạt các chủ đề khác, trong đó có: sức khỏe, chữa trị, tâm lý, tâm linh, các thiên thần, và ma quỷ. Bất kỳ chủ đề nào có tiềm năng đem lại lợi ích cho người khác đều được bà coi trọng.

Giờ đây, lần đầu tiên, độc giả sẽ được chính Barbara kể câu chuyện về cuộc đời bà. Bạn có thể cảm thấy một số chủ đề hơi cổ và thậm chí lạc hậu. Điều này hoàn toàn không nằm ngoài dự đoán nếu xét đến việc Barbara Brennan lớn lên trong thập niên 1940 và sống tại một trang trại ở bang Wisconsin. Bà thường chia sẻ rằng, trong quãng đời từ lúc thơ bé đến khi trưởng thành, cho đến khi rời nhà để vào đại học, bà không được tiếp xúc với nhiều thứ lắm - ngoại trừ những con bò. Barbara trải qua thời thơ ấu trong giai đoạn mà roi vọt vẫn là hình thức trừng phạt thường thấy ở hầu hết các bậc cha mẹ. Ngay cả trong giai đoạn trưởng thành của bà, mọi thứ đều rất khác so với thế giới ngày nay. Tuy nhiên, từ cả quan điểm toàn cầu lẫn quan điểm cá nhân, thông điệp mà Barbara truyền đạt vẫn vượt ra ngoài giới hạn của thời gian. Trên quan điểm toàn cầu, những thách thức mà nhân loại của ngày hôm nay đang phải đương đầu cũng giống hệt như những thách thức trong quá khứ. Trên quan điểm của cá nhân, với tư cách là những con người, tất cả chúng ta đều mong ước được sống cuộc sống có ý nghĩa và phát huy tối đa tiềm năng sáng tạo của mình.

Chữa lành Ánh sáng Bản thể tập trung vào các hiện tượng khiến cho Barbara Brennan trở nên khác biệt với những người khác trong lĩnh vực chữa trị. Xuyên suốt cuốn sách này, người đọc có thể dễ dàng nhận ra những suy nghĩ của Barbara trong quá trình bà đi qua những khác biệt đó và những gian truân mà bà đã vượt qua để hòa hợp với cả hai phương diện của bản thân - nhà khoa học và nhà chữa trị. Nhiều người trong chúng ta khao khát được nhìn thấy, cảm thấy và trải nghiệm thế giới vô hình; khao khát ấy có thể đến như một biểu hiện đơn giản của niềm mong mỏi muốn được liên hệ với một người thân yêu đã qua đời. Và đây chính là điểm làm hiển lộ một trong những tài năng lớn nhất của Barbara: khả năng tạo ra cầu nối giữa thế giới hữu hình và thế giới vô hình, và khả năng cho phép độc giả bước qua những thế giới đó cùng với bà.

Chữa lành Ánh sáng Bản thể xoay quanh quá trình sáng tạo để làm phát lộ cuộc đời mơ ước của bạn!

Trong Phần I, Barbara Brennan đã điểm lại cấu hình của Hệ thống Ý thức Năng lượng Con người (HECS). Kế đó, bà mô tả quá trình sáng tạo khi nó chảy qua Hệ thống Ý Thức Năng lượng Con người. Khi xung lực sáng tạo được giải phóng, chúng ta có khả năng hiện thực hóa ước mơ của mình. Thật không may, tất cả chúng ta đều có những tắc nghẽn làm ngăn chặn dòng chảy sáng tạo. Những chỗ tắc nghẽn này là những nơi mà năng lượng của chúng ta bị chặn lại do các thương tổn và chấn thương từng xảy ra trong thời thơ ấu. Chúng ngăn chặn không cho chúng ta tạo ra những gì mình muốn và xô chúng ta vào vòng luẩn quẩn của các khuôn mẫu lặp đi lặp lại. Barbara hướng dẫn chúng ta từng bước một giải phóng những chỗ tắc nghẽn đó. Khi các khối tắc nghẽn được giải phóng, năng lượng sáng tạo sẽ tự do tuôn chảy, và kết quả cuối cùng không chỉ là hiện thực hóa các khát vọng từ trái tim của chúng ta mà còn là ta sẽ có thêm nhiều tinh túy hơn, nhiều ánh sáng cốt lõi hơn.

Cuốn sách mang tính đột phá - Bàn tay Ánh sáng - từng giới thiệu với người đọc tác dụng vươn xa của Trường Năng lượng Con người như một công cụ để chúng ta trải nghiệm thực tại của mình. Tương tự như vậy, phần II của cuốn Chữa lành Ánh sáng Bản thể dẫn dắt độc giả vào một hành trình chưa từng có tiền lệ của vầng thứ tư, hay vầng tinh tú, của Trường Năng lượng Con người, soi sáng thế giới bí ẩn và thường bị hiểu nhầm này, đồng thời làm rõ những tác động sâu sắc của nó đối với chúng ta, với những mối quan hệ của chúng ta, và với nhân loại. Vầng thứ tư là cầu nối giữa thế giới vật lý ba chiều và các thế giới tâm linh cao hơn. Vầng thứ tư chứa đựng tất cả mọi thứ từ các vật thể cho đến các sinh thể và các hình thái tư duy. Đây là vầng của mối quan hệ, và như vậy chúng ta luôn luôn cùng sáng tạo với các cư dân của vầng thứ tư thông qua luật “giống nhau thì hấp dẫn nhau”. Vầng này cũng được biết tới như là thế giới tinh tú (astral world). Vì vầng thứ tư không tồn tại trong thực tại ba chiều, nên vầng này không thể thấy được bằng mắt thường. Thế nhưng từ thời xa xưa, nhiều nền văn hóa khác nhau đã mô tả và tiếp cận được với thế giới này.

Phần II bắt đầu với mô tả về cách thức hoạt động của Tri giác Cao cấp và cách nhận biết các vầng của Hệ thống Ý thức Năng lượng Con người. Trước khi có thể hiểu vầng thứ tư, chúng ta phải nhận thức được về nó! Kế đó, Barbara giải thích chi tiết về vầng thứ tư và nó vận hành khác với thế giới vật lý ra sao. Bà trình bày rất nhiều ví dụ từ thực tiễn chữa trị của bản thân mình, bao gồm cả các trải nghiệm của bà trong quá trình làm việc với một loạt các vật thể và sinh thể, đi thăm các cõi thấp của vầng thứ tư, và cuộc chạm trán giữa bà với tà thuật.

Barbara định nghĩa những khối tắc nghẽn trong vầng thứ tư - những yếu tố chặn đứng quá trình sáng tạo - là các “bao nang thời gian” có khả năng đã diễn biến qua nhiều kiếp sống. Bà mô tả quá trình giải phóng năng lượng sáng tạo bị tắc nghẽn này thông qua các phiên chữa trị bao nang thời gian. Bà giải thích Hệ thống Ý thức Năng lượng Con người bị ảnh hưởng ra sao thông qua quá trình chết và dịch chuyển qua cơ thể tinh tú.

Vì vầng thứ tư là vầng của mối quan hệ, nên chúng ta sẽ thấy có nhiều loại dây nối. Những sợi dây này phục vụ cho việc truyền dẫn thông tin vô hình, thường xảy ra giữa hai người. Ví dụ, chúng ta tạo ra các sợi dây gien di truyền với cha mẹ đẻ của mình và sau đó là những sợi dây quan hệ với mọi người mà chúng ta có kết nối cá nhân. Những sợi dây này có thể là lành mạnh hoặc cũng có thể mang theo những biến dạng sẽ gây can nhiễu đến quá trình sáng tạo của chúng ta. Các cội rễ truyền thừa, tức các sợi dây gien di truyền bị hư hại, kết nối chúng ta với tổ tiên của mình và mang theo các hệ thống niềm tin sai lầm được duy trì qua nhiều thế hệ. Barbara Brennan giải thích chi tiết về việc chữa trị những sợi dây gien di truyền và sợi dây quan hệ, cũng như việc chữa trị cội rễ truyền thừa.

Chia sẻ của Lisa VanOstrand (Tốt nghiệp Trường chữa trị Barbara Brennan năm 1995 Trường khoa giải phẫu sinh lý Trường chữa trị Barbara Brennan, Nguyên Trưởng khoa Nâng cao Trường chữa trị Barbara Brennan).', 176000)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (15, N'5', N'Trump Ở Nhà Trắng
', N'Bob Woodward', N'images\trumponhatrang.jpg', N'1', 700, N'Năm 2016, cả thế giới sửng sốt về chiến thắng của tân binh Donald Trump trước cựu binh lão luyện và được nhiều người kỳ vọng Hillary Clinton.

Kể từ đó, nước Mỹ nói riêng và thế giới nói chung cùng trải qua những khoảnh khắc dở mếu dở cười trong tâm trạng thắc thỏm triền miên vì không biết chuyện gì sẽ xảy ra tiếp theo. Chưa có nhiệm kỳ tổng thống nào mà công chúng lại được nhận tin về các quyết sách quan trọng của chính phủ qua những bài đăng ngắn ngủi dài 280 ký tự trên trang mạng xã hội Twitter, chưa có nhiệm kỳ tổng thống nào mà sự đến đi của các nhân vật trong Nhà Trắng lại rầm rộ, lũ lượt, bất thường, và bất ngờ như vậy. Điều gì đang diễn ra với Trump trong Nhà Trắng vậy?

Fear: Trump ở Nhà Trắng là cuốn sách táo bạo, trả lời thẳng thắn cho câu hỏi trên. Đây là công trình công phu của Bob Woodward, miêu tả trần trụi và sống động những cuộc tranh luận, quá trình ra quyết định và cuộc sống bên trong Nhà Trắng từ nguồn cấp tin chính là những con người đã và đang sống ở đó.

Cuốn sách đáp ứng niềm mong đợi của mọi người đến nỗi ngay trong tuần đầu tiên ra mắt đã bán được 1,1 triệu bản – một kỷ lục trong lịch sử 124 năm hoạt động của Simon & Schuster.', 119200)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (16, N'5', N'Bàn Về Khế Ước Xã Hội (Tái Bản 2018)
', N'Jean Jacques Rousseau', N'images\banvekheuocxahoi.jpg', N'1', 650, N'Bàn về Khế ước xã hội là tên gọi vắn tắt của bản luận văn lớn mà J. J. Rousseau đặt dưới một nhan đề khá dài: Bàn về khế ước xã hội hay là các nguyên tắc của quyền chính trị (Du Contrat social – ou principes du droit politique).

Về lai lịch cuốn sách, tác giả viết: “Luận văn nhỏ này trích từ một công trình nghiên cứu rộng lớn mà trước kia tôi đã viết, nhưng vì chưa lượng được sức mình nên phải bỏ đi từ lâu”.

Về mục đích cuốn sách, tác giả viết: “Tôi muốn tìm xem trong trật tự dân sự có hay không một số quy tắc cai trị chính đáng, vững chắc, biết đối đãi với con người như con người. Và có hay không luật pháp đúng với những ý nghĩa chân thực của nó”. Với luận văn này, J. J. Rousseau muốn “gắn liền cái mà luật pháp cho phép làm với cái mà lợi ích thúc đẩy phải làm, khiến cho công lý và lợi ích không tách rời nhau”.

Toàn bộ luận văn trên dưới sáu vạn chữ được chia làm bốn quyển:

Quyển thứ nhất gồm 9 chương, mở ra những ý niệm chung về sự hình thành một xã hội người từ trạng thái tự nhiên chuyển sang trạng thái dân sự và những ý niệm chung về việc thành lập Công ước xã hội.

Quyển thứ hai gồm 12 chương, chủ yếu bàn về vấn đề lập pháp.

Quyển thứ ba gồm 18 chương, bàn chủ yếu về vấn đề cơ quan hành pháp.

Quyển thứ tư gồm 9 chương, bàn tiếp nhiều vấn đề, trong đó nổi lên vấn đề cơ quan tư pháp.

Những người yêu J. J. Rousseau và đã đọc Bàn về Khế ước xã hội thường nói: đọc Bàn về Khế ước xã hội thật là mệt. Vì vănchương của tác giả vừa uyên thâm, vừa uẩn súc; cách lậpluận của ông dựa vào phương pháp logic kiểu Descartes,rành rọt, hiển nhiên, nhưng đồng thời bao quát nhiều ýniệm, soi vào nhiều góc cạnh của vấn đề, lại phải trìnhbày rất khéo léo những quan điểm đối nghịch với chínhthống đương thời. Bài luận văn có những câu dài tới trên10 dòng, phải tách nhỏ ra một cách linh hoạt thì mới diễndịch được tư duy của tác giả. Nhưng thật là một niềmvui lớn cho người nghiên cứu khi nắm bắt được những ýlớn và khái quát được tư tưởng vĩ đại của J. J. Rousseautrong Bàn về Khế ước xã hội. Cuốn sách được in chui và phát hànhđầu năm 1762, khi mà Chính phủ Hoàng gia và Nghịviện Pháp ra lệnh đốt một số sách của Rousseau. Ôngphải chạy trốn, sống cuộc đời lưu vong, không ổn định vànghèo khổ, cho đến ngày 2/7/1788, từ giã cõi đời tại làngCamenonville, và chôn trên hòn đảo Dương Liễu heo hútngày 4/7/1788.

Những tư tưởng của Khế ước xã hội đã lay động bao lớp người không thỏa hiệp với chế độ quân chủ chuyên chế thời ấy; và khi cuộc Cách mạng Pháp kết thúc năm 1794, Hội nghị Quốc ước đã quyết định đưa hình tượng và tro hài của Jean-Jacques Rousseau vào Điện Panthéon, nơi chôn cất và lưu niệm các bậc vĩ nhân đã làm vẻ vang cho nước Pháp.

Trên 200 năm đã trôi qua, kể từ ngày Bàn về Khế ước xã hội ra đời mà luồng sáng do tác phẩm rọi ra vẫn còn ánh lên trước mắt chúng ta ngày nay.', 112500)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (17, N'5', N'Van Gogh The Life (Bản kèm túi thư)
', N'Steven Naifeh, Gregory White Smith', N'images\vangoghthelife.jpg', N'4', 400, N'Vincent Van Gogh – một thiên tài, nhà họa sắc và là một họa sĩ có sự nghiệp nghệ thuật ngắn ngủi nhưng để lại ảnh hưởng lớn đến công chúng và giới hoạt động nghệ thuật hậu hiện đại và đương đại – qua bàn tay của cặp đôi tiểu sử gia tài năng Naifeh và Smith đã được hiện lên trước mắt bạn đọc từ nhiều mảnh ghép của cuộc sống và những giai đoạn thăng trầm khác nhau của cuộc đời anh.

Cuốn tiểu sử được nghiên cứu, hoàn thiện trong quá trình 10 năm của một cặp tiểu sử gia Steven Naifeh, Gregory White Smith đã gắn bó và cộng tác, cống hiến với tình yêu nghệ thuật nhiều năm qua. Quá trình nghiên cứu của họ dựa vào rất nhiều tư liệu, tài liệu đã có cũng như chưa từng được khai thác một cách rộng rãi về cuộc đời và tiểu sử Van Gogh. Song song với 10 năm của họ là dự án Tập hợp các lá thư của Bảo tàng Van Gogh, từ đó giúp cho hai tác giả có cái nhìn toàn diện hơn, những kiến giải đa màu sắc hơn về “huyền thoại Van Gogh” vốn đã được lan truyền từ trước đến nay.

Cuốn tiểu sử này cũng theo dòng cuộc đời của Van Gogh, được chia ra làm 3 phần: những ngày khi cậu bé Vincent còn thơ ấu mải mê ở bãi hoang, ngắm nhìn chim muông cây cỏ rồi cô đơn nơi lớp học khi phải xa gia đình; thời thanh thiếu niên với những khủng hoảng tuổi mới lớn về công việc, sự nghiệp, tình yêu, câu hỏi cho mục đích của cuộc sống và lẽ sống được tìm kiếm qua con đường tôn giáo và những trang văn thơ, cũng như những tiếp xúc thuở ban đầu với hội họa; giai đoạn trưởng thành trong những năm ở Pháp cùng những giằng xé không được giải quyết, những câu hỏi không có câu trả lời và cũng không còn ai kiên trì để trả lời khi mốc trưởng thành đã đến và người ta hành động nhiều hơn thay vì ngồi hỏi những ngẩn ngơ ngày nào, cơm áo gạo tiền và địa vị xã hội cùng sự ổn định đã khiến tâm can người họa sĩ trở nên hoảng loạn và bất ổn nhất – nghịch lý là khi đó anh đã tạo ra những tác phẩm định hình rõ phong cách của anh cho tới khi rời bỏ cuộc đời.

Cuốn sách không miêu tả quá rõ hay cụ thể chỉ một hay một vài bức tranh của Vincent như những ấn phẩm Basic Art hay bất kỳ cuốn sách tranh nào khác thường nói về sự nghiệp hội họa của Van Gogh, mà mạch kể của nó đi theo hướng dành nhiều thời gian phân tích những biến chuyển tâm lý và suy nghĩ nội tâm của anh qua những bằng chứng còn sót lại là những lá thư và những lời kể, cùng những phân tích và nghiên cứu của hai tác giả, khiến cho chúng ta như vừa tham gia vào câu chuyện của Vincent lại vừa là người chứng kiến dưới góc nhìn khách quan để tự soi chiếu vào nội tâm của bản thân, với những thăng trầm, mặc tưởng, những cú ngoặt và sự chuyển mình của chính mình từ trước đến nay.

Nếu ta dám nói ta hiểu rõ ta mọi lúc và muôn nơi thì chắc có lẽ ta cũng không dám nói ta hiểu được Vincent 100%, chưa kể đến nội dung cuốn sách làm sáng tỏ về huyền thoại Van Gogh được thánh hóa suốt bao năm qua, cũng như đưa ra một góc nhìn khác về cái chết của Vincent, xem liệu có đúng anh đã tự sát chỉ bởi một cuộc đời không được thấu hiểu.

Đây không phải là một cuốn sách dễ đọc! Không phải vì nó quá dài, vì chẳng có cuốn sách nào đủ dài cho một đời người, mà có lẽ bởi những thăng trầm của cảm xúc, những cuồng mê đan xen lòng phẫn nộ, những ham muốn ích kỷ đi với trách nhiệm chung của cái gọi là gia đình, hay sự tử tế bề ngoài bao bọc lòng ích kỷ thuần túy bên trong. Nói cách khác, là sự đa tầng lớp lang của một con người, một đời người (không chỉ Vincent, mà còn cả những người trong gia đình anh và những người lạ đã đi qua cuộc đời anh).

Nhưng đến phần 3, đặc biệt là những chương cuối, khi hai tác giả tập trung nói về khía cạnh nghệ thuật và giai đoạn Vincent tạo ra được nhiều tác phẩm nhất trong sự nghiệp hội họa của mình, thì lòng ta cũng đã nguôi ngoai (hay là đã quen dần với?!) những biến động, để như hòa tan vào những nét bút, vào những khung cảnh phóng chiếu từ đôi mắt anh, qua bàn tay chuyển mình lên toan vẽ. Vincent, và tranh của anh, cho ta thấy Thiên nhiên thực sự có sức mạnh to lớn đến thế nào trong việc chữa lành những vết thương lòng cũng như đem cho ta sự khuây khỏa, đón ta vào lòng như một người Mẹ. Dù cho cái chết của anh đến một cách đột ngột và đầy ẩn khuất sẽ chẳng bao giờ được giải đáp hết, nhưng cuối cùng Vincent cũng được yên nghỉ trong lòng Người Mẹ Vĩ đại. 

Sách lọt vào danh sách bán chạy của New York Times và được đánh giá là một trong những cuốn sách hay nhất năm trên các tạp chí danh tiếng như: The New York Times, The Washington Post, The Wall Street Journal, San Francisco, The Economist, BookReporter…

Ngoài nội dung chính về cuộc đời ông với những tranh trắng đen minh họa, trong sách còn đính kèm 32 trang phụ lục in màu hơn 60 bức tranh nổi tiếng của Van Gogh.

Đánh giá/ Nhận xét của chuyên gia:

“Cuốn tiểu sử mang tính then chốt trong nhiều thập kỷ tới.”   —  Leo Jansen, giám tuyển, Bảo tàng Van Gogh, và đồng chủ biên cuốn Vincent van Gogh: The Complete Letters (Toàn tập thư Vincent Van Gogh)

“Xuất sắc... lập tức trở thành tấm gương cho sự nghiên cứu đầy uyên bác và là một lời giải giàu tình cảm, thành công cho một thử thách nan giải trong việc viết tiểu sử về những nhân vật đã được huyền thoại thánh hóa.” —  The Daily Telegraph (London)

“Một thành tựu . . . một thành công to lớn. . . Đọc câu chuyện về cuộc đời Van Gogh khiến ta như đang đi trên một con tàu lượn vô tận với những cung bậc lên xuống đầy huyễn tưởng. . . . [Một] cuốn sách có kết cấu bố cục đáng kinh ngạc, thể hiện sự am hiểu bao quát tường tận.” —   Los Angeles Times', 631200)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (18, N'1', N'Trong Chớp Mắt (Tái Bản 2018)
', N'Malcolm Gladwell', N'images\trongchopmat.jpg', N'2', 500, N'Trong Chớp Mắt (Tái Bản 2018)

Trong chớp mắt là một cuốn sách chiến lược viết về sức mạnh của việc nghĩ mà không cần suy nghĩ, về những quyết định đưa ra chỉ trong một cái chớp mắt thực sự không hề tầm thường như mọi người vẫn nghĩ. Vì sao một số người luôn là những người quyết định sáng suốt, trong khi số khác lại luôn lầm lẫn, quẩn quanh… Tại sao một số người hành động theo bản năng của họ và chiến thắng, một số người lại luôn kết thúc bằng sai lầm. Não của chúng ta thực sự hoạt động thế nào: trong công sở, trong lớp học, trong bếp và phòng ngủ… Và vì sao những quyết định đúng đắn nhất lại thường là những quyết định không thể lý giải rõ ràng cho người khác.

Ngay phần giới thiệu, Malcolm Gladwell đã đưa ra một tình huống đặc biệt. Một bức tượng cổ đã được cả một hội đồng khoa học gồm rất nhiều chuyên gia hàng đầu của một bảo tàng ở Mỹ khẳng định chắc chắn là thật nhưng cuối cùng được phát hiện là đồ giả mạo. Không phải bằng các thiết bị tối tân mà chỉ bằng một thoáng nhìn kéo dài 2 giây của một số chuyên gia khi họ có dịp thăm bảo tàng. Như vậy chỉ cần 2 giây, họ có thể nắm rõ được bản chất bên trong của bức tượng hơn cả một đội ngũ chuyên gia của bảo tàng đã nghiên cứu bức tượng trong 14 tháng.

Trong chớp mắt sẽ cho chúng ta gặp một nhà tâm lý học, người có thể tiên đoán cuộc hôn nhân nào sẽ đổ vỡ chỉ dựa vào vài phút quan sát cặp vợ chồng, một huấn luyện viên tennis, người có thể biết khi nào một vận động viên sẽ phạm lỗi kép thậm chí trước khi vợt kịp chạm đến bóng, một chuyên gia thẩm định đồ cổ, người có thể nhận ra sự giả mạo bằng một cái nhìn thoáng qua. Cuốn sách kỹ năng này tiết lộ một bí mật: những người quyết định vĩ đại không phải là những người sử dụng hầu hết thông tin, thời gian để cân nhắc kĩ lưỡng, mà lại là những người thành thạo trong nghệ thuật “lát cắt mỏng”, nắm bắt được mọi khía cạnh vấn đề từ một lát cắt mỏng.', 125100)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (19, N'1', N'Cư Xử Khôn Giao Tiếp Khéo
', N'Dan Ariely', N'images\cuxukhongiaotiepkheo.jpg', N'3', 4000, N'Cư Xử Khôn Giao Tiếp Khéo
Cuốn sách ghi lại những bài học từ nghiên cứu đột phá của Ariely khi họ khám phá câu hỏi cốt yếu: Làm thế nào chúng ta có thể đưa ra quyết định tốt hơn?

Những quyết định tuyệt vời theo chân người kể chuyện, Adam, khi anh ta phải đối mặt với hàng loạt lựa chọn và cân nhắc hàng ngày. Ông tung ra hai bộ chuẩn mực chồng chéo và thường mâu thuẫn với nhau: chuẩn mực xã hội và chuẩn mực thị trường. Những chuẩn mực này thông báo cho suy nghĩ của chúng ta theo những cách mà chúng ta thường không nhận thấy, cũng giống như Adam bị che khuất bởi “nàng tiên thị trường” và “nàng tiên xã hội”, mỗi người đều buộc anh ta phải hành động theo những cách nhất định. Ariely lập luận, ra quyết định tốt đòi hỏi chúng ta phải xác định và đánh giá các lực lượng khi thi đấu trong các hoàn cảnh khác nhau, dẫn đến một kết quả tối ưu. Quyết định tuyệt vời là một hướng dẫn hấp dẫn và thú vị để phát triển các kỹ năng sẽ chứng tỏ vô giá trong cuộc sống cá nhân và nghề nghiệp.

Trích đoạn hay

- Ta quan tâm bản thân hơn tất cả, kỳ kèo để được trả công cao nhất và phải trả chi phí thấp nhất.

Trong mọi cuộc trao đổi, chúng ta mong đợi nhận được đúng lúc và chính xác thứ mình muốn.

- Làm thế nào ta có thể duy trì song song những giá trị dường như đối lập? Vâng, tôi đến đây để nói với anh rằng chúng ta thực sự sống giữa hai thế giới rất khác biệt.

Những chuẩn mực thị trường thống trị một thế giới…

… trong khi những chuẩn mực xã hội thống trị thế giới còn lại.

“Chuẩn mực” là các quy tắc hướng dẫn hành vi được mong đợi trong những tình huống nhất định.

- Cuộc sống trông như thế nào trong thế giới sắc lạnh của những chuẩn mực thị trường?

Ở đây, mọi trao đổi là giao dịch giữa các đối tác làm ăn, không phải giữa bạn bè với nhau.

Dựa theo phân tích cẩn thận về chi phí-lợi ích, mọi người chú trọng lợi ích của chính mình trên hết.

Rất lô-gíc!', 103200)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (20, N'1', N'Trí Tuệ Xúc Cảm (Tái bản 2021)
', N' Daniel Goleman', N'images\trituexuccam.jpg', N'5', 666, N'Trí Tuệ Xúc Cảm đã nằm trong danh sách bán chạy nhất của Thời báo New York trong một năm rưỡi, với hơn 5.000.000 bản in trên toàn thế giới bằng 40 ngôn ngữ và đã là sách bán chạy nhất ở nhiều quốc gia. Sách đã được Tạp chí TIME vinh danh là một trong 25 “Cuốn sách quản lý kinh doanh có ảnh hưởng nhất” 

Với bản Tiếng Việt được Alpha Books mua bản quyền và độc quyền phát hành từ 2008, được vô vàn độc giả đón nhận với hơn 50.000 bản được bán ra, và cũng trở thành 1 trong những cuốn bestseller. 

Ai cũng biết điểm IQ cao chưa chắc đã đảm bảo cho một cuộc đời thành công, hạnh phúc và đức hạnh. Nhưng chỉ đến khi đọc Trí Tuệ Xúc Cảm (Emotional Intelligence) của Daniel Goleman, chúng ta mới có thể lý giải tại sao. Dựa trên những quan sát và nghiên cứu nhiều năm trong lĩnh vực tâm lý và khoa học thần kinh, tác giả đã mang đến một cái nhìn mới mẻ về hai loại trí tuệ bên trong mỗi con người - lý trí và cảm xúc - cùng cách mà chúng định hình số phận của chúng ta.    

Trong sách, Daniel Goleman chỉ ra một số yếu tố khiến người IQ cao có thể gặp lúng túng trong công việc, còn người IQ thấp hơn lại đạt hiệu suất đáng kinh ngạc. Đó là sự tự ý thức, tính kỷ luật tự giác, sự đồng cảm, ... và chúng không bị mặc định từ khi sinh ra. Trí tuệ cảm xúc được bồi đắp bởi những trải nghiệm từ khi còn nhỏ, nhưng nó cũng có thể được nuôi dưỡng và tăng cường trong quá trình mỗi cá nhân trưởng thành, đem đến lợi ích cho sức khỏe, công việc và cả các mối quan hệ của họ.   ', 159200)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (21, N'2', N'Tư Duy Về Tiền Bạc - Những Lựa Chọn Tài Chính Đúng Đắn Và Sáng Suốt Hơn ', N'Jonathan Clements', N'images\tuduyvetienbac.jpg', N'2', 401, N'Tư Duy Về Tiền Bạc - Những Lựa Chọn Tài Chính Đúng Đắn Và Sáng Suốt Hơn (Tái Bản 2022)

Mục tiêu của bạn trong vấn đề tài chính cá nhân và đầu tư là gì?

Qua Tư duy về tiền bạc - sản phẩm của hơn 30 năm làm việc trong lĩnh vực tài chính cá nhân, Jonathan Clements đã cung cấp cho bạn đọc một cách thức rõ ràng hơn, sáng suốt hơn để suy nghĩ về tình trạng tài chính của mình, để có những lựa chọn thông minh hơn và giành được nhiều hạnh phúc nhất từ những đồng tiền mình.

Ngắn gọn, rõ ràng và đầy ắp những lời khuyên tuyệt vời về tài chính, cuốn sách sẽ dạy bạn cách phớt lờ các bản năng của mình, kiềm chế nhưng cảm xúc, hít thở sâu và không ngừng tập trung vào những gì tốt nhất cho bản thân - cho hạnh phúc và tự do tài chính của bạn trong suốt một đời người.', 72000)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (22, N'3', N'Đôi mắt', N'Nam Cao', N'images\doimat.jpg', N'3', 605, N'Trích đoạn:

Cười

Hòa bình và hạnh phúc tỏa bóng mát trong cái nhà bé nhỏ của chúng. Giá tất cả trẻ con đều hiểu rằng: chúng sinh ra là để đi bộ, để mở những con mắt hau háu ra cười với người ta, để chim chim, đi chợ, làm cò bay hay những trò ngây ngô tương tự như thế chứ không phải để dụi mắt, để dỗi hờn, để khóc the thé đến làm bố điên lên được. Giá tất cả đàn bà đều hiểu rằng: người ta cưới họ về là để họ đem cho người ta những nụ cười, những cái vuốt ve, những lời nói nhẹ nhàng, khả dĩ khiến người ta quên mệt nhọc và chán nản chứ không phải chuốc lấy những lời cáu cẳn và một bộ mặt suốt ngày nhăn nhó như mặt nạ.

Nước mắt

Người không phải là thánh. Sự khổ sở dễ khiến lòng chua chát. Khi người ta lam lũ quá, lại còn lo trăm thứ, bị làm rầy vì trăm thứ, thì ai mà bình tĩnh được? Ai mà chả hay gắt gỏng? Gắt gỏng thì chính mình khổ trước. Không giữ được thì bật ra ngoài như vậy. Thật ra có ai muốn cau có làm chi?...

Ở hiền

Tại sao trên đời này lại có nhiều sự bất công đến thế? Tại sao ở hiền không phải bao giờ cũng gặp lành? Tại sao những kẻ hay nhịn, hay nhường thì thường lại chẳng được ai nhịn, nhường mình; còn những kẻ thành công thì hầu hết lại là những người rất tham lam, chẳng biết nhịn nhường ai, nhiều khi lại xảo trá, lọc lừa và tàn nhẫn, nhất là tàn nhẫn?...', 44500)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (23, N'3', N'Bỉ vỏ', N'Nguyên Hồng', N'images\bivo.jpg', N'2', 402, N'Bỉ vỏ
Nguyên Hồng tên thật là Nguyễn Nguyên Hồng, sinh ngày 5 tháng 11 năm 1918 trong một gia đình công giáo ở thành phố Nam Định. Trong cuộc kháng chiến chống Pháp, Nguyên Hồng hoạt động ở Hội Văn nghệ Việt Nam (1947 - 1957) và tham gia Ban biên tập Tạp chí Văn nghệ, ban phụ trách trường Văn nghệ nhân dân ở Việt Bắc. Năm 1948, nhà văn được kết nạp vào Đảng cộng sản Đông Dương. Năm 1957, Hội nhà văn thành lập, Nguyên Hồng tham gia Ban chấp hành, là biên tập viên tạp chí Văn nghệ và ở trong Ban phụ trách tuần báo Văn. Nguyên Hồng mất ngày 2-5 -1982.

“Bỉ vỏ”: “...Ngay ở những tầng lớp cặn bã nhất, chỉ biết có chém giết lừa bịp, vẫn ánh lên những tia sáng nhân đạo, vẫn còn lòng yêu thương chung thủy, lòng hi sinh, dám xả thân vì một nghĩa cử, dám sống chết để bảo vệ đồng đội và nhất là những thoáng khát vọng muốn thoát khỏi cuộc đời tội lỗi của mình. Cái nhìn của Nguyên Hồng ở đây cũng giống như cái nhìn của Gorki khi viết về tầng lớp “dưới đáy” của xã hội Nga, mang đầy tính chất nhân đạo chủ nghĩa. Cho nên đọc chuyện những nhân vật này, ta thấy tội ác của họ, nhưng đồng thời cũng thương xót cho những kiếp người đã bị xã hội độc ác nhấn chìm vào vũng bùn tội lỗi và ngụp lặn trong ấy cơ hồ không thể ngoi lên được...”

', 38300)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (24, N'3', N'Nanh Trắng
', N'Jack London', N'images\nanhtrang.jpg', N'3', 602, N'Nanh Trắng
Jack London (1876- 1916) là nhà văn nổi tiếng người Mỹ. Cuộc sống khốn khó từ nhỏ đã đẩy Jack London bước vào rất nhiều cuộc phiêu lưu, trải qua đủ nghề để kiếm sống. Tất cả những điều này đã ám ảnh Jack London và trở thành nguồn cảm hứng để ông viết nên những câu chuyện danh tiếng như: Đứa con của chó sói (1902), Nanh trắng (1906), Ánh sáng ban ngày cháy đỏ (1910), Tiếng gọi của hoang dã (1903)...

Tiểu thuyết Nanh Trắng một câu chuyện đẹp kể về hành trình trưởng thành của một chú chó lai mang ba phần tư dòng máu sói hoang dã trở thành chú chó nhà trung thành. Tiểu thuyết này không đơn thuần mang tính giải trí mà còn mang đến cho độc giả những bài học quý giá, gửi đến những thông điệp giá trị; cho dù cuộc sống nhiều chông gai và khó khăn nhưng ánh sáng hạnh phúc vẫn còn đang đón chờ ở phía trước.

Tác phẩm này mang đặc thù phong cách văn xuôi chính của Jack London và cách sử dụng giọng văn, phối cảnh sáng tạo của ông. Phần lớn nội dung tiểu thuyết được viết từ lối nhìn của động vật, cho phép Jack London khảo sát cách mà loài vật nhìn nhận thế giới của chúng và cách mà chúng nhìn nhận loài người. Nanh Trắng khảo sát thế giới bạo lực của dã thú, và thế giới không kém phần bạo lực của nhận loại được xem là văn minh. Cuốn sách cũng đề cập đến những vấn đề phức tạp hơn: luân lý và sự cứu chuộc.', 54000)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (25, N'4', N'Happy Reader - Ông Già Và Biển Cả
', N'Ernest Hemingway', N'images\onggiavabienca.jpg', N'1', 301, N'Happy Reader - Ông Già Và Biển Cả
Những câu chuyện cổ tích, những kiệt tác văn học tuyệt vời mà chúng ta đã biết từ thuở còn thơ vẫn luôn là kỷ niệm ấm áp mãi cho đến khi ta trưởng thành. Giờ đây, các tác phẩm văn học kinh điển được thể hiện dưới một hình thức mới mẻ và thú vị sẽ giúp ta làm sống lại những kỷ niệm đó. Bên cạnh đó, ta còn có thể thưởng thức sự sâu sắc và vẻ đẹp của những tác phẩm nguyên bản, điều mà các tác phẩm chuyển ngữ ít khi thực hiện được. Trong quá trình đọc sách, kỹ năng đọc hiểu tiếng Anh của bạn cũng sẽ được nâng cao rất nhiều.

Bộ sách được biên soạn theo một chương trình đặc biệt giúp nâng cao kỹ năng đọc hiểu cho những người mới bắt đầu, những người chưa hài lòng với khả năng làm chủ ngôn ngữ của mình, hay cho học sinh cấp tiểu học, trung học cơ sở và phổ thông. Những học viên này sẽ thưởng thức các kiệt tác văn học bằng tiếng Anh theo một hình thức rất thú vị và có tính hiệu quả cao.

Chương trình được biên soạn theo năm cấp độ, từ cấp độ cơ bản dành cho những người mới bắt đầu, với 350 từ, cho đến cấp độ trung bình khá, với 1.000 từ. Trong từng tập sách đều có các hướng dẫn dành cho người đọc theo từng cấp độ, giúp họ tiếp cận nội dung tác phẩm bằng tiếng Anh một cách dễ dàng hơn. Bộ sách bao gồm những câu hỏi ông tập giúp người đọc học từ vựng và hiểu được ý nghĩa của tác phẩm, cũng như kèm theo các hình minh họa thú vị tô điểm cho từng trang sách.

Với hình thức sách đọc kèm đĩa CD, nội dung tác phẩm được thể hiện lại một cách sinh động bởi các giọng đọc Mỹ chuyên nghiệp. Tác phẩm được viết lại theo từng cấp độ người đọc bởi một đội ngũ chuyên gia biên tập ngôn ngữ bản xứ, dựa trên nền tảng tiếng Anh của người Mỹ chuẩn với từ vựng được đề xuất bởi Bộ Giáo Dục. Vì thế, chương trình này sẽ vô cùng có ích, nhất là cho công tác giảng dạy tiếng Anh.', 66600)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (26, N'4', N'Aesop Bất Hủ - Tập 2
', N'Aesop, Val Biro', N'images\aesopbathu.jpg', N'2', 305, N'Aesop Bất Hủ - Tập 2
Truyện ngụ ngôn đã ra đời từ rất lâu trên thế giới, được xem là một kho tàng trí tuệ của văn hoá dân gian.

Ngụ là ẩn chứa, hàm ý, ngôn là ngôn ngữ, lời nói. Truyện ngụ ngôn là những chuyện kể hàm chứa những bài học đạo đức, những triết lý làm người, những nguyên tắc đời sống từ đơn giản đến sâu sắc, được kể bằng cách nhân hoá những loại vật gần gũi, đôi khi cũng kể về con người.

Khi còn nhỏ chúng ta thường được dạy những đạo lý này qua các câu truyện ngụ ngôn. Những bài học thường được đưa vào những cuốn sách, hay những bộ phim hoạt hình đầy sắc màu, vui nhộn.

Trọn bộ hai quyển truyện tranh ngụ ngôn song ngữ Aesop Bất Hủ là minh chứng trong việc truyền tải những triết lý sống, những bài học đạo đức theo cách giản dị, chân thành và dễ hiểu nhất, đặc biệt là với trẻ em. Bằng hình ảnh minh họa màu sắc sinh động, nội dung giản dị, giàu ý nghĩa, phụ huynh có thể dạy cho trẻ những đức tính tốt đẹp rút ra từ những câu chuyện này. Aesop Bất Hủ mang đến những thông điệp ngắn gọn nhưng đầy ý nghĩa nhằm nhắn nhủ bạn đọc những chân lý giản dị trong cuộc sống.

Bộ truyện được thể hiện dưới hình thức song ngữ Việt – Anh. Không chỉ giúp các em nhỏ tiếp thu những bài học đạo đức thú vị mà còn cùng lúc học song song cả Tiếng Việt lẫn Tiếng Anh, mang đến cho trẻ những giây phút thú vị khi đọc.

Mặc dù là truyện ngụ ngôn của Aesop nhưng hầu hết câu chuyện của ông là tác phẩm của những nhà kể chuyện sống trước ông rất lâu. Aesop được cho rằng đã sống ở đất nước Hy Lạp cổ đại vào khoảng thế kỷ 16 trước Công nguyên. Ngày nay có rất nhiều phiên bản khác nhau được kể lại trong những cuốn sách kể chuyện trên khắp thế giới. Những câu chuyện này vẫn được ưa chuộng như xưa nay, đặc biệt là với trẻ em.

Trong những câu chuyện này, động vật có thể trò chuyện và có tính cách như con người, chẳng hạn chuyện “Sư tử và chuột”, “Cáo và cò”. Đây là một kho tàng truyện ngụ ngôn đồ sộ cả về mặt số lượng lẫn giá trị. Với đa số nhân vật là những con vật đã được nhân cách hóa, truyện ngụ ngôn Aesop hàm chứa những thông điệp sâu sắc mà giản dị, được chuyển tải đến người đọc bằng giọng văn nhẹ nhàng, hóm hỉnh.

Trong quá trình lưu truyền đó, một số truyện đã bị mất đi nhưng cũng có một số truyện được thêm vào từ các nền văn hóa khác nhau, thể hiện sự ngưỡng mộ của nhân loại đối với trí tuệ sâu sắc của ông. Ngụ ngôn Aesop đã được trích dẫn bởi Socrates, Aristophanes và các nhân vật nổi tiếng khác.', 108800)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (27, N'4', N'Tàu Phá Băng Snow Và Thành Phố Mất Tích
', N'Teemu Leppala', N'images\tauphabang.jpg', N'3', 603, N'Tàu Phá Băng Snow Và Thành Phố Mất Tích

Tiếp nối 2 tập trước, Tàu phá băng Snow và thành phố mất tích là tập tiếp theo của truyện tranh nhiều tập về anh chàng tàu phá băng Snow và các bạn của mình.

Twinkle, tàu hoa tiêu, người bạn thân thiết của Snow được cử đến đảo Utö ở vùng biển Quần Đảo. Một ngày nọ, trên đường trở về điểm tập kết, Twinkle bất ngờ gặp một cơn bão. Khi bão qua, Twinkle nhận ra mình bị mất liên lạc với các bạn bè và thế giới xung quanh và đã bị trận bão cuốn đến một thành phố chỉ được nhắc đến trong truyền thuyết.

Khi ngọn hải đăng Utö phát hiện ra Twinkle đã mất tích, một cuộc tìm kiếm khẩn trương được phát động. Làm cách nào Twinkle có thể liên lạc lại với thế giới bên ngoài? Liệu có cơ hội gặp lại người bạn thân Snow nữa hay không?', 36000)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (28, N'2', N'Những Gã Khổng Lồ Xanh: Từ Doanh Nghiệp Bền Vững Đến Tập Đoàn Tỷ Đô', N'E. FREYA WILLIAMS', N'https://static-shop.waka.vn/resize/340x497x2/image/img.product/0/0/0/38/19586_1.jpg', N'1', 555, N'Những Gã Khổng Lồ Xanh: Từ Doanh Nghiệp Bền Vững Đến Tập Đoàn Tỷ Đô  Các doanh nghiệp tỷ đô như Tesla Motors, Trader Joe’s, Chipotle, Toyota, Unilever và General Electric có điểm gì chung? Họ đều đã thành công trong việc xây dựng các doanh nghiệp thành công đáng kinh ngạc khi bán các sản phẩm và dịch vụ giúp chúng ta sống hạnh phúc hơn, khỏe mạnh hơn, có ý thức hơn về môi trường. Với các nghiên cứu, các cuộc phỏng vấn độc quyền và ví dụ từ những tổ chức lớn, Những gã khổng lồ xanh tiết lộ cách những công ty nổi tiếng đã biến chiến lược bền vững và lợi ích xã hội thành một doanh nghiệp tỷ đô... và cách thức giúp bạn cũng có thể đạt được. Cuốn sách cung cấp một kế hoạch chi tiết cho thành công bền vững, xem xét sáu yếu tố chính mà những gã khổng lồ xanh chia sẻ đã trực tiếp góp phần vào thành công của họ. Mỗi chương trong cuốn sách sẽ bàn về từng đặc điểm.  Chương 1: Nhà Lãnh đạo phi truyền thống. Trong mỗi trường hợp, chúng ta đều có thể truy nguyên cuộc hành trình mang tên kinh doanh bền vững về một cá nhân, người khởi đầu cho tất cả. Chương này sẽ trình bày câu chuyện của những vị lãnh đạo đó, đồng thời phân tích 4C của Nhà lãnh đạo phi truyền thống.  Chương 2: Đổi mới Sáng tạo Đột phá. Mỗi dòng doanh thu của Gã Khổng Lồ Xanh không được xây dựng dựa trên một phiên bản xanh hơn một chút hay có trách nhiệm xã hội hơn một chút của một sản phẩm đã có sẵn, mà dựa trên một ý tưởng đổi mới sáng tạo có sức đột phá cả một lĩnh vực. Trong chương này, bạn sẽ biết những Gã Khổng Lồ Xanh làm như thế nào để cho ra đời những ý tưởng đổi mới sáng tạo theo định hướng phát triển bền vững, từ đó tạo ra những kết quả đột phá trong kinh doanh.  Chương 3: Mục đích Cao cả. Chương này tiết lộ về mục đích cao cả đã truyền cảm hứng và động lực cho những Gã Khổng Lồ Xanh, đồng thời phân tích về một phát hiện tưởng chừng như nghịch lý rằng những công ty ấp ủ một mục đích vượt ra ngoài khuôn khổ của lợi nhuận lại thường kiếm được nhiều lợi nhuận hơn so với đối thủ cạnh tranh.  Chương 4: Tích hợp, không phải thêm vào. Đối với những Gã Khổng Lồ Xanh, sự bền vững đồng nghĩa với kinh doanh. Chương này trình bày cách những Gã Khổng Lồ Xanh tích hợp sự bền vững vào sáu cấu trúc cốt lõi trong doanh nghiệp của họ để biến nó trở thành một động lực thúc đẩy doanh thu.  Chương 5: Thu hút Dòng chính. Nếu sản phẩm của bạn chỉ nhắm mục tiêu vào một thị trường ngách mà tôi gọi là Siêu Xanh, trong trường hợp này bạn sẽ rất khó đạt tới ngưỡng doanh thu 1 tỉ đô-la bởi vì phân khúc ngách đó không có đủ người nghiêm túc coi trọng các giá trị xanh để có thể giúp bạn hoàn thành được mục tiêu doanh thu trên. Đó cũng chính là điểm sai lầm của nhiều thương hiệu Xanh 1.0. Chương này tiết lộ những chiến lược mà những Gã Khổng Lồ Xanh sử dụng để tạo được sức hấp dẫn đối với các khách hàng hoặc người tiêu dùng dòng chính.  Chương 6: Hợp dồng hành vi mới. Minh bạch, trách nhiệm, hợp tác – những khái niệm thời thượng như thế này trong giới kinh doanh cũng được thể hiện rất sống động ở các Gã Khổng Lồ Xanh. Nhưng họ không chỉ dừng lại ở những lời nói suông. Ngày nay, danh tiếng của doanh nghiệp được xây dựng thông qua hành động chứ không dựa vào quảng cáo. Hành vi của bạn chính là thương hiệu của bạn. Chương này sẽ cho bạn biết các Gã Khổng Lồ Xanh hành xử như thế nào để đạt tới mức doanh thu hàng tỉ đô-la.  Mục lục:  Lời giới thiệu: Doanh nghiệp tỉ đô-la  1. Nhà lãnh đạo phi truyền thống  2. Đổi mới sáng tạo đột phá  3. Mục đích cao cả  4. Tích hợp, không phải thêm vào  5. Thu hút dòng chính  6. Một hợp đồng hành vi mới  Kết luận: Hiệu ứng những gã khổng lồ triển vọng và những gã khổng lồ xanh  Phụ lục: Phương pháp nghiên cứu được đề cập ở Chương 1', 127000)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (29, N'1', N'Chủ Nghĩa Khắc Kỷ - Phong Cách Sống Bản Lĩnh Và Bình Thản', N' William B Irvine', N'https://static-shop.waka.vn/resize/340x497x2/image/img.product/0/0/0/39/19974_1.jpg', N'3', 222, N' chuyên nghiên cứu về lý thuyết hoặc lịch sử. Ngược lại, tôi quan tâm đến tính thực tiễn của chủ nghĩa Khắc kỷ: mục tiêu của tôi là áp dụng triết lý này vào cuộc sống của mình và khuyến khích người khác áp dụng nó vào cuộc sống của họ. Tôi cho rằng các triết gia Khắc kỷ cổ đại sẽ khuyến khích cả hai đường hướng này, nhưng họ cũng sẽ khẳng định rằng lý do chính để tìm hiểu về chủ nghĩa Khắc kỷ là nhằm áp dụng nó vào thực tiễn.  Điểm nữa cần hiểu rõ là mặc dù chủ nghĩa Khắc kỷ là một triết lý, nhưng nó cũng bao hàm cả yếu tố tâm lý. Các nhà Khắc kỷ nhận ra rằng một cuộc sống đầy rẫy cảm xúc tiêu cực – bao gồm tức giận, lo lắng, sợ hãi, đau buồn và ghen tị – không phải là một cuộc sống tốt đẹp. Do đó, họ trở thành những nhà quan sát nhạy bén về hoạt động của tâm trí con người và kết quả là trở thành một số nhà tâm lý học uyên bác nhất thời cổ đại. Họ tiếp tục phát triển các kỹ thuật để ngăn không cho các cảm xúc tiêu cực xuất hiện và để dập tắt chúng khi những nỗ lực ngăn chặn thất bại. Ngay cả những độc giả không tin tưởng phương pháp suy diễn của triết học cũng nên quan tâm đến các kỹ thuật này. Suy cho cùng, ai lại không muốn giảm bớt số lượng cảm xúc tiêu cực trong cuộc sống hằng ngày cơ chứ?  Mặc dù tôi đã nghiên cứu triết học trong suốt cả quãng đời trưởng thành, nhưng thực ra mãi cho đến thời gian gần đây, vốn kiến thức của tôi về chủ nghĩa Khắc kỷ vẫn còn nghèo nàn vô cùng. Các giảng viên đại học và cao học chưa từng yêu cầu tôi tìm đọc các triết gia Khắc kỷ, và mặc dù cũng ham đọc sách, nhưng tôi lại không có nhu cầu tìm đọc họ. Nhìn chung, tôi không có nhu cầu chiêm nghiệm về một triết lý sống nào cả. Thay vào đó, như hầu hết mọi người, tôi cảm thấy thoải mái với thứ triết lý sống mặc định: theo đuổi tiền tài, địa vị xã hội và lạc thú. Có thể xem triết lý sống của tôi là một dạng chủ nghĩa khoái lạc khai ngộ.  Thế nhưng, ở độ tuổi ngoài 40, dòng đời bắt đầu đưa đẩy tôi tiếp xúc với chủ nghĩa Khắc kỷ. Đầu tiên phải kể đến cuốn tiểu thuyết A Man in Full của Tom Wolfe xuất bản năm 1998. Trong truyện, một nhân vật tình cờ phát hiện ra triết gia Khắc kỷ Epictetus và sau đó luôn nhiệt tình trích dẫn triết lý sống của ông. Tôi thấy điều này vừa hấp dẫn lại vừa khó hiểu.  Hai năm sau, tôi bắt đầu tiến hành nghiên cứu để viết một cuốn sách về chủ đề ham muốn. Trong quá trình này, tôi xem xét những lời khuyên đã được đưa ra suốt hàng thiên niên kỷ qua về việc làm chủ ham muốn. Tôi bắt đầu tìm hiểu quan điểm của các tôn giáo về ham muốn, bao gồm Cơ Đốc giáo, Ấn Độ giáo, Đạo giáo, Sufi giáo và Phật giáo (nhất là Thiền tông). Tôi tiếp tục xem xét lời khuyên về cách làm chủ ham muốn của các triết gia phương Tây nhưng nhận thấy chỉ có một số ít người đề cập đến vấn đề này, nổi bật là các triết gia Hy Lạp cổ đại thuộc trường phái Epicurean, trường phái Hoài nghi và trường phái Khắc kỷ.  Thực ra, tôi có một động cơ sâu xa khi nghiên cứu về chủ đề ham muốn. Từ lâu tôi đã mến mộ Thiền tông và nghĩ rằng nếu chiêm nghiệm kỹ hơn về nó trong quá trình nghiên cứu, tôi có thể trở thành một Thiền sư thực thụ. Thế nhưng, tôi bất ngờ phát hiện ra một số điểm tương đồng giữa chủ nghĩa Khắc kỷ và Thiền tông. Chẳng hạn, cả hai đều nhấn mạnh tầm quan trọng của việc suy ngẫm về bản chất tạm thời của thế giới xung quanh chúng ta và tầm quan trọng của việc làm chủ ham muốn, trong giới hạn khả năng cho phép. Họ cũng khuyên chúng ta theo đuổi sự bình thản và đưa ra chỉ dẫn để đạt đến và duy trì được trạng thái này. Ngoài ra, tôi cũng nhận thấy chủ nghĩa Khắc kỷ phù hợp với bản tính ưa phân tích mọi sự của tôi hơn là Phật giáo. Kết quả là tôi nghĩ đến chuyện trở thành một người thực hành chủ nghĩa Khắc kỷ, thay vì là một người tu tập Thiền tông.  Trước khi bắt đầu nghiên cứu về ham muốn, đối với tôi, chủ nghĩa Khắc kỷ là một triết lý sống không thiết thực, nhưng khi đọc tác phẩm của các triết gia Khắc kỷ, hóa ra hầu hết mọi điều tôi từng biết về họ đều sai bét. Đầu tiên, tôi biết rằng từ điển định nghĩa một người Khắc kỷ là “người dường như lãnh đạm hoặc không bị ảnh hưởng bởi niềm vui, nỗi buồn, khoái lạc hay đau đớn”. Vì vậy, tôi tưởng họ là những người hay kìm nén cảm xúc. Thế nhưng, tôi khám phá ra rằng mục tiêu của chủ nghĩa Khắc kỷ không phải là loại trừ cảm xúc khỏi cuộc sống mà là loại trừ những cảm xúc tiêu cực.  Khi đọc các tác phẩm của chủ nghĩa Khắc kỷ, tôi bắt gặp những cá nhân vui vẻ và lạc quan về cuộc sống (mặc dù họ luôn dành thời gian để suy nghĩ đến tất cả những viễn cảnh tồi tệ có thể xảy ra với họ), những cá nhân có khả năng tận hưởng trọn vẹn những thú vui của cuộc sống (đồng thời cũng thận trọng để không trở thành nô lệ cho những thú vui đó). Ngạc nhiên làm sao, tôi cũng bắt gặp những cá nhân coi trọng niềm vui; quả thực, theo Seneca, điều mà các nhà Khắc kỷ cố gắng khám phá là “cách tâm trí có thể luôn luôn theo đuổi một lộ trình kiên định và thuận lợi, có khuynh hướng tích cực đối với chính nó, và nhìn nhận được các trạng thái của nó bằng niềm vui”. Ông cũng khẳng định rằng người thực hành các nguyên tắc Khắc kỷ “cần phải luôn, dù anh ta có muốn hay không, cảm thấy hân hoan và có một niềm vui sâu sắc phát xuất từ bên trong, bởi lẽ anh ta thích thú với những nguồn vui của riêng mình, và không hề khao khát niềm vui nào lớn hơn những niềm vui nội tại này”. Tương tự, triết gia Khắc kỷ Musonius Rufus nói rằng nếu sống theo những nguyên tắc Khắc kỷ thì chúng ta tất có được “tâm tính vui vẻ và niềm vui bền vững”.  Thay vì sống thụ động, nhẫn nhục cam chịu sự bất công và bạo hành của thế giới, các nhà Khắc kỷ đã nỗ lực trọn đời để biến thế giới thành một nơi tốt đẹp hơn. Chẳng hạn như Cato Trẻ, triết lý sống Khắc kỷ của Cato không hề ngăn cản ông dũng cảm đấu tranh để khôi phục nền Cộng hòa La Mã. (Tuy không đóng góp tác phẩm nào cho chủ nghĩa Khắc kỷ, nhưng Cato là một nhà Khắc kỷ; kỳ thực, Seneca xem ông là một nhà Khắc kỷ hoàn hảo.) Cũng vậy, Seneca dường như luôn tràn đầy nhiệt huyết: không chỉ là một triết gia, ông còn là một nhà soạn kịch thành công, cố vấn chính trị cho hoàng đế, và có thể xem là một chủ ngân hàng đầu tư vào thời đó. Và Marcus Aurelius, ông không chỉ là một triết gia mà còn là một hoàng đế La Mã – kỳ thực, ông được xem là một trong những hoàng đế La Mã vĩ đại nhất. Khi đọc về các nhà Khắc kỷ, tôi cảm thấy vô cùng thán phục họ. Họ dũng cảm, chừng mực, lý trí và kỷ ', 42242)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (30, N'1', N'Lớp Học Tự Tin', N' Lee Jung Ho, Bang In Young', N'https://static-shop.waka.vn/resize/340x497x2/image/img.product/0/0/0/39/19975_1.jpg', N'1', 777, N'Lớp Học Tự Tin “Lớp học tự tin” Dành cho các bé từ độ tuổi 6+. Sách có độ dài vừa phải với nội dung thú vị và hấp dẫn, hình ảnh minh họa sống động giúp các bé thư giãn và học được nhiều bài học bổ ích về lòng tự tin.  Cuốn sách đưa ra những tình huống cụ thể mà các bạn nhỏ thường gặp phải đồng thời cũng nêu lên tâm trạng và cách xử lý cho từng tình huống đó. Mỗi khi rơi vào những hoàn cảnh khó xử khiến em mất tự tin, em phải suy nghĩ theo hướng nào, làm những gì để tâm trạng tốt lên? Cuốn sách sẽ đưa ra những gợi ý và phân tích để em hiểu hơn về các tình huống trong cuộc sống và từ đó, có cách ứng xử phù hợp và củng cố lòng tự tin của mình.  Trong học tập và giao tiếp hằng ngày, em có thường gặp những tình huống như thế này không?  Phải đứng trước mặt các bạn phát biểu, các bạn bảo rằng suy nghĩ của em sai, bạn bè chọc ghẹo khiến em cảm thấy bản thân đầy những nhược điểm…  Em đừng lo, cuốn sách này sẽ giúp em rèn kỹ năng phân tích vấn đề, giúp em hiểu được bản chất sự việc và đưa ra những cách ứng xử phù hợp nhất. Đồng thời, sách còn gợi ý những bài tập thực hành để em hiểu rõ bản thân và từ đó, trân quý bản thân hơn.  Với hình minh họa dễ thương, lời văn thân mật gần gũi, cuốn sách sẽ giống như một người bạn tâm tình cùng em trò chuyện. Từ chuyện trường lớp đến những việc trong gia đình, từ việc học tập đến những hoạt động ngoại khóa, mọi vấn đề đều có cách giải quyết và em sẽ thấy, lòng tự tin của mình tăng lên ngùn ngụt nhờ cuốn sách này!', 100000)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (123456132, N'1', N'Giải Nghiệm Cuộc Đời', N'Scott Galloway', N'https://static-shop.waka.vn/resize/340x497x2/image/img.product/0/0/0/38/19940_1.jpg', N'1', 2222, N'Giải Nghiệm Cuộc Đời  Làm sao để đạt được thành công? Làm cách nào để dung hòa giữa tham vọng và việc phát triển bản thân phù hợp với năng lực và đam mê?  Bạn có bao giờ hỏi bản thân nên làm gì ngay bây giờ để không phải hối tiếc khi bước qua tuổi 40, 50 hoặc 80?  Trên hành trình trưởng thành, nếu bạn gặp căng thẳng hay thậm chí u sầu, hãy ý thức rằng đây là một giai đoạn rất bình thường và tiếp tục tiến về phía trước. Hạnh phúc đang chờ bạn.  Tác giả Scott Galloway trong cuốn sách “Giải nghiệm cuộc đời” đã chia sẻ quan sát của mình với tư cách một doanh nhân thành công với nhiều công ty khởi nghiệp, một nhà nghiên cứu, một người chồng, người cha cũng như một đứa con, và còn là một người đàn ông Mỹ. Ông đã tổ chức buổi học cuối khóa kéo dài ba giờ với tên gọi “Phương trình Hạnh phúc”. Xuyên suốt buổi học, ông đã bóc tách các khái niệm thành công, tình yêu và một cuộc đời đáng sống.  Giải nghiệm cuộc đời gồm 4 phần:  Phần đầu tiên phác thảo những phương trình cơ bản mà tác giả và sinh viên của ông cùng nhau ôn lại vào mỗi mùa xuân: Nếu bí quyết tạo ra hạnh phúc được quy về một số lượng phương trình hữu hạn, chúng sẽ là gì?  Phần thứ hai khai thác sâu vào những gì Scot Galloway đã học được về thành công, hoài bão, sự nghiệp và tiền bạc từ kinh nghiệm bản thân với tư cách là nhân viên ngân hàng đầu tư, doanh nhân, giáo sư trường kinh doanh, đồng thời là tiếng nói chỉ ra tác động của các ông trùm công nghệ lên nền kinh tế và xã hội.  Phần ba – tình yêu và các mối quan hệ – lại sâu sắc hơn cả. Những người trẻ, đặc biệt là cánh đàn ông, đang phải vật lộn chắp vá những thông điệp hỗn loạn về cách gìn giữ các mối quan hệ và chinh phục thành công, để từ đó giành cho mình một chỗ đứng trong xã hội tư bản.  Phần thứ tư, cũng là phần cuối cùng, thách thức người đọc đối diện và giải quyết những vấn đề của bản thân, bao gồm việc nuôi dưỡng và chăm sóc sức khỏe thể chất, mặt tối của tâm hồn, cũng như những ngày cuối cùng nơi trần thế.', 22222)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (123456133, N'5', N'Chạm Đến Giấc Mơ', N'viet hoang', N'https://salt.tikicdn.com/cache/w1200/ts/product/c4/26/95/24875238a227ede468d0bfb15c0aca4c.jpg', N'4', 1, N'juyiuo', 70000)
INSERT [dbo].[Book_HE163990] ([bid], [cid], [bname], [author], [image], [pid], [quantity], [describe], [price]) VALUES (123456134, N'1', N'Tuổi thơ dữ dội', N'viet hoang', N'https://th.bing.com/th/id/R.dc3230d15e85bd5457130be9230949e8?rik=fqVuqREWHFxMcw&riu=http%3a%2f%2fwww.jordanellinger.com%2fwp-content%2fuploads%2f2018%2f03%2ftuoi-tho-du-doi-4.jpg&ehk=VV9St7qoIDejmSK5q3BALub4EYgm1JXXcIKL%2f%2fJhM5s%3d&risl=&pid=ImgRaw&r=0', N'1', 1, N'1', 80000)
SET IDENTITY_INSERT [dbo].[Book_HE163990] OFF
GO
INSERT [dbo].[Category_HE163990] ([cid], [cname]) VALUES (N'1', N'Sách Kĩ Năng')
INSERT [dbo].[Category_HE163990] ([cid], [cname]) VALUES (N'2', N'Sách Kinh Doanh')
INSERT [dbo].[Category_HE163990] ([cid], [cname]) VALUES (N'3', N'Sách Văn Học')
INSERT [dbo].[Category_HE163990] ([cid], [cname]) VALUES (N'4', N'Sách Thiếu Nhi')
INSERT [dbo].[Category_HE163990] ([cid], [cname]) VALUES (N'5', N'Sách Văn Hoá - Xã Hội')
INSERT [dbo].[Category_HE163990] ([cid], [cname]) VALUES (N'6', N'Sách Kĩ Thuật')
GO
SET IDENTITY_INSERT [dbo].[Order_HE163990] ON 

INSERT [dbo].[Order_HE163990] ([oid], [aid], [date], [total]) VALUES (1, 12, CAST(N'2022-11-09' AS Date), 160000)
SET IDENTITY_INSERT [dbo].[Order_HE163990] OFF
GO
INSERT [dbo].[Publisher_HE163990] ([pid], [pname]) VALUES (N'1', N'Saigon Books')
INSERT [dbo].[Publisher_HE163990] ([pid], [pname]) VALUES (N'2', N'Quân Đội')
INSERT [dbo].[Publisher_HE163990] ([pid], [pname]) VALUES (N'3', N'Thanh Niên')
INSERT [dbo].[Publisher_HE163990] ([pid], [pname]) VALUES (N'4', N'Kim Đồng')
INSERT [dbo].[Publisher_HE163990] ([pid], [pname]) VALUES (N'5', N'Ngoại Ngữ')
GO
ALTER TABLE [dbo].[Book_HE163990]  WITH CHECK ADD  CONSTRAINT [FK_Categories_HE163990] FOREIGN KEY([cid])
REFERENCES [dbo].[Category_HE163990] ([cid])
GO
ALTER TABLE [dbo].[Book_HE163990] CHECK CONSTRAINT [FK_Categories_HE163990]
GO
ALTER TABLE [dbo].[Book_HE163990]  WITH CHECK ADD  CONSTRAINT [FK_PublisherID_HE163990] FOREIGN KEY([pid])
REFERENCES [dbo].[Publisher_HE163990] ([pid])
GO
ALTER TABLE [dbo].[Book_HE163990] CHECK CONSTRAINT [FK_PublisherID_HE163990]
GO
ALTER TABLE [dbo].[Order_HE163990]  WITH CHECK ADD  CONSTRAINT [FK_Order_HE163990_Account_HE163990] FOREIGN KEY([aid])
REFERENCES [dbo].[Account_HE163990] ([id])
GO
ALTER TABLE [dbo].[Order_HE163990] CHECK CONSTRAINT [FK_Order_HE163990_Account_HE163990]
GO
ALTER TABLE [dbo].[OrderDetail_HE163990]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_HE163990_Book_HE163990] FOREIGN KEY([bid])
REFERENCES [dbo].[Book_HE163990] ([bid])
GO
ALTER TABLE [dbo].[OrderDetail_HE163990] CHECK CONSTRAINT [FK_OrderDetail_HE163990_Book_HE163990]
GO
ALTER TABLE [dbo].[OrderDetail_HE163990]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_HE163990_Order_HE163990] FOREIGN KEY([oid])
REFERENCES [dbo].[Order_HE163990] ([oid])
GO
ALTER TABLE [dbo].[OrderDetail_HE163990] CHECK CONSTRAINT [FK_OrderDetail_HE163990_Order_HE163990]
GO
USE [master]
GO
ALTER DATABASE [PRJ301_SE1706] SET  READ_WRITE 
GO
