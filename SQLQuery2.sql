-- SELECT
-- ANSII (Ayný kullaným)
select * from Customers
select ContactName Adi,CompanyName SirketAdi,City Sehir from Customers
select * from Customers where City = 'Berlin'
--case insensitive (Büyük küçük harf duyarlý)
select * from Products
select * from Products where CategoryID = 1
select * from Products where CategoryID = 1 or CategoryID = 3
select * from Products where CategoryID = 1 or UnitPrice > 10
select * from Products where CategoryID = 1 and UnitPrice >= 10
select * from Products order by ProductName
select * from Products order by UnitPrice 
select * from Products order by UnitPrice asc --ascending
select * from Products order by UnitPrice desc --descending
select * from Products where CategoryID = 1 order by UnitPrice desc
select COUNT(*) from Products -- kaç data var ? 
select COUNT(*) from Products where CategoryID = 2
select COUNT(*) Adet from Products where CategoryID = 2
select CategoryID from Products group by CategoryID
select CategoryID,COUNT(*) from Products group by CategoryID --Kategoriye göre kaç ürün var ?
select CategoryID,COUNT(*) from Products group by CategoryID having COUNT(*)<10 --Kategoriye Göre 10'dan az ürünleri göster.
select CategoryID,COUNT(*) from Products where UnitPrice>20 group by CategoryID having COUNT(*)<10 -- Birim fiyatý 20'den fazla olan ürünleri kategoriye göre grupla 
--INNER JOIN
select * from Products inner join Categories on Products.CategoryID = Categories.CategoryID
select Products.ProductID,Products.ProductName,Products.UnitPrice,Categories.CategoryName from Products inner join Categories on Products.CategoryID = Categories.CategoryID
select Products.ProductID,Products.ProductName,Products.UnitPrice,Categories.CategoryName from Products inner join Categories on Products.CategoryID = Categories.CategoryID where Products.UnitPrice>=10
--DTO - DATA TRANSFORMATION OBJECT
--inner join sadece eþleþen kayýtlarý getirir.
select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
--LEFT JOIN
select * from Products p left join [Order Details] od
on p.ProductID = od.ProductID
select * from Customers c inner join Orders o
on c.CustomerID = o.CustomerID

-- Üye olup hiç ürün almayan müþterilerin sorgusu ve bunlara kampanya uygulanýr.
select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID
where o.CustomerID is null

select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
inner join Orders o
on o.OrderID = od.OrderID













