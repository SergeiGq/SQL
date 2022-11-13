
CREATE TABLE Product
(
    Id int NOT NULL PRIMARY KEY,
    ProductName nvarchar(100)
)

CREATE TABLE Category
(
    Id int NOT NULL PRIMARY KEY,
    CategoryName nvarchar(100)
)

CREATE TABLE ProductCategory
(
    ProductId int NOT NULL FOREIGN KEY REFERENCES Product(Id),
    CategoryId int NOT NULL FOREIGN KEY REFERENCES Category(Id),
    PRIMARY KEY (ProductId, CategoryId)
)
SELECT * FROM ProductCategory pc
                  left join Category c on pc.CategoryId=c.Id
                  left join Product p on pc.ProductId= p.Id