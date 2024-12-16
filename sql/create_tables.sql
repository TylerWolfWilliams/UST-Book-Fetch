CREATE DATABASE IF NOT EXISTS books_database;
USE books_database;

create table if not exists
  Carts (
    CartID INT AUTO_INCREMENT,
    Created_Date DATE,
    Modified_Date DATE,
    primary key (CartID)
  );

create table if not exists
  Universities (
    UniversityID INT AUTO_INCREMENT,
    Name varchar(255),
    Address varchar(255),
    Rep_First_Name varchar(255),
    Rep_Last_Name varchar(255),
    Rep_Email_Address varchar(255),
    Rep_Phone_Number varchar(10),
    primary key (UniversityID)
  );

create table if not exists
  Student_users (
    StudentID INT AUTO_INCREMENT,
    Password varchar(255),
    UniversityID int,
    CartID int,
    First_Name varchar(255),
    Last_Name varchar(255),
    Email_Address varchar(255),
    Address varchar(255),
    Phone_Number varchar(10),
    Birth_Date DATE,
    Major varchar(255),
    Status varchar(9) check (Status in ('UnderGrad', 'Grad')),
    year smallint,
    primary key (StudentID),
    foreign key (UniversityID) references Universities (UniversityID),
    foreign key (CartID) references Carts (CartID)
);

create table if not exists
  Books (
    ISBN INT AUTO_INCREMENT,
    Title varchar(255),
    type varchar(255),
    Price decimal(7, 2),
    Author varchar(255),
    Publisher varchar(255),
    Publish_Date Date,
    language varchar(255),
    primary key (ISBN)
);

create table if not exists
  CartBooks (
	ISBN int,
    CartID int,
    foreign key (ISBN) references books (ISBN),
    foreign key (CartID) references Carts (CartID)
  );

create table if not exists
  Reviews (
    ReviewID INT AUTO_INCREMENT,
    StudentID int,
    ISBN int,
    Rating int,
    Review_Description varchar(255),
    primary key (ReviewID),
    foreign key (StudentID) references student_users (StudentID),
    foreign key (ISBN) references Books (ISBN)
);

create table if not exists
  Recommendations (
    StudentID int,
    ISBN int,
    foreign key (StudentID) references Student_users (StudentID),
    foreign key (ISBN) references Books (ISBN)
);

create table if not exists
  Administrators (
    AEmployeeID INT AUTO_INCREMENT,
    Password varchar(255),
    First_Name varchar(255),
    Last_Name varchar(255),
    Gender varchar(6) check (Gender in ('Male', 'Female', 'Other')),
    Salary int,
    SSN varchar(9),
    Email_Address varchar(255) unique,
    Address varchar(255),
    Phone_Number varchar(10),
    primary key (AEmployeeID)
  );

create table if not exists
  Customer_support_users (
    CSEmployeeID INT AUTO_INCREMENT,
    Password varchar(255),
    First_Name varchar(255),
    Last_Name varchar(255),
    Gender varchar(6) check (Gender in ('Male', 'Female', 'Other')),
    Salary int,
    SSN varchar(9),
    Email_Address varchar(255) unique,
    Address varchar(255),
    Phone_Number varchar(10),
    primary key (CSEmployeeID)
  );


create table if not exists
  Trouble_Tickets (
    TicketID INT AUTO_INCREMENT,
    Ticket varchar(255),
    Category varchar(255) check (Category in ('userprofile', 'products', 'orders', 'cart')),
    Date_Logged Date,
    StudentID int,
    AEmployeeID int,
    CSEmployeeID int,
    Title varchar(255),
    Date_Completed DATE,
    Problem_Description varchar(255),
    Solution_Description varchar(255),
    Status varchar(20) check (Status in ('new', 'assigned', 'in-process', 'completed')),
    primary key (TicketID),
    foreign key (StudentID) references Student_users (StudentID),
    foreign key (AEmployeeID) references Administrators (AEmployeeID),
    foreign key (CSEmployeeID) references Customer_support_users (CSEmployeeID)
  );

create table if not exists
  Departments (
    DepartmentID int,
    UniversityID int,
    name varchar(255),
    ChairID int,
    primary key (DepartmentID),
    foreign key (UniversityID) references Universities (UniversityID)
);

create table if not exists
  Instructors (
    InstructorID int,
    DepartmentID int,
    UniversityID int,
    First_Name varchar(255),
    Last_Name varchar(255),
    primary key (InstructorID),
    foreign key (DepartmentID) references Departments (DepartmentID),
    foreign key (UniversityID) references Universities (UniversityID)
);

alter table Departments
add foreign key (ChairID) references Instructors (InstructorID);

create table if not exists
  Courses (
    CourseID INT AUTO_INCREMENT,
    UniversityID int,
    DepartmentID int,
    name varchar(255),
    year int,
    Semester int,
    primary key (CourseID),
    foreign key (UniversityID) references Universities (UniversityID),
    foreign key (DepartmentID) references Departments (DepartmentID)
  );
  
create table if not exists
  CourseReadings (
	CourseID INT,
    ISBN INT,
    foreign key (CourseID) references Courses (CourseID),
    foreign key (ISBN) references Books (ISBN)
);

create table if not exists
  InstructorCourses (
	CourseID INT,
    InstructorID INT,
    foreign key (CourseID) references Courses (CourseID),
    foreign key (InstructorID) references Instructors (InstructorID)
);

create table if not exists
  Orders (
    OrderID INT AUTO_INCREMENT,
    StudentID int,
    CartID int,
    Created_Date Date,
    Fulfilled_Date Date,
    Card_Number varchar(16),
    Card_Exp_Date DATE,
    Card_Name varchar(255),
    Card_Type varchar(255),
    Status varchar(20) check (Status in ('shipped', 'shipping', 'cancelled', 'new')),
    Ship_Type varchar(20) check (Ship_type in ('1-day', 'standard', '2-day')),
    primary key (OrderID),
    foreign key (StudentID) references Student_users (StudentID),
    foreign key (CartID) references Carts (CartID)
  );
  
  create table if not exists
  OrderBooks (
	ISBN int,
    OrderID int,
    Type varchar(8) check (Type in ('rent', 'purchase')),
    Quantity int,
    foreign key (ISBN) references books (ISBN),
    foreign key (OrderID) references Orders (OrderID)
  );

create table if not exists
  Super_administrators (
    SAEmployeeID int,
    Password varchar(255),
    First_Name varchar(255),
    Last_Name varchar(255),
    Gender varchar(6) check (Gender in ('Male', 'Female', 'Other')),
    Salary int,
    SSN varchar(9),
    Email_Address varchar(255) unique,
    Address varchar(255),
    Phone_Number varchar(10),
    primary key (SAEmployeeID)
  );

create table if not exists
  Categories (
    CategoryID INT AUTO_INCREMENT,
    Name varchar(255),
    primary key (CategoryID)
  );

create table if not exists
  Subcategories (
    SubcategoryID INT AUTO_INCREMENT,
    Name varchar(255),
    primary key (SubcategoryID)
  );

create table if not exists
  BookCategories (
    ISBN int,
    CategoryID int,
    foreign key (ISBN) references books (ISBN),
    foreign key (CategoryID) references categories (CategoryID)
  );

create table if not exists
  BookSubcategories (
    ISBN int,
    SubcategoryID int,
    foreign key (ISBN) references books (ISBN),
    foreign key (SubcategoryID) references subcategories (SubcategoryID)
  );
  





    
    
    


