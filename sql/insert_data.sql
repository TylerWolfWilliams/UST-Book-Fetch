SET FOREIGN_KEY_CHECKS=0;
ALTER TABLE Carts AUTO_INCREMENT = 1;
ALTER TABLE Universities AUTO_INCREMENT = 1;
ALTER TABLE student_users AUTO_INCREMENT = 1;
ALTER TABLE books AUTO_INCREMENT = 1;
ALTER TABLE reviews AUTO_INCREMENT = 1;
ALTER TABLE administrators AUTO_INCREMENT = 1;
ALTER TABLE customer_support_users AUTO_INCREMENT = 1;
ALTER TABLE trouble_tickets AUTO_INCREMENT = 1;
ALTER TABLE orders AUTO_INCREMENT = 1;
ALTER TABLE courses AUTO_INCREMENT = 1;

INSERT INTO Carts (
    Created_Date,
    Modified_Date
) VALUES  
(null, null),
(STR_TO_DATE('10/2/2014', '%m/%d/%Y'), STR_TO_DATE('10/3/2014', '%m/%d/%Y')),
(STR_TO_DATE('10/2/2014', '%m/%d/%Y'), STR_TO_DATE('10/3/2014', '%m/%d/%Y')),
(STR_TO_DATE('10/2/2014', '%m/%d/%Y'), STR_TO_DATE('10/3/2014', '%m/%d/%Y')),
(STR_TO_DATE('10/3/2014', '%m/%d/%Y'), STR_TO_DATE('10/4/2014', '%m/%d/%Y')),
(STR_TO_DATE('10/4/2014', '%m/%d/%Y'), STR_TO_DATE('10/5/2014', '%m/%d/%Y')),
(null, null),
(null, null),
(null, null),
(null, null),
(null, null),
(STR_TO_DATE('9/8/2014', '%m/%d/%Y'), STR_TO_DATE('12/15/2014', '%m/%d/%Y')),
(null, null),
(STR_TO_DATE('11/7/2014', '%m/%d/%Y'), STR_TO_DATE('12/16/2014', '%m/%d/%Y')),
(null, null),
(STR_TO_DATE('5/1/2014', '%m/%d/%Y'), STR_TO_DATE('10/14/2014', '%m/%d/%Y')),
(null, null),
(STR_TO_DATE('1/1/2014', '%m/%d/%Y'), STR_TO_DATE('6/17/2014', '%m/%d/%Y')),
(null, null),
(STR_TO_DATE('1/2/2014', '%m/%d/%Y'), STR_TO_DATE('2/7/2014', '%m/%d/%Y')),
(null, null),
(null, null),
(null, null),
(null, null),
(null, null),
(null, null),
(null, null),
(null, null),
(null, null),
(null, null),
(null, null),
(null, null),
(STR_TO_DATE('1/1/2014', '%m/%d/%Y'), STR_TO_DATE('3/5/2014', '%m/%d/%Y')),
(STR_TO_DATE('11/5/2014', '%m/%d/%Y'), STR_TO_DATE('11/5/2014', '%m/%d/%Y')),
(STR_TO_DATE('1/2/2014', '%m/%d/%Y'), STR_TO_DATE('2/1/2014', '%m/%d/%Y')),
(STR_TO_DATE('1/1/2014', '%m/%d/%Y'), STR_TO_DATE('3/5/2014', '%m/%d/%Y')),
(null, null),
(null, null),
(null, null),
(null, null),
(null, null),
(null, null),
(null, null),
(null, null),
(null, null);

INSERT INTO Universities (
    Name,
    Address,
    Rep_First_Name,
    Rep_Last_Name,
    Rep_Email_Address,
    Rep_Phone_Number
) VALUES
('Macalester', null, null, null, null, null),
('UST', null, null, null, null, null),
('UD', null, null, null, null, null),
(null, null, null, null, null, null);


INSERT INTO student_users (
    Password,
    UniversityID,
    CartID,
    First_Name,
    Last_Name,
    Email_Address,
    Address,
    Phone_Number,
    Birth_Date,
    Major,
    Status,
    year
) VALUES
(null, 1, 1, 'James', 'Tremblay', 'JamesTremblay@gmail.com', '1866 Second Drive, Saint Paul', '4155992671', STR_TO_DATE('1/4/1992', '%m/%d/%Y'), 'English', 'UnderGrad', '1'),
(null, 1, 2, 'Christopher', 'Roy', 'ChristopherRoy@gmail.com', '1131 Third Drive, Saint Paul', '4155992672', STR_TO_DATE('4/24/1992', '%m/%d/%Y'), 'English', 'UnderGrad', '3'),
(null, 1, 3, 'Ronald', 'Gagnon', 'RonaldGagnon@gmail.com', '9898 First Drive, Saint Paul', '4155992673', STR_TO_DATE('6/30/1991', '%m/%d/%Y'), 'English', 'UnderGrad', '2'),
(null, 1, 4, 'Mary', 'Côté', 'MaryCôté@gmail.com', '9190 Fourth Drive, Saint Paul', '4155992674', STR_TO_DATE('9/4/1990', '%m/%d/%Y'), 'English', 'UnderGrad', '3'),
(null, 1, 5, 'Lisa', 'Bouchard', 'LisaBouchard@gmail.com', '8926 Park Drive, Saint Paul', '4155992675', STR_TO_DATE('11/9/1989', '%m/%d/%Y'), 'English', 'UnderGrad', '4'),
(null, 1, 6, 'Michelle', 'Gauthier', 'MichelleGauthier@gmail.com', '8186 Fifth Drive, Saint Paul', '4155992676', STR_TO_DATE('1/14/1989', '%m/%d/%Y'), 'English', 'UnderGrad', '2'),
(null, 1, 7, 'John', 'Morin', 'JohnMorin@gmail.com', '7644 Main Drive, Saint Paul', '4155992677', STR_TO_DATE('3/21/1988', '%m/%d/%Y'), 'English', 'UnderGrad', '1'),
(null, 2, 8, 'Daniel', 'Lavoie', 'DanielLavoie@gmail.com', '7283 Sixth Drive, Saint Paul', '4155992678', STR_TO_DATE('5/27/1987', '%m/%d/%Y'), 'English', 'UnderGrad', '4'),
(null, 2, 9, 'Anthony', 'Fortin', 'AnthonyFortin@gmail.com', '6946 Oak Drive, Saint Paul', '4155992679', STR_TO_DATE('8/1/1986', '%m/%d/%Y'), 'Computer Science', 'UnderGrad', '2'),
(null, 2, 10, 'Patricia', 'Gagné', 'PatriciaGagné@gmail.com', '6377 Seventh Drive, Saint Paul', '4155992680', STR_TO_DATE('10/6/1985', '%m/%d/%Y'), 'Computer Science', 'Grad', '3'),
(null, 2, 11, 'Nancy', 'Martínez', 'NancyMartínez@gmail.com', '6170 Pine Drive, Saint Paul', '4155992681', STR_TO_DATE('12/11/1984', '%m/%d/%Y'), 'History', 'Grad', '4'),
(null, 2, 12, 'Laura', 'García', 'LauraGarcía@gmail.com', '6103 Maple Drive, Saint Paul', '4155992682', STR_TO_DATE('2/16/1984', '%m/%d/%Y'), 'History', 'Grad', '2'),
(null, 2, 13, 'Robert', 'Hernandez', 'RobertHernandez@gmail.com', '5644 Cedar Drive, Saint Paul', '4155992683', STR_TO_DATE('4/23/1983', '%m/%d/%Y'), 'History', 'Grad', '3'),
(null, 2, 14, 'Paul', 'González', 'PaulGonzález@gmail.com', '5524 Eighth Drive, Saint Paul', '4155992684', STR_TO_DATE('6/28/1982', '%m/%d/%Y'), 'History', 'Grad', '1'),
(null, 2, 15, 'Kevin', 'López', 'KevinLópez@gmail.com', '5233 Elm Drive, Saint Paul', '4155992685', STR_TO_DATE('9/2/1981', '%m/%d/%Y'), 'Sociology', 'Grad', '2'),
(null, 2, 16, 'Linda', 'Rodríguez', 'LindaRodríguez@gmail.com', '5202 View Drive, Saint Paul', '4155992686', STR_TO_DATE('11/7/1980', '%m/%d/%Y'), 'Sociology', 'Grad', '3'),
(null, 3, 17, 'Karen', 'Pérez', 'KarenPérez@gmail.com', '4974 Washington Drive, Saint Paul', '4155992687', STR_TO_DATE('1/13/1980', '%m/%d/%Y'), 'Sociology', 'Grad', '5'),
(null, 3, 18, 'Sarah', 'Sánchez', 'SarahSánchez@gmail.com', '4908 Ninth Drive, Saint Paul', '4155992688', STR_TO_DATE('3/20/1979', '%m/%d/%Y'), 'Sociology', 'Grad', '2'),
(null, 3, 19, 'Michael', 'Ramírez', 'MichaelRamírez@gmail.com', '4901 Lake Drive, Saint Paul', '4155992689', STR_TO_DATE('5/25/1978', '%m/%d/%Y'), 'Sociology', 'Grad', '4'),
(null, 3, 20, 'Mark', 'Flores', 'MarkFlores@gmail.com', '4877 Hill Drive, Saint Paul', '4155992690', STR_TO_DATE('7/30/1977', '%m/%d/%Y'), 'History', 'Grad', '2'),
(null, 3, 21, 'Mark', 'Flores', 'MarkFlores@gmail.com', '4877 Hill Drive, Saint Paul', '4155992691', STR_TO_DATE('7/30/1977', '%m/%d/%Y'), 'History', 'Grad', '2'),
(null, 3, 22, 'Mark', 'Flores', 'MarkFlores@gmail.com', '4877 Hill Drive, Saint Paul', '4155992692', STR_TO_DATE('7/30/1977', '%m/%d/%Y'), 'History', 'Grad', '2'),
(null, 3, 23, 'Michael', 'Ramírez', 'MichaelRamírez@gmail.com', '4901 Lake Drive, Saint Paul', '4155992693', STR_TO_DATE('5/25/1978', '%m/%d/%Y'), 'Sociology', 'Grad', '4'),
(null, 3, 24, 'Michael', 'Ramírez', 'MichaelRamírez@gmail.com', '4901 Lake Drive, Saint Paul', '4155992694', STR_TO_DATE('5/25/1978', '%m/%d/%Y'), 'Sociology', 'Grad', '4'),
(null, 3, 25, 'Michael', 'Ramírez', 'MichaelRamírez@gmail.com', '4901 Lake Drive, Saint Paul', '4155992695', STR_TO_DATE('5/25/1978', '%m/%d/%Y'), 'Sociology', 'Grad', '4'),
(null, 2, 26, 'Paul', 'González', 'PaulGonzález@gmail.com', '5524 Eighth Drive, Saint Paul', '4155992696', STR_TO_DATE('6/28/1982', '%m/%d/%Y'), 'History', 'Grad', '1'),
(null, 2, 27, 'Paul', 'González', 'PaulGonzález@gmail.com', '5524 Eighth Drive, Saint Paul', '4155992697', STR_TO_DATE('6/28/1982', '%m/%d/%Y'), 'History', 'Grad', '1'),
(null, 2, 28, 'Paul', 'González', 'PaulGonzález@gmail.com', '5524 Eighth Drive, Saint Paul', '4155992698', STR_TO_DATE('6/28/1982', '%m/%d/%Y'), 'History', 'Grad', '1'),
(null, 2, 29, 'Paul', 'González', 'PaulGonzález@gmail.com', '5524 Eighth Drive, Saint Paul', '4155992699', STR_TO_DATE('6/28/1982', '%m/%d/%Y'), 'History', 'Grad', '1'),
(null, 2, 30, 'Nancy', 'Martínez', 'NancyMartínez@gmail.com', '6170 Pine Drive, Saint Paul', '4155992779', STR_TO_DATE('12/11/1984', '%m/%d/%Y'), 'History', 'Grad', '4'),
(null, 2, 31, 'Nancy', 'Martínez', 'NancyMartínez@gmail.com', '6170 Pine Drive, Saint Paul', '4155992780', STR_TO_DATE('12/11/1984', '%m/%d/%Y'), 'History', 'Grad', '4'),
(null, 2, 32, 'Kevin', 'López', 'KevinLópez@gmail.com', '5233 Elm Drive, Saint Paul', '4155992703', STR_TO_DATE('9/2/1981', '%m/%d/%Y'), 'Sociology', 'Grad', '2'),
(null, 2, 33, 'Leslie', 'García', 'LeslieGarcía@gmail.com', '6103 Dancer Drive, Saint Paul', '4155992705', STR_TO_DATE('2/16/1984', '%m/%d/%Y'), 'History', 'Grad', '2'),
(null, 2, 34, 'Patricia', 'Gagné', 'PatriciaGagné@gmail.com', '6377 Seventh Drive, Saint Paul', '4155992773', STR_TO_DATE('10/6/1985', '%m/%d/%Y'), 'Computer Science', 'Grad', '3'),
(null, 3, 35, 'Karen', 'Pérez', 'KarenPérez@gmail.com', '4974 Washington Drive, Saint Paul', '4155992774', STR_TO_DATE('1/13/1980', '%m/%d/%Y'), 'Sociology', 'Grad', '5'),
(null, 2, 36, 'Lewis', 'Rodríguez', 'LewisRodríguez@gmail.com', '5202 View Drive, Saint Paul', '4155992775', STR_TO_DATE('11/7/1980', '%m/%d/%Y'), 'Sociology', 'Grad', '3'),
(null, 2, 37, 'Robert', 'Hernandez', 'RobertHernandez@gmail.com', '5644 Cedar Drive, Saint Paul', '4155992776', STR_TO_DATE('4/23/1983', '%m/%d/%Y'), 'History', 'Grad', '3'),
(null, 2, 38, 'Robert', 'Hernandez', 'RobertHernandez@gmail.com', '5644 Cedar Drive, Saint Paul', '4155992777', STR_TO_DATE('4/23/1983', '%m/%d/%Y'), 'History', 'Grad', '3'),
(null, 2, 39, 'Robert', 'Hernandez', 'RobertHernandez@gmail.com', '5644 Cedar Drive, Saint Paul', '4155992778', STR_TO_DATE('4/23/1983', '%m/%d/%Y'), 'History', 'Grad', '3'),
(null, 2, 40, 'Robert', 'Hernandez', 'RobertHernandez@gmail.com', '5644 Cedar Drive, Saint Paul', '4155992780', STR_TO_DATE('4/23/1983', '%m/%d/%Y'), 'History', 'Grad', '3'),
(null, 2, 41, 'Nancy', 'Martínez', 'NancyMartínez@gmail.com', '6170 Pine Drive, Saint Paul', '4155992702', STR_TO_DATE('12/11/1984', '%m/%d/%Y'), 'History', 'Grad', '4'),
(null, 1, 42, 'John', 'Morin', 'JohnMorin@gmail.com', '7644 Main Drive, Saint Paul', '4155992677', STR_TO_DATE('3/21/1988', '%m/%d/%Y'), 'English', 'UnderGrad', '1'),
(null, 4, 43, null, null, null, null, null, null, null, null, null),
(null, 4, 44, null, null, null, null, null, null, null, null, null),
(null, 4, 45, null, null, null, null, null, null, null, null, null);

INSERT INTO Books (
    Title,
    type,
    Price,
    Author,
    Publisher,
    Publish_Date,
    language
) VALUES
('English Made Easy Volume One: Learning English through Pictures', null, null, null, null, null, null),
('Fearless Editing: Crafting Words and Images for Print, Web, and Public Relations', null, null, null, null, null, null),
('McGraw-Hill Handbook of English Grammar and Usage', null, null, null, null, null, null),
('The Development of Western Music: A History', null, null, null, null, null, null),
('linear algebra', null, null, null, null, null, null),
('Applied Econometrics', null, null, null, null, null, null),
('Christianity 101: A Textbook of Catholic Theology', null, null, null, null, null, null),
('Pearson Textbook Reader: Reading in Applied and Academic Fields', null, null, null, null, null, null),
("Understanding Intercultural Communication", null, null, null, null, null, null),
("Guyton and Hall Textbook of Medical Physiology", null, null, null, null, null, null),
("Modern Operating Systems", null, null, null, null, null, null),
("Psychology", null, null, null, null, null, null);

INSERT INTO Reviews (
    StudentID,
    ISBN,
    Rating,
    Review_Description
) values 
(8, 4, 4, null),
(9, 1, 5, null),
(10, 2, 4.5, null),
(11, 4, 3, null);

INSERT INTO administrators (
    Password,
    First_Name,
    Last_Name,
    Gender,
    Salary,
    SSN,
    Email_Address,
    Address,
    Phone_Number
) VALUES
(null, 'Stephanie', null, null, null, null, null, null, null),
(null, 'Peter', null, null, null, null, null, null, null),
(null, 'Anthony', null, null, null, null, null, null, null);

INSERT INTO customer_support_users (
    Password,
    First_Name,
    Last_Name,
    Gender,
    Salary,
    SSN,
    Email_Address,
    Address,
    Phone_Number
) VALUES
(null, 'Joan', null, null, null, null, null, null, null),
(null, 'Patricia', null, null, null, null, null, null, null),
(null, 'Julian', null, null, null, null, null, null, null),
(null, 'Dan', null, null, null, null, null, null, null),
(null, 'Kevin', null, null, null, null, null, null, null);

INSERT INTO trouble_tickets (
    Ticket,
    Category,
    Date_Logged,
    StudentID,
    AEmployeeID,
    CSEmployeeID,
    Title,
    Date_Completed,
    Problem_Description,
    Solution_Description,
    Status
) values
('T121', 'userprofile', STR_TO_DATE('10/24/2014', '%m/%d/%Y'), 7, null, 1, 'forgotten password', STR_TO_DATE('10/25/2014', '%m/%d/%Y'), 'password needs to be reset after verification', null, 'new'),
('T120', 'products', STR_TO_DATE('8/31/2014', '%m/%d/%Y'), 15, null, 1, 'pages missing from the book', STR_TO_DATE('10/25/2014', '%m/%d/%Y'), 'chapter 5 of the book i ordered is missing', null, 'new'),
('T101', 'userprofile', STR_TO_DATE('7/15/2014', '%m/%d/%Y'), 21, null, 2, 'unable to log in', STR_TO_DATE('10/25/2014', '%m/%d/%Y'), 'password reset needed', null, 'new'),
('T102', 'products', STR_TO_DATE('8/23/2014', '%m/%d/%Y'), 23, null, 3, 'bad / damaged product recieved', STR_TO_DATE('10/25/2014', '%m/%d/%Y'), null, null, 'new'),
('T114', 'userprofile', STR_TO_DATE('9/5/2014', '%m/%d/%Y'), 24, null, 3, 'unable to edit details on profile', STR_TO_DATE('10/25/2014', '%m/%d/%Y'), null, null, 'new'),
('T104', 'orders', STR_TO_DATE('10/5/2014', '%m/%d/%Y'), 29, null, 3, 'order not recieved', STR_TO_DATE('10/25/2014', '%m/%d/%Y'), 'i have still not recieved my order. it has been 10 days', null, 'new'),
('T103', 'cart', STR_TO_DATE('2/4/2014', '%m/%d/%Y'), 30, null, 3, 'cart not updating', STR_TO_DATE('10/25/2014', '%m/%d/%Y'), 'cant delete stuff from the cart', null, 'new'),
('T103', 'cart', STR_TO_DATE('2/5/2014', '%m/%d/%Y'), 31, 1, 3, 'cart not updating', STR_TO_DATE('10/25/2014', '%m/%d/%Y'), 'cant delete stuff from the cart', null, 'assigned'),
('T106', 'userprofile', STR_TO_DATE('8/5/2014', '%m/%d/%Y'), 37, null, 3, 'password lost', STR_TO_DATE('10/25/2014', '%m/%d/%Y'), null, null, 'new'),
('T106', 'userprofile', STR_TO_DATE('8/6/2014', '%m/%d/%Y'), 38, 1, 3, 'password lost', STR_TO_DATE('10/25/2014', '%m/%d/%Y'), null, null, 'assigned'),
('T106', 'userprofile', STR_TO_DATE('8/7/2014', '%m/%d/%Y'), 39, 1, 3, 'password lost', STR_TO_DATE('10/25/2014', '%m/%d/%Y'), null, null, 'in-process'),
('T106', 'userprofile', STR_TO_DATE('8/9/2014', '%m/%d/%Y'), 40, 1, 3, 'password lost', STR_TO_DATE('10/25/2014', '%m/%d/%Y'), 'pasword was reset', 'new password issued', 'completed'),
('T103', 'cart', STR_TO_DATE('2/6/2014', '%m/%d/%Y'), 41, 1, 3, 'cart not updating', STR_TO_DATE('10/25/2014', '%m/%d/%Y'), 'cant delete stuff from the cart', null, 'in-process'),
('T121', 'userprofile', STR_TO_DATE('10/25/2014', '%m/%d/%Y'), 42, 2, 1, 'forgotten password', STR_TO_DATE('10/25/2014', '%m/%d/%Y'), 'password needs to be reset after verification', null, 'assigned'),
('T100', 'orders', STR_TO_DATE('10/24/2014', '%m/%d/%Y'), 43, null, 4, 'bug in orders', STR_TO_DATE('10/25/2014', '%m/%d/%Y'), '1 order got cancelled automatically', null, 'new'),
('T100', 'orders', STR_TO_DATE('10/24/2014', '%m/%d/%Y'), 44, 3, 4, 'bug in orders', STR_TO_DATE('10/25/2014', '%m/%d/%Y'), '1 order got cancelled automatically', null, 'assigned'),
('T130', 'cart', STR_TO_DATE('12/1/2014', '%m/%d/%Y'), 45, null, 5, 'proposed maintance work', STR_TO_DATE('10/25/2014', '%m/%d/%Y'), 'yearly update scheduled', null, 'new');

INSERT INTO Orders (
    StudentID,
    CartID,
    Created_Date,
    Fulfilled_Date,
    Card_Number,
    Card_Exp_Date,
    Card_Name,
    Card_Type,
    Status,
    Ship_Type
) values
(1, 1, STR_TO_DATE('9/7/2014', '%m/%d/%Y'), STR_TO_DATE('9/11/2014', '%m/%d/%Y'), '4.49E+15', STR_TO_DATE('3/2/2016', '%m/%d/%Y'), 'card', 'VISA', 'shipped', '1-day'),
(2, 2, null, null, null, null, null, null, null, null),
(3, 3, null, null, null, null, null, null, null, null),
(4, 4, null, null, null, null, null, null, null, null),
(5, 5, null, null, null, null, null, null, null, null),
(6, 6, null, null, null, null, null, null, null, null),
(7, 7, null, null, null, null, null, null, null, null),
(8, 8, null, null, null, null, null, null, null, null),
(9, 9, null, null, null, null, null, null, null, null),
(10, 10, null, null, null, null, null, null, null, null),
(11, 11, null, null, null, null, null, null, null, null),
(12, 12, null, null, null, null, null, null, null, null),
(13, 13, null, null, null, null, null, null, null, null),
(14, 14, null, null, null, null, null, null, null, null),
(15, 15, null, null, null, null, null, null, null, null),
(16, 16, null, null, null, null, null, null, null, null),
(17, 17, STR_TO_DATE('11/4/2014', '%m/%d/%Y'), STR_TO_DATE('11/12/2014', '%m/%d/%Y'), '4.49E+15', STR_TO_DATE('3/1/2016', '%m/%d/%Y'), 'card', 'VISA', 'shipped', 'standard'),
(18, 18, null, null, null, null, null, null, null, null),
(19, 19, STR_TO_DATE('10/6/2014', '%m/%d/%Y'), null, '4.56E+15', STR_TO_DATE('5/1/2015', '%m/%d/%Y'), 'plastic', 'VISA', 'shipping', '2-day'),
(20, 20, null, null, null, null, null, null, null, null),
(21, 21, null, null, null, null, null, null, null, null),
(22, 22, STR_TO_DATE('7/4/2014', '%m/%d/%Y'), null, '4.93E+15', STR_TO_DATE('9/1/2020', '%m/%d/%Y'), 'creditc', 'MASTERCARD', 'cancelled', 'standard'),
(23, 23, null, null, null, null, null, null, null, null),
(24, 24, null, null, null, null, null, null, null, null),
(25, 25, STR_TO_DATE('10/13/2014', '%m/%d/%Y'), null, '4.88E+15', STR_TO_DATE('4/1/2019', '%m/%d/%Y'), 'mycard', 'VISA', 'new', '1-day'),
(26, 26, STR_TO_DATE('10/6/2014', '%m/%d/%Y'), STR_TO_DATE('10/7/2014', '%m/%d/%Y'), '4.49E+15', STR_TO_DATE('3/1/2016', '%m/%d/%Y'), 'card', 'VISA', 'shipped', 'standard'),
(27, 27, STR_TO_DATE('9/23/2014', '%m/%d/%Y'), STR_TO_DATE('9/24/2014', '%m/%d/%Y'), '4.49E+15', STR_TO_DATE('3/2/2016', '%m/%d/%Y'), 'card', 'VISA', 'shipped', '1-day'),
(28, 28, STR_TO_DATE('10/25/2014', '%m/%d/%Y'), STR_TO_DATE('10/26/2014', '%m/%d/%Y'), '4.49E+15', STR_TO_DATE('3/3/2016', '%m/%d/%Y'), 'card', 'VISA', 'shipped', '1-day'),
(29, 29, null, null, null, null, null, null, null, null),
(30, 30, null, null, null, null, null, null, null, null),
(31, 31, null, null, null, null, null, null, null, null),
(32, 32, null, null, null, null, null, null, null, null),
(33, 33, null, null, null, null, null, null, null, null),
(34, 34, null, null, null, null, null, null, null, null),
(35, 35, null, null, null, null, null, null, null, null),
(36, 36, null, null, null, null, null, null, null, null),
(37, 37, null, null, null, null, null, null, null, null),
(38, 38, null, null, null, null, null, null, null, null),
(39, 39, null, null, null, null, null, null, null, null),
(40, 40, null, null, null, null, null, null, null, null),
(41, 41, null, null, null, null, null, null, null, null),
(42, 42, null, null, null, null, null, null, null, null),
(43, 43, null, null, null, null, null, null, null, null),
(44, 44, null, null, null, null, null, null, null, null),
(45, 45, null, null, null, null, null, null, null, null);

INSERT INTO CartBooks (
    ISBN,
    CartID
) values
(1, 2),
(2, 2),
(3, 3),
(2, 3),
(1, 4),
(1, 5),
(1, 6),
(3, 12),
(4, 12),
(3, 14),
(4, 14),
(5, 16),
(6, 16),
(6, 18),
(7, 20),
(8, 20),
(5, 33),
(6, 33),
(5, 34),
(2, 34),
(7, 35),
(8, 35),
(5, 36);

INSERT INTO OrderBooks (
    ISBN,
    OrderID,
    Type,
    Quantity
) values
(9, 1, "rent", 1),
(9, 17, "purchase", 2),
(10, 19, "purchase", 1),
(11, 19, "purchase", 1),
(8, 22, "rent", 1),
(11, 25, "purchase", 1),
(12, 26, "purchase", 1),
(8, 27, "rent", 1),
(5, 28, "rent", 1),
(1, 10, "purchase", 4),
(2, 10, "purchase", 3),
(3, 10, "purchase", 4);

INSERT INTO Courses (
	UniversityID,
    DepartmentID,
    name,
    year,
    Semester
) values
(2, 1, "CISC 450", 2023, 2),
(2, 2, "STAT 450", 2023, 2),
(2, 3, "ENGL 450", 2023, 1),
(2, 4, "DIMA 450", 2023, 1),
(1, 5, "CISC 450", 2023, 1),
(3, 6, "STAT 450", 2023, 2);

INSERT INTO CourseReadings (
	CourseID,
    ISBN
) values
(1, 2),
(2, 3),
(2, 4),
(3, 4),
(4, 5),
(5, 7),
(5, 8),
(6, 11);

INSERT INTO Categories(
	name
) values
("Computer Science"),
("English"),
("Statistics"),
("Digital Media");

INSERT INTO BookCategories(
	ISBN,
    CategoryID
) values
(1, 2),
(2, 2),
(3, 2),
(4, 4),
(5, 3),
(6, 1),
(7, 2),
(8, 3),
(11, 1),
(12, 1),
(12, 2);

INSERT INTO Departments(
	DepartmentID,
    UniversityID,
    name,
    ChairID
) values
(1, 2, "CS", 1),
(2, 2, "EN", 2),
(3, 2, "ST", 3),
(4, 2, "DI", 4),
(5, 1, "CS", 5),
(6, 3, "ST", 6);

    
INSERT INTO Instructors(
	InstructorID,
    DepartmentID,
    UniversityID,
    First_Name,
    Last_Name
) values
(1, 1, 2, "Sawin", null),
(2, 2, 2, "James", null),
(3, 3, 2, "John", null),
(4, 4, 2, "Sue", null),
(5, 5, 1, "Louise", null),
(6, 6, 3, "Pumpernickle", null);

INSERT INTO InstructorCourses(
	CourseID,
    InstructorID
) values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

INSERT INTO recommendations(
	StudentID,
    ISBN
) values
(1, 1),
(2, 2),
(4, 11);

SET FOREIGN_KEY_CHECKS=1;