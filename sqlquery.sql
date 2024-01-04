CREATE DATABASE tour_management
use tour_management

--tạo table tours
 CREATE TABLE tours(
	id INT NOT NULL IDENTITY,
	title nvarchar(255) not null,
	code nvarchar(10),
	images nvarchar(max),
	price int,
	discount int,
	infomation nvarchar(max),
	schedule nvarchar(max),
	timeStart datetime null,
	stock int,
	status nvarchar(20),
	possition int,
	slug nvarchar(255) not null,
	deleted bit,
	deletedAt datetime null,
	createdAt datetime null,
	updatedAt datetime null,
	PRIMARY KEY(id)
 )

--insert vào table tours
INSERT INTO tours (title, code, images, price, discount, infomation, schedule, timeStart, stock, status, position, slug, deleted, deletedAt, createdAt, updatedAt)
VALUES
(N'Tour Hạ Long', 'TOUR000001', '["https://backend.daca.vn/assets/tour/images/tour-ha-long.jpg", "https://backend.daca.vn/assets/tour/images/tour-ha-long-2.jpg", "https://backend.daca.vn/assets/tour/images/tour-ha-long-3.jpg"]', 1500000, 10, N'Duyệt thác, thăm đảo', N'Ngày 1: Duyệt thác\nNgày 2: Thăm đảo', '2023-01-15 08:00:00', 50, 'active', 1, 'tour-ha-long', 0, NULL, GETDATE(), GETDATE()),
(N'Tour Đà Nẵng', 'TOUR000002', '["https://backend.daca.vn/assets/tour/images/tour-da-nang.jpg"]', 2000000, 15, N'Thăm cầu Rồng, bãi biển Mỹ Khê', N'Ngày 1: Cầu Rồng\nNgày 2: Bãi biển Mỹ Khê', '2023-02-10 09:30:00', 40, 'active', 2, 'chuyen-di-da-nang', 0, NULL, GETDATE(), GETDATE()),
(N'Tour Nha Trang', 'TOUR000003', '["https://backend.daca.vn/assets/tour/images/tour-nha-trang.jpg"]', 1800000, 12, N'Tham quan Vinpearl, tắm biển', N'Ngày 1: Vinpearl\nNgày 2: Tắm biển', '2023-03-05 10:45:00', 60, 'active', 3, 'du-lich-nha-trang', 0, NULL, GETDATE(), GETDATE()),
(N'Tour Sài Gòn', 'TOUR000004', '["https://backend.daca.vn/assets/tour/images/tour-sai-gon.jpg"]', 2200000, 18, N'Khám phá quận 1, thưởng thức ẩm thực', N'Ngày 1: Quận 1\nNgày 2: Thưởng thức ẩm thực', '2023-04-20 11:15:00', 30, 'active', 4, 'hanh-trinh-sai-gon', 0, NULL, GETDATE(), GETDATE()),
(N'Tour Phú Quốc', 'TOUR000005', '["https://backend.daca.vn/assets/tour/images/tour-phu-quoc.jpeg"]', 2800000, 20, N'Dạo chợ đêm, tham quan hòn Móng Tay', N'Ngày 1: Chợ đêm\nNgày 2: Hòn Móng Tay', '2023-05-12 12:30:00', 45, 'active', 5, 'hanh-trinh-phu-quoc', 0, NULL, GETDATE(), GETDATE()),
(N'Tour Đảo Ngọc Cô Tô', 'TOUR000006', '["https://backend.daca.vn/assets/tour/images/tour-dao-ngoc-co-to.jpg"]', 2500000, 15, N'Thăm làng chài, tắm biển', N'Ngày 1: Làng chài\nNgày 2: Tắm biển', '2023-06-08 13:45:00', 55, 'active', 6, 'dao-ngoc-co-to', 0, NULL, GETDATE(), GETDATE()),
(N'Tour Khám Phá Huế', 'TOUR000007', '["https://backend.daca.vn/assets/tour/images/tour-hue.jpg"]', 1900000, 12, N'Tham quan đại cung điện, ngắm cầu Trường Tiền', N'Ngày 1: Đại cung điện\nNgày 2: Cầu Trường Tiền', '2023-07-25 14:00:00', 50, 'active', 7, 'kham-pha-hue', 0, NULL, GETDATE(), GETDATE()),
(N'Tour Sapa', 'TOUR000008', '["https://backend.daca.vn/assets/tour/images/tour-sapa.jpg"]', 3000000, 25, N'Leo Fansipan, thăm thị trấn Sa Pa', N'Ngày 1: Leo Fansipan\nNgày 2: Thăm Sa Pa', '2023-08-18 15:30:00', 35, 'active', 8, 'doan-tham-hiem-sapa', 0, NULL, GETDATE(), GETDATE()),
(N'Tour Vịnh Lan Hạ', 'TOUR000009', '["https://backend.daca.vn/assets/tour/images/tau-tour-vinh-lan-ha.jpg"]', 2600000, 18, N'Thăm đảo Quan Lạn, tắm biển Vân Đồn', N'Ngày 1: Đảo Quan Lạn\nNgày 2: Tắm biển Vân Đồn', '2023-09-10 16:15:00', 48, 'active', 9, 'vinh-lan-ha', 0, NULL, GETDATE(), GETDATE()),
(N'Tour Miền Tây', 'TOUR000010', '["https://backend.daca.vn/assets/tour/images/tour-mien-tay.jpg"]', 1700000, 10, N'Thăm cánh đồng lúa, đi cồn', N'Ngày 1: Cánh đồng lúa\nNgày 2: Đi cồn', '2023-10-05 17:00:00', 42, 'active', 10, 'mien-tay-mat-nuoc', 0, NULL, GETDATE(), GETDATE());


--tạo table categories
CREATE TABLE categories(
	id INT NOT NULL IDENTITY,
	title nvarchar(255) not null,
	image varchar(max),
	description nvarchar(max),
	status varchar(20),
	position int,
	slug varchar(255) not null,
	deleted bit,
	deletedAt datetime null,
	createdAt datetime null,
	updatedAt datetime null,
	PRIMARY KEY(id)
)

--insert vào table categories
INSERT INTO categories (title, image, description, status, position, slug, deleted, deletedAt, createdAt, updatedAt)
VALUES
(N'Du lịch trong nước', 'https://backend.daca.vn/assets/tour/images/du-lich-trong-nuoc.jpg', N'Các tour du lịch trong Việt Nam', 'active', 1, 'du-lich-trong-nuoc', 0, NULL, GETDATE(), GETDATE()),
(N'Du lịch nước ngoài', 'https://backend.daca.vn/assets/tour/images/du-lich-nuoc-ngoai.jpg', N'Các tour du lịch quốc tế', 'active', 2, 'du-lich-nuoc-ngoai', 0, NULL, GETDATE(), GETDATE()),
(N'Tour mùa hè', 'https://backend.daca.vn/assets/tour/images/tour-mua-he.jpeg', N'Các tour phù hợp cho mùa hè', 'active', 3, 'tour-mua-he', 0, NULL, GETDATE(), GETDATE()),
(N'Tour mùa đông', 'https://backend.daca.vn/assets/tour/images/tour-mua-dong.jpg', N'Các tour phù hợp cho mùa đông', 'active', 4, 'tour-mua-dong', 0, NULL, GETDATE(), GETDATE()),
(N'Tour thám hiểm', 'https://backend.daca.vn/assets/tour/images/tour-tham-hiem.jpg', N'Các tour khám phá và thám hiểm', 'active', 5, 'tour-tham-hiem', 0, NULL, GETDATE(), GETDATE()),
(N'Tour nghỉ dưỡng', 'https://backend.daca.vn/assets/tour/images/tour-nghi-duong.jpg', N'Các tour nghỉ dưỡng tại các khu resort', 'active', 6, 'tour-nghi-duong', 0, NULL, GETDATE(), GETDATE()),
(N'Tour ẩm thực', 'https://backend.daca.vn/assets/tour/images/tour-am-thuc.jpg', N'Các tour trải nghiệm ẩm thực độc đáo', 'active', 7, 'tour-am-thuc', 0, NULL, GETDATE(), GETDATE()),
(N'Tour giáo dục', 'https://backend.daca.vn/assets/tour/images/tour-giao-duc.jpg', N'Các tour học thuật và giáo dục', 'active', 8, 'tour-giao-duc', 0, NULL, GETDATE(), GETDATE()),
(N'Tour thể thao', 'https://backend.daca.vn/assets/tour/images/tour-the-thao.jpg', N'Các tour liên quan đến hoạt động thể thao', 'active', 9, 'tour-the-thao', 0, NULL, GETDATE(), GETDATE()),
(N'Tour gia đình', 'https://backend.daca.vn/assets/tour/images/tour-gia-dinh.jpg', N'Các tour phù hợp cho cả gia đình', 'active', 10, 'tour-gia-dinh', 0, NULL, GETDATE(), GETDATE());


--tạo table tours_categories
CREATE TABLE tours_categories(
	tour_id INT,
	category_id INT,
	PRIMARY KEY (tour_id, category_id),
	CONSTRAINT FK_tours_categories_TO_tours FOREIGN KEY (tour_id) REFERENCES tours(id),
	CONSTRAINT FK_tours_categories_TO_categories FOREIGN KEY (category_id) REFERENCES categories(id)
)



