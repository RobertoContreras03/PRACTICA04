CREATE TABLE Books(
BookID INT PRIMARY KEY,
Title NVARCHAR(255) NOT NULL,
Author NVARCHAR(255) NOT NULL, 
PublishedYear INT
);
CREATE TABLE Members(
MemberID INT PRIMARY KEY, 
FullName NVARCHAR(255) NOT NULL,
JoinDate DATE,
Email NVARCHAR(255)
);
CREATE TABLE Loans(
LoanID INT PRIMARY KEY,
BookID INT, 
MemberID INT,
LoanDate DATE,
FOREIGN KEY (BookID) REFERENCES Books(BookID),
FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);