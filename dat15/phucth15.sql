-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 12, 2011 at 12:33 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE IF NOT EXISTS `danhmuc` (
  `id_dm` int(11) NOT NULL AUTO_INCREMENT,
  `danhmuc` text CHARACTER SET utf8 NOT NULL,
  `id_t` int(11) NOT NULL,
  PRIMARY KEY (`id_dm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id_dm`, `danhmuc`, `id_t`) VALUES
(1, 'Tiểu thuyết', 2),
(2, 'Văn học', 2),
(3, 'Tin học', 2),
(4, 'Thiếu nhi', 2),
(5, 'Truyện tranh', 2);

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE IF NOT EXISTS `lienhe` (
  `id_lh` int(250) NOT NULL AUTO_INCREMENT,
  `tenkh` text NOT NULL,
  `diachi` text NOT NULL,
  `dienthoai` int(50) NOT NULL,
  `email` text NOT NULL,
  `ykien` text NOT NULL,
  PRIMARY KEY (`id_lh`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `lienhe`
--

INSERT INTO `lienhe` (`id_lh`, `tenkh`, `diachi`, `dienthoai`, `email`, `ykien`) VALUES
(1, 'huong', 'hai duong', 132847, 'thaonguyenxanh_89tkhd@yahoo.com.vn', 'Xin quý khách vui lòng điền ý kiến đóng gop, phản ánh vào đây...'),
(2, 'jtgkj', 'ỳ', 0, 'jjgf', 'jfj'),
(3, 'sgsg', 'sgsdgs', 2525, 'bfdhfd', 'Xin quý khách vui lòng điền ý kiến đóng gop, phản ánh vào đây...'),
(4, 'hdhf', 'shsd', 0, 'sh', 'Xin quý khách vui lòng điền ý kiến đóng gop, phản ánh vào đây...');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `hoten` varchar(200) NOT NULL,
  `matkhau` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `diachi` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `hoten`, `matkhau`, `email`, `diachi`) VALUES
(7, 'admin', 'admin', '', ''),
(8, 'aaa', 'aaa', '', ''),
(13, 'nhan', 'nhan', 'wwww', 'ww'),
(20, 'f', '8fa14cdd754f91cc6554c9e71929cce7', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL,
  `tenmenu` text CHARACTER SET utf8 NOT NULL,
  `hienthi` binary(1) NOT NULL,
  `sapxep` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `tenmenu`, `hienthi`, `sapxep`) VALUES
(2, 'sản phẩm', '1', 2),
(3, 'tin khuyến mại', '1', 3),
(4, 'thời sự sách', '1', 4),
(5, 'Liên hệ', '1', 5);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE IF NOT EXISTS `sanpham` (
  `id_sp` int(100) NOT NULL AUTO_INCREMENT,
  `tensp` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tacgia` text NOT NULL,
  `hinhanh` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `chitiet` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `gia` double NOT NULL,
  `id_dm` int(100) NOT NULL,
  `hienthi` binary(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_sp`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id_sp`, `tensp`, `tacgia`, `hinhanh`, `chitiet`, `gia`, `id_dm`, `hienthi`) VALUES
(1, 'TƯ VẤN TÂM LÝ HỌC ĐƯỜNG 03 - HÃY LÀ CHÍNH MÌNH', 'Nguyễn Thị Oanh ', 'images/1.jpg', 'Sách gồm những mẩu tư vấn tâm lý của tác giả Nguyễn Thị Oanh, được tập hợp theo các chủ đề chính: gia đình; cảm nghĩ về bản thân và các giá trị sống; chuyện học hành, hướng nghiệp; tình bạn, tình yêu… được trình bày bằng giọng văn giản dị, nhẹ nhàng theo quan điểm hiện đại nhưng vẫn dựa trên nền tảng giá trị của dân tộc. Tập sách sẽ là cẩm nang cần thiết cho các bạn trẻ và các bậc phụ huynh. \r\n', 26, 1, '1'),
(2, 'KHI TA LỚN - BẺ MÃ KHÓA', 'Hà Hải Châu tổng hợp ', 'images/2.jpg', 'Tại sao đến lứa tuổi dậy thì, những đứa trẻ bỗng trở nên ương bướng, trái tính trái nết và dễ dàng bùng nổ? Tại sao những cách nhìn của trẻ bỗng trở nên thay đổi, mọi hệ quy chiếu trong cuộc sống đều xáo trộn, khi trẻ vụt lớn lên? Cuốn sách này góp phần trả lời câu hỏi “tại sao”, dưới một góc nhìn đặc biệt: suy nghĩ của hai cô bé tuổi teen. Mỗi một phần trong quyển sách này sẽ đi vào từng vấn đề chi tiết thường xảy ra với tuổi mới lớn, đồng thời cũng hiến kế cho các bậc cha mẹ những cách tiếp cận tốt nhất để tránh hiểu lầm. Sách dành cho đối tượng bạn đọc rộng rãi, nhất là các bạn trẻ tuổi teen để tự điều chỉnh hành vi và các bậc cha mẹ để hiểu thêm về con cái mình. \r\n', 35, 1, '0'),
(3, 'LOVE STORIES - HÃY TIN ANH', 'Cameron Dokey ', 'images/3.jpg', 'Kenya Clarke bắt gặp bạn trai đang… lừa dối cô! Cô lập tức bỏ anh và thề không bao giờ yêu ai nữa. nhưng đúng lúc Kenya chắc chắn rằng không một chàng trai nào đáng tin cậy thì cô gặp Scott Hutson hấp dẫn. Chỉ nhìn nụ cười tuyệt mỹ của anh thôi cũng đủ làm bất kỳ cô gái nào tan chảy.', 40, 2, '1'),
(4, 'NHÀ GIẢ KIM - BÍ MẬT CỦA NICHOLAS FLAMEL BẤT TỬ', 'Michael Scott ', 'images/4.jpg', 'Nicholas Flamel là một nhà giả kim, sinh vào năm 1330, nhờ học được phép thuật bất tử từ cuốn sách Codex của pháp sư Abraham, ông sống đến đầu thế kỷ XXI và gắn liền định mệnh của mình với sự tồn tại của Codex. Bọn Elder Đen Tối, thông qua tiến sĩ John Dee muốn đoạt lấy để đẩy loài người vào thời đại hồng hoang. Cuộc chiến đấu giữa Flamel Bất Tử và Dee Đen Tối diễn ra giữa thời đại của wifi, ipod, internet, laptop và điện thoại di động đã vô tình lôi cuốn sự tham gia của hai chị em sinh đôi Josh và Sophie Newman.', 35, 2, '0'),
(5, 'SÁNG TẠO HƠN VỚI MÁY VI TÍNH TẠI SAO KHÔNG? – BLOG & EMAIL', 'Võ Hiếu Nghĩa ', 'images/5.jpg', 'Sách hướng dẫn bạn những thao tác cơ bản nhằm khai thác triệt để tính năng của hai tiện ích thông dụng nhất hiện nay trên Internet là Blog và Email.', 40, 3, '0'),
(6, 'SÁNG TẠO HƠN VỚI MÁY VI TÍNH TẠI SAO KHÔNG? – XỬ LÝ CÁC TẬP TIN PHIM ẢNH', 'Võ Hiếu Nghĩa ', 'images/6.jpg', 'Sách hướng dẫn bạn cách xử lý các tập tin phim ảnh được tải về từ trang web Youtube. Sách cũng hướng dẫn cách chuyển những đoạn phim, bức ảnh từ máy quay, máy chụp ảnh kỹ thuật số vào máy vi tính; cách dùng scanner để quét ảnh; cách chèn lời giới thiệu vào đoạn video; chèn bài hát MP3 vào nội dung phim… ', 25, 3, '1'),
(7, 'THỎ QUẬY THỎ NHÍ 12 - TÌNH ANH EM', 'Hà Hải Châu biên soạn ', 'images/7.jpg', 'Phố Cây Bàng được phen hốt hoảng khi nhận được bức thư “tống đồ ăn” chuộc Thỏ Nhí của nặc danh Cáo Hoang… Thỏ Quậy cũng hốt hoảng không kém khi biết Thỏ Nhí đã bị rơi vào tay của Cáo Hoang thật… Sau sự bày trò này, mọi người của Phố Cây Bàng có dịp khám phá ra tình anh em của Thỏ Quậy và Thỏ Nhí. Các em cùng khám phá nhé!', 47, 4, '1'),
(8, 'THỎ QUẬY THỎ NHÍ 10 – TẬP LÀM THỎ TỐT', 'Hà Hải Châu biên soạn ', 'images/8.jpg', 'Không quậy thì không phải là Thỏ Quậy vì thế mà cái ý định một ngày làm thỏ tốt của Thỏ Quậy bị đứt gánh giữa chừng, và tiếp theo là gì mời các em cùng khám phá qua tập sách này nhé!', 17, 4, '1'),
(9, 'DONALD VÀ BẠN HỮU 14 - GHÉP ẢNH ', 'Walt Disney ', 'images/9.jpg', 'Donald và bạn hữu tập 14 phát hành ngày 26 tháng 11, gồm các truyện: Kho bạc nổi (phần 2); Bí ẩn dưới đáy phá; Kẻ cắp gặp bà già.\r\n\r\n', 50, 5, '1'),
(10, 'HARRY POTTER VÀ HỘI PHƯỢNG HOÀNG (TẬP 5) ', 'J.K.Rowling ', 'images/10.jpg', 'Harry học năm thứ năm trường Hogwarts. Chúa tể hắc ám đã trở lại, nhưng Bộ Pháp thuật không muốn tin vào điều đó. Một cánh cửa ở cuối hành lang vắng ngắt ám ảnh những giấc ngủ của Harry… ', 40, 5, '0');

-- --------------------------------------------------------

--
-- Table structure for table `thoisu`
--

CREATE TABLE IF NOT EXISTS `thoisu` (
  `id_ts` int(11) NOT NULL AUTO_INCREMENT,
  `id_t` int(11) NOT NULL,
  `tomtat` text CHARACTER SET utf8 NOT NULL,
  `tieude` text CHARACTER SET utf8 NOT NULL,
  `noidung` text CHARACTER SET utf8 NOT NULL,
  `sapxep` int(11) NOT NULL,
  `anh` text NOT NULL,
  PRIMARY KEY (`id_ts`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `thoisu`
--

INSERT INTO `thoisu` (`id_ts`, `id_t`, `tomtat`, `tieude`, `noidung`, `sapxep`, `anh`) VALUES
(1, 1, 'Vượt qua những mất mát, chị đã chọn cho mình một lẽ sống: Làm sách nói dành cho người mù.', 'Sách nói cho người khiếm thị ', 'Niềm vui khi được gieo hạt\r\n\r\nTình cờ đến Trường Khiếm thị Nguyễn Đình Chiểu chơi, chị trò chuyện và kể chuyện cổ tích cho các học sinh nơi đây. “Thấy các em thích quá, tôi nghĩ: Tại sao mình không làm những quyển sách nói để gửi đến các em? Các em đã mù bẩm sinh, nếu không được tiếp cận với tri thức thì chẳng khác nào mù thêm lần nữa”.\r\n\r\nTay trắng cùng đôi chân không còn nguyên vẹn, chị gõ cửa khắp nơi để xin tiền, phương tiện, máy móc. Rồi chị cũng thuê được một căn phòng nhỏ, chật hẹp để làm nơi thu âm. Máy móc cũ kỹ, một mình chị vừa đọc vừa bấm máy thu, các quyển sách nói được chuyền tay từ các em Trường Nguyễn Đình Chiểu sang hội người mù các quận, huyện, các tỉnh.\r\n\r\n“Trong lúc nhu cầu sách nói quá lớn mà phòng ốc chật hẹp thì một mạnh thường quân cho mượn một căn phòng để thu với điều kiện khi có khách thuê, phải trả phòng. Rồi phòng cũng có người thuê. May thay, trong một buổi giao lưu vì sự nghiệp chăm sóc trẻ em, tôi đã nói lên nỗi niềm của mình và được Tổng Lãnh sự quán Nhật Bản tài trợ toàn bộ kinh phí xây phòng, trang bị máy móc ngay tại Hội Phụ nữ từ thiện. Tôi sung sướng còn hơn bắt được vàng” - chị kể.\r\n\r\nNhững tia nắng ấm cho người khiếm thị\r\n\r\nNhững quyển sách nói không còn chỉ là những câu chuyện cổ tích mà là các quyển sách giáo khoa từ lớp 1 đến lớp 12 với các môn: văn, sử, địa, hóa, sinh, lý, tiếng Việt, tiếng Anh, giáo trình đại học, cao đẳng, cao học… Năm 2010, Quỹ Từ thiện sách nói dành cho người mù ra đời. \r\n\r\nMột trong những người tìm đến thư viện sách nói nhiều nhất là anh Nguyễn Văn Long, một người khiếm thị đã tốt nghiệp cử nhân sử học, xã hội học và thạc sĩ, nay là giáo viên Trường Khiếm thị Nguyễn Đình Chiểu. Anh tâm sự: “Thành quả  tôi có được hôm nay có sự góp phần rất nhiều từ những quyển sách nói của chị Hướng Dương”.\r\n\r\nQuỹ đã xây dựng trang web sachnoionline với 415 đầu sách và hơn 7 triệu lượt người truy cập, phục vụ rộng rãi người mù và cả người sáng mắt trong và ngoài nước. Nhưng mới đây, nhà từ thiện muốn lấy lại mảnh đất cho mượn.Chị bộc bạch: “Quỹ đã gửi đơn xin UBND TPHCM một chỗ để thư viện hoạt động. Chúng tôi rất mong có chỗ ổn định, làm ra những quyển sách hay để phục vụ tốt hơn cho những người kém may mắn trong cuộc', 1, 'images/ts1.jpg'),
(2, 1, 'Ngày 23-4 là ngày Sách và bản quyền, mục đích là khuyến khích đọc sách in (tức là sách hiểu theo nghĩa cổ điển, in bằng máy in công nghiệp ra giấy, không phải sách điện tử), cả trên thế giới và cả Việt Nam. Như thế là việc phải cổ vũ cho đọc sách là nỗi lo chung, không riêng gì nước ta. ', 'Nhân ngày Sách nghĩ về sách và đọc sách ', 'Cuộc sống luôn đặt ra những vấn đề cần phải tháo gỡ mới, trong đó lơ là việc đọc sách in là một trong những căn bệnh mạn tính của cuộc sống hiện đại. Là người làm nghề cho ra đời những quyển sách, tức là nhà văn, thực trạng đó không khỏi đau lòng. Nhưng cũng cần tỉnh táo để tìm ra căn nguyên.\r\n\r\nỞ Việt Nam, từ chỗ bình quân đầu người chỉ 0,5 kg giấy/năm, việc in sách báo phải hạn chế vì thiếu giấy, nay đã khá hơn nhiều. Theo Cục Xuất bản (Bộ VH-TT-DL) năm 2010, nước ta có 60 nhà xuất bản, cùng với số sách xuất bản nhất thời, họ đã xuất bản 25.769 đầu sách với 277.765 triệu bản, vượt cả về số đầu sách và số bản sách của năm trước đó và tăng hàng chục lần so với trước. Với số sách và báo đã được phát hành, Việt Nam đã trở thành một trong những nước có hệ thống xuất bản và truyền thông hàng đầu trong khu vực và không còn thua kém quá xa các nước tiền tiến trên thế giới. Tuy lượng sách phát hành hàng năm lớn như vậy, hơn nữa nhiều sách còn được in lậu, được nối bản nhưng vẫn tiêu thụ hết nhưng mấy năm gần đây, văn hóa đọc vẫn là vấn đề cả xã hội lo lắng.\r\n\r\nTại sao con người ngày nay ít đọc sách? Một câu hỏi như thế sẽ có vô số câu trả lời. Có người phủ định hoàn toàn, cho rằng con người hiện đại vẫn đọc sách, thậm chí còn đọc nhiều sách hơn trước. Bằng chứng đưa ra là lượng sách xuất bản ngày càng nhiều, nhiều gấp nhiều lần trước đây. Sách còn bán được tức là còn có người đọc (nếu không có người đọc thì bán cho ai và vì thế, in làm gì). Vậy báo động về tình trạng đọc sách hiện nay là báo động giả. Những ý kiến ngược lại thì cho rằng lượng sách nhiều hơn trước vì dân số tăng hơn trước, số người biết chữ tăng hơn trước. Đúng là lượng sách in ra tăng gấp bội nhưng phải xem đó là sách gì và lượng sách in ra tuy nhiều nhưng tính bình quân thì không tăng, thậm chí là giảm. Một thực trạng không mấy vui là tính bình quân, một người Việt Nam mỗi năm chỉ đọc 2,7 đầu sách (kể cả sách giáo khoa), số người đọc sách chỉ tập trung ở thành phố và các em học sinh đọc sách giáo khoa để học, số người đọc sách ở nông thôn, nhất là vùng sâu vùng xa là rất thấp. Còn sách in ra là sách gì thì có thể chắc chắn rằng sách giáo khoa và các sách dùng trong nhà trường chiếm 80%, số còn lại thì một lượng đáng kể là truyện tranh, các sách vừa học vừa chơi dành cho đối tượng nhỏ tuổi, các loại sách khoa học kỹ thuật, văn học nghệ thuật, văn hóa, chính trị rất ít. Chẳng hạn như thơ, riêng Nhà xuất bản Hội Nhà Văn, tính bình quân một ngày có hơn 4 tập thơ ra đời (một năm khoảng 1.350 đầu sách thơ). Đầu sách thơ nhiều như vậy nhưng mỗi đầu sách chưa tới 200 trang, lượng bản thông thường là 500, bởi thế số bản và số trang có khi chỉ bằng một phần rất nhỏ của một cuốn truyện tranh, thí dụ như truyện tranh Đô rê mon, chưa kể thơ không thể đến tay người đọc bình thường vì rất ít ai nhận bán thơ.', 2, 'images/ts2.jpg'),
(3, 1, 'Ngày Sách thế giới (23/4) do Tổ chức Văn hoá, Khoa học và Giáo dục Liên Hiệp quốc (UNESCO) tổ chức hàng năm từ 1996. Trước đó, năm 1872 được UNESCO tuyên bố là Năm Sách quốc tế. Ngày 23/4 là ngày lễ sách truyền thống của vùng Catalonia- Tây Ban Nha (còn gọi là Ngày Thánh George), vào ngày này người Tây Ban Nha tặng hoa hồng cho mỗi cuốn sách được bán ra. Ngày 23/4 cũng trùng với ngày mất của nhiều nhà văn lớn như Cervantes, Shakespeare và Inca Garcilaso de la Vega… Vì lẽ đó, ngày 23/4 rất phù hợp để được lựa chọn.', 'Ngày Sách thế giới, 23/4', 'Tuy nhiên, tên gọi đầy đủ của ngày này là Ngày Sách và Bản quyền thế giới. Hàng năm các hoạt động kỷ niệm ngày sách thế giới được tổ chức tại nhiều nước trên thế giới. Năm 2008 được UNESCO lấy chủ đề là “Năm quốc tế về ngôn ngữ” và thành phố Amsterdam (Hà Lan) được chọn là “Thủ đô sách thế giới”. Từ năm 2001, UNESCO đưa thêm sáng kiến “Thủ đô sách thế giới” để khuyến khích việc đọc sách. Tiêu chuẩn lựa chọn là có thị trường sách, số nhà xuất bản, những người đọc ở địa phương, số thư viện và vị trí của chúng. Một số thành phố khác có được vinh dự này như Madrid, Alexandria, New Delhi, Antwerp, Montreal, Turin và Bogota.\r\n\r\nTrước đây, một số tờ báo của Việt Nam có nhầm lẫn nhỏ về ngày lễ này. Năm 2006, các tờ báo như tuoitre.com.vn, vietbao.vn, vnmedia.vn và cả trang cinet.gov.vn của Bộ Văn hoá, Thể thao và Du lịch đều đưa tin Ngày Sách thế giới là 2/3/2006.  Thực chất các trang này đều lấy từ 1 nguồn là BBC News và các biên tập viên không biết rằng ở Anh lấy ngày Thứ Năm đầu tiên của Tháng 3 để kỷ niệm Ngày Sách thế giới, trong khi những nước còn lại kỷ niệm vào ngày 23/4. Người Anh chọn ngày Thứ năm đầu tiên của Tháng 3 là để phù hợp với hoạt động của các trường học ở nước này, vì trẻ em là đối tượng chính mà Ngày Sách thế giới tập trung tuyên truyền.', 3, 'images/ts3.jpg'),
(4, 1, 'Nếu đối với người lớn, sách bổ sung lượng kiến thức cần có để hoàn thiện tri thức thì đối với trẻ em, sách sẽ mở rộng thế giới quan và tích lũy vốn kinh nghiệm phong phú.', 'Chọn sách cho con thế nào là đúng? ', 'Nếu đối với người lớn, sách bổ sung lượng kiến thức cần có để hoàn thiện tri thức thì đối với trẻ em, sách sẽ mở rộng thế giới quan và tích lũy vốn kinh nghiệm phong phú. Ở thiếu nhi, sự nhận thức của các em còn non nớt, sự phân biệt điều tốt – xấu còn ở mức độ thấp. Vào độ tuổi này, sách với các em như con dao hai lưỡi, nó có thể xây dựng tư tưởng, đạo đức, giáo dục những phẩm chất tốt, mà cũng có thể làm các em có những nhận thức, những đánh giá sai lệch về nhiều vấn đề.\r\n\r\nĐối với trẻ em việc đọc sách quan trọng rất nhiều so với người lớn (Ảnh minh họa)\r\n\r\nChính vì lẽ đó, đối với trẻ em việc đọc sách quan trọng rất nhiều so với người lớn. Về cơ bản, đối với trẻ em, phạm vi hoạt động của các bé còn rất hẹp, các em chưa có sự tiếp xúc xã hội, chưa định hình được… bởi vậy sách chính là cầu nối giúp các em hoàn thiện hơn\r\n\r\nShop phong thủy Hộ Mệnh có bán đá phong thủy thiên nhiên, trang sức đá quý dùng để hộ mệnh, sách phong thủy để tự tìm hiểu và ứng dụng. Tư vấn miễn phí.\r\n\r\nTrong thời đại bùng nổ thông tin, nội dung sách báo rất phong phú, phức tạp, khối lượng ngày càng lớn mà khả năng tiếp thu của trẻ là có hạn nên việc người lớn chọn sách cho các em là cần thiết. Sách báo cho thiếu nhi là công cụ giáo dục có tác dụng rất lớn, bởi thế, nội dung của nó phải hướng vào những mục tiêu cụ thể sau:\r\n\r\n1. Cha mẹ nên chọn những cuốn sách mà thông qua đó có thể giáo dục các em lối sống có lý tưởng, có đạo đức. Hãy chọn cho con mình những cuốn sách có tính giáo dục những kiến thức căn bản và cập nhật các kiến thức mới, xây dựng cơ sở để các em phát huy tài năng, năng lực của mình. Trong việc chọn sách, để chọn được những cuốn sách phải thỏa mãn làm sao để các em có thể đọc và hiểu diễn tiến của cốt truyện. Các em có thể dự đoán trước nội dung câu chuyện và chia sẻ những suy nghĩ của mình về những nhân vật trong ấy mà không cần đến hình ảnh minh hoạ là rất quan trọng.', 4, 'images/ts4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tinkm`
--

CREATE TABLE IF NOT EXISTS `tinkm` (
  `id_km` int(11) NOT NULL AUTO_INCREMENT,
  `ten_km` text CHARACTER SET utf8 NOT NULL,
  `anh_km` text CHARACTER SET utf8 NOT NULL,
  `chitiet` text CHARACTER SET utf8 NOT NULL,
  `tacgia` text CHARACTER SET utf8 NOT NULL,
  `giaban` double NOT NULL,
  `giamgia` text NOT NULL,
  PRIMARY KEY (`id_km`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tinkm`
--

INSERT INTO `tinkm` (`id_km`, `ten_km`, `anh_km`, `chitiet`, `tacgia`, `giaban`, `giamgia`) VALUES
(1, 'Tự nhiên như người Hà Nội', 'images/km1.jpg', '“Không ngơi nghỉ, không phút nào như phút nào, ngày hôm nay Hà Nội sống hối hả, như cuống quýt giành lại những năm tháng chậm chạp đã qua."\r\nCuốn sách này giới thiệu với bạn đọc những nét đặc trưng về Hà Nội với những nội dung như: Phố cổ, Hồ Gươm.. trong không gian Hà Nội; Hà Nội: Văn hoá công viên; Hà Nội: Chợ trong chợ; Hà Nội nhìn từ các đô thị vệ tinh vùng Bắc Bộ; Tự nhiên như người Hà Nội; Giới trẻ Hà Nội và vòng vây giải trí...', 'Nguyễn Trương Quý ', 40, '10%'),
(2, 'Khoa học khám phá', 'images/km2.jpg', 'Cuốn sách tập hợp những bài giảng những cuộc phỏng vấn và những bài báo nối tiếng nhất của Feynman - người được coi là kho tàng tri thức cho tất cả mọi người trên mọi nẻo đường cuộc sống, đã miêu tả một cách rõ ràng niềm đam mê tri thức của ông trên nhiều lĩnh vực: vật lý, triết học, sân khấu, vi tính. Qua đó giúp bạn đọc hiểu hơn về con người của Feynman như ông vốn thế, luôn đùa giỡn với những ý tưởng nhưng lại luôn nghiêm túc với những mà ông coi là  quan trọng. Cũng qua những tài liệu đó giúp bạn đọc hiểu vì sao ông là nhà khoa học được ngưỡng mộ trong suốt cuộc đời và được tôn kính ngay cả khi không còn có mặt trên thế gian này. ', 'Richard P.Feynman ', 65, '25%'),
(3, 'HÀ NỘI 1000 năm', 'images/km3.jpg', 'Cuốn sách giới thiệu một cách đầy đủ về văn hóa, lịch sử của vùng đất địa linh nhân kiệt nhằm giúp bạn đọc trong và ngoài nước có thêm tài liệu khi tìm hiểu về vùng Thủ đô ngàn năm văn vật này.', 'Nguyễn Vinh Phúc ', 54, '12%'),
(4, 'Con gái lo lắng', 'images/km4.jpg', 'Sách gồm 2 tập với những câu chuyện giáo dục nhẹ nhàng về tình yêu thương, sự sẻ chia… giúp hình thành những đức tính tốt đẹp ở các em trong quá trình hoàn thiện nhân cách của mình.', 'Nguyễn Nam – Như Quỳnh biên dịch ', 40, '10%');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `id_t` int(11) NOT NULL AUTO_INCREMENT,
  `kieu` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_t`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id_t`, `kieu`) VALUES
(1, 'bài viết'),
(2, 'sản phẩm');
