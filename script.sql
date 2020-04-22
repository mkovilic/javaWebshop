USE `epiz_25600174_kovashop`;
 
DELIMITER //

CREATE PROCEDURE CHECK_CUSTOMER (
p_email nvarchar(50))
begin
select count(*) from Customer
where  Email =p_email;

END;
//

DELIMITER ;


/****** Object:  StoredProcedure [dbo].[GET_ALL_BILLS]    Script Date: 4/17/2020 10:21:18 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

/***************************************************/
/**********************B I L L**********************/
/***************************************************/
DELIMITER //

CREATE PROCEDURE GET_ALL_BILLS()
begin
select*from Bill;

END;
//

DELIMITER ;


/****** Object:  StoredProcedure [dbo].[GET_ALL_CATEGORY]    Script Date: 4/17/2020 10:21:18 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 


/***************************************************/
/*****************C A T E G O R Y*******************/
/***************************************************/
DELIMITER //

CREATE PROCEDURE GET_ALL_CATEGORY()
begin
select*from Category;

END;
//

DELIMITER ;


/****** Object:  StoredProcedure [dbo].[GET_ALL_CUSTOMERS]    Script Date: 4/17/2020 10:21:18 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 


DELIMITER //

CREATE PROCEDURE GET_ALL_CUSTOMERS()
begin
select IDCustomer,FirstName,LastName,Adress,Email,CustomerPassword from Customer;

END;
//

DELIMITER ;


/****** Object:  StoredProcedure [dbo].[GET_ALL_LOGINFO]    Script Date: 4/17/2020 10:21:18 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 


/***************************************************/
/*****************L O G   I N F O*******************/
/***************************************************/
DELIMITER //

CREATE PROCEDURE GET_ALL_LOGINFO()
begin
select*from LogInfo;

END;
//

DELIMITER ;


/****** Object:  StoredProcedure [dbo].[GET_ALL_PAYMENT_METHODS]    Script Date: 4/17/2020 10:21:18 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

/***************************************************/
/******************P A Y M E N T********************/
/*******************M E T H O D*********************/
/***************************************************/
DELIMITER //

CREATE PROCEDURE GET_ALL_PAYMENT_METHODS()
begin
select*from PaymentMethod;

END;
//

DELIMITER ;


/****** Object:  StoredProcedure [dbo].[GET_ALL_PRODUCTS]    Script Date: 4/17/2020 10:21:18 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

/***************************************************/
/******************P R O D U C T********************/
/***************************************************/
DELIMITER //

CREATE PROCEDURE GET_ALL_PRODUCTS()
begin
select*from Product;

END;
//

DELIMITER ;


/****** Object:  StoredProcedure [dbo].[GET_BILL]    Script Date: 4/17/2020 10:21:18 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

DELIMITER //

CREATE PROCEDURE GET_BILL (
p_id int)
begin
select*from Bill
where IDBill=p_id;

END;
//

DELIMITER ;


/****** Object:  StoredProcedure [dbo].[GET_BILLS_FOR_CUSTOMER]    Script Date: 4/17/2020 10:21:18 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

DELIMITER //

CREATE PROCEDURE GET_BILLS_FOR_CUSTOMER (
p_id int)
begin
select*from Bill
where CustomerID=p_id;

END;
//

DELIMITER ;


/****** Object:  StoredProcedure [dbo].[GET_CUSTOMER]    Script Date: 4/17/2020 10:21:18 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

DELIMITER //

CREATE PROCEDURE GET_CUSTOMER (
p_id int)
begin
select*from Customer
where IDCustomer=p_id;

END;
//

DELIMITER ;


/****** Object:  StoredProcedure [dbo].[GET_ITEMS_FOR_BILL]    Script Date: 4/17/2020 10:21:18 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

/***************************************************/
/**********************I T E M**********************/
/***************************************************/
DELIMITER //

CREATE PROCEDURE GET_ITEMS_FOR_BILL (
p_billID int)
begin
select*from Item
where BillID=p_billID;

END;
//

DELIMITER ;


/****** Object:  StoredProcedure [dbo].[GET_PRODUCT]    Script Date: 4/17/2020 10:21:18 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

/*
CREATE PROC INSERT_PRODUCT
@Title nvarchar(30),
@Brand nvarchar(40),
@About nvarchar(300),
@Price float,
@Img nvarchar(200),
@CatgoryID int
as
Insert into Product(Title,Brand,About,Price,Img,CatgoryID)
Value(@Title,@Brand,@About,@Price,@Img,@CatgoryID)
go
*/

DELIMITER //

CREATE PROCEDURE GET_PRODUCT (
p_id int)
begin
select IDProduct, Title, Brand, About, Price, Img, CatgoryID from Product
where IDProduct=p_id;

END;
//

DELIMITER ;


/****** Object:  StoredProcedure [dbo].[INSERT_BILL]    Script Date: 4/17/2020 10:21:18 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

DELIMITER //

CREATE PROCEDURE INSERT_BILL (
p_BillDate date,
p_CustomerID int,
p_PaymentMethodID int,
p_id out int )
begin
Insert into Bill(BillDate,CustomerID,PaymentMethodID)
Values(p_BillDate,p_CustomerID,p_PaymentMethodID);
set p_id=LAST_INSERT_ID();

END;
//

DELIMITER ;


/****** Object:  StoredProcedure [dbo].[INSERT_CUSTOMER]    Script Date: 4/17/2020 10:21:18 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

/*******   P R O C E D U R E S   ********/
/*
CUSTOMER
	INSERT_CUSTOMER
	GET_ALL_CUSTOMERS
	GET_CUSTOMER
CATEGORY
	GET_ALL_CATEGORY
PRODUCT
	GET_ALL_PRODUCTS
	GET_PRODUCT
PAYMENT METHOD
	GET_ALL_PAYMENT_METHODS
BILL
	GET_ALL_BILLS
	INSERT_BILL
	GET_BILL
	GET_BILLS_FOR_CUSTOMER
ITEM
	GET_ITEMS_FOR_BILL
	INSERT_ITEM
LOG INFO
	GET_ALL_LOGINFO
	INSERT_LOGINFO
*/

/***************************************************/
/*****************C U S T O M E R*******************/
/***************************************************/

DELIMITER //

CREATE PROCEDURE INSERT_CUSTOMER (
p_FirstName nvarchar(30),
p_LastName nvarchar(30),
p_Adress nvarchar(100),
p_Email nvarchar(30),
p_CustomerPassword nvarchar(30))
begin
Insert into Customer(FirstName,LastName,Adress,Email,CustomerPassword)
Values(p_FirstName,p_LastName,p_Adress,p_Email,p_CustomerPassword);

END;
//

DELIMITER ;


/****** Object:  StoredProcedure [dbo].[INSERT_ITEM]    Script Date: 4/17/2020 10:21:18 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

DELIMITER //

CREATE PROCEDURE INSERT_ITEM (
p_ProductID int,
p_BillID int,
p_Quantity int)
begin
Insert into Item(ProductID,BillID,Quantity)
Values(p_ProductID,p_BillID,p_Quantity);

END;
//

DELIMITER ;


/****** Object:  StoredProcedure [dbo].[INSERT_LOGINFO]    Script Date: 4/17/2020 10:21:18 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

DELIMITER //

CREATE PROCEDURE INSERT_LOGINFO (
p_CustomerID int,
p_LogDate nvarchar(50),
p_IPAdress nvarchar(300))
begin
Insert into LogInfo(CustomerID,LogDate,IPAdress)
Values(p_CustomerID,p_LogDate,p_IPAdress);

END;
//

DELIMITER ;


USE `master`;
 
ALTER DATABASE `WebShop` SET  READ_WRITE 
GO
