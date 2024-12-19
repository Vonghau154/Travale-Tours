CREATE DATABASE java52;
USE java52;

CREATE TABLE Product (
    id INT PRIMARY KEY IDENTITY(1,1), -- Khóa chính tự tăng
    image NVARCHAR(MAX),              
    name NVARCHAR(255) NOT NULL,      
    price FLOAT NOT NULL,              
    quantifier INT NOT NULL,           -- Cột thời gian du lịch  
    description NVARCHAR(255),         -- Cột giới thiệu sản phẩm
    qty INT DEFAULT 1                  -- Số lượng đặt hàng, mặc định là 1
);

INSERT INTO Product (image, name, price, quantifier, description, qty) 
VALUES 
('https://dulichcoguu.com/wp-content/uploads/2024/03/tour-xe-may-chau-au-standee-2024.jpg', N'TOUR XE MÁY CHÂU ÂU', 199.99, 7, N'Chuyến tham quan được hỗ trợ đầy đủ hậu cần với Leader địa phương, leader người Việt, Backup truck, thợ sửa xe đi cùng.', 1),
('https://dulichcoguu.com/wp-content/uploads/2024/03/tour-ladakh-standee-2024.jpg', N'TOUR DU LỊCH LADAKH', 299.99, 10, N'Hành trình Roadtrip thú vị khám phá vùng đất Ladakh, tham quan các thánh hồ Pangong, Tso Moriri, cưỡi lạc đà ở thung lũng Nubra…', 1),
('https://dulichcoguu.com/wp-content/uploads/2024/03/tour-ai-cap-standee-2024.jpg', N'TOUR DU LỊCH AI CẬP', 149.50, 8, N'Du thuyền sông Niles, ốc đảo Siwa, Kim tự tháp Giza, đi khinh khí cầu ở Luxor…', 1),
('https://dulichcoguu.com/wp-content/uploads/2024/05/tour-tay-tang-standee.jpg', N'Tour hành hương Tây Tạng', 349.75, 13, N'Tour hành hương Tây Tạng 13 ngày: Kora núi Kailash là hành trình khám phá Tây Tạng.', 1),
('https://dulichcoguu.com/wp-content/uploads/2024/05/tour-tho-nhi-ky-standee.jpg', N'Tour Thổ Nhĩ Kỳ 9 ngày', 99.99, 9, N'Tour Thổ Nhĩ Kỳ 9 ngày trọn gói, trải nghiệm nét đẹp đặc biệt ở vùng đất văn hóa cổ xưa.', 1);



-- Tạo bảng Detail liên kết với Product
CREATE TABLE Detail (
    detail_id INT PRIMARY KEY IDENTITY(1,1), -- Khóa chính tự tăng
    product_id INT,                           -- Khóa ngoại liên kết với bảng Product
    detail_info NVARCHAR(400) NOT NULL,       -- Thông tin chi tiết
    additional_image NVARCHAR(MAX),           -- Ảnh bổ sung
    FOREIGN KEY (Product_id) REFERENCES Product(id) -- Thiết lập khóa ngoại
);
INSERT INTO Detail (detail_info , additional_image) 
VALUES 
(N' Chuyến đi với đặc điểm chính là khám phá phong cảnh ngoạn mục của dãy Alps. Hành trình bao gồm băng qua những ngọn núi mang tính biểu tượng, khám phá những ngôi làng quyến rũ và hòa mình vào nền văn hóa phong phú của các quốc gia như Ý, Thụy Sĩ và Áo.','https://dulichcoguu.com/wp-content/uploads/2024/01/tour-du-lich-chau-au-bang-xe-may.jpg'),
(N' Hành trình mang đến hành trình khám phá các địa danh nổi tiếng tại Ladakh, cưỡi lạc đà ở thung lũng, khám phá các tu viện nổi bật, các thánh hồ tuyệt vời nhất, và nhiều địa danh nổi bật ở Ladakh.','https://dulichcoguu.com/wp-content/uploads/2021/11/tour-ladakh-fit-tour-2024.jpg'),
(N' Tour du lịch Ai Cập 12 ngày 11 đêm trọn gói với nhiều hoạt động: cưỡi lạc đà, đi du thuyền 5 sao trên sông Nile, đốt lửa trại, bay khinh khí cầu ở Luxor...,','https://dulichcoguu.com/wp-content/uploads/2024/07/tour-ai-cap-fittour.jpg'),
(N' Với hành trình được xây dựng kỹ lưỡng, bạn sẽ tận hưởng tất cả những điểm nổi bật của Tây Tạng, bao gồm các điểm tham quan nổi tiếng từ Lhasa đến Trại Căn cứ Everest và hồ Manasarovar linh thiêng, và hành trình đi bộ qua Mt.Kailash linh thiêng.','https://dulichcoguu.com/wp-content/uploads/2023/05/tour-hanh-huong-kora-tay-tang-kailash.jpeg'),
(N' Tour Thổ Nhĩ Kỳ 9 ngày trọn gói, trải nghiệm nét đẹp đặc biệt ở vùng đất văn hóa cổ xưa. Hành trình là chuyến đi hấp dẫn về văn hóa, cảnh quan và những trải nghiệm. Bạn sẽ có có thời gian khám phá các thành phố lớn cổ đại, những vùng làng quê, các di tích Thánh, thành cổ Troy...','https://dulichcoguu.com/wp-content/uploads/2023/12/tour-tho-nhi-ky-9-ngay.jpg');


CREATE TABLE Accounts (
	
    Username NVARCHAR(50) PRIMARY KEY,  -- Tên đăng nhập (khóa chính)
    Password NVARCHAR(255) NOT NULL,     -- Mật khẩu
    Fullname NVARCHAR(100) NOT NULL,     -- Họ và tên
    Email NVARCHAR(100) NOT NULL,        -- Địa chỉ email
    Admin BIT NOT NULL DEFAULT 0          -- Quyền admin (0 = không phải admin, 1 = là admin)
);
INSERT INTO Accounts (Username, Password, Fullname, Email, Admin) 
VALUES 
('Tanphong', 'password123', N'Vo Huynh Tan Phong', 'Tanphong@gmail.com', 1),
('Minhviet', 'password234', N'Duong minh viet', 'Minhviet@gmail.com', 0),
('Buihau', 'password345', N'Vong bui hau', 'Buihau@gmail.com', 1),
('Chithanh', 'password456', N'Nguyen chi thanh', 'Chithanh@gmail.com', 0);

-- Tạo bảng Orders
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),      -- Khóa chính tự tăng
    UserID NVARCHAR(50) NOT NULL,               -- ID người dùng (liên kết đến bảng Accounts)
    OrderDate NVARCHAR(20) NOT NULL, -- Ngày đặt hàng
    TotalAmount FLOAT NOT NULL,                  -- Tổng giá trị đơn hàng
    OrderStatus NVARCHAR(50) NOT NULL,          -- Trạng thái đơn hàng
    FOREIGN KEY (UserID) REFERENCES Accounts(Username) -- Khóa ngoại liên kết đến bảng Accounts
);
INSERT INTO Orders (UserID, OrderDate, TotalAmount, OrderStatus) 
VALUES 
('Tanphong', 30, 199.99,N'Pending'),
('Minhviet', 20, 299.99,N'Pending'),
('Buihau', 29, 299.99,N'Completed'),
('Chithanh', 3, 349.75,N'Completed');

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY IDENTITY(1,1), -- Khóa chính tự tăng
    OrderID INT NOT NULL,                          -- Khóa ngoại liên kết đến bảng Orders
    Product_id INT NOT NULL,                        -- ID sản phẩm
    Quantity INT NOT NULL,                         -- Số lượng sản phẩm
    Price FLOAT NOT NULL,                          -- Giá của sản phẩm tại thời điểm đặt hàng
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID), -- Khóa ngoại liên kết đến bảng Orders
	FOREIGN KEY (Product_id) REFERENCES Product(id),
);
INSERT INTO OrderDetails (OrderID, Product_id, Quantity, Price) 
VALUES 
(1, 1, 2, 199.99),  
(2, 2, 1, 299.99), 
(3, 3, 3, 299.99),  
(4, 4, 1, 349.75);















select * from  Accounts
SELECT * FROM Detail;
SELECT * FROM Product;
SELECT * FROM  Orders	
drop table Detail
drop table product
drop table Accounts
drop table Orders
