-- SELECT
-- ANSII (Ayn� kullan�m)
select * from Customers
select ContactName Adi,CompanyName SirketAdi,City Sehir from Customers
select * from Customers where City = 'Berlin'
--case insensitive (B�y�k k���k harf duyarl�)
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
select COUNT(*) from Products -- ka� data var ? 
select COUNT(*) from Products where CategoryID = 2
select COUNT(*) Adet from Products where CategoryID = 2
select CategoryID from Products group by CategoryID
select CategoryID,COUNT(*) from Products group by CategoryID --Kategoriye g�re ka� �r�n var ?
select CategoryID,COUNT(*) from Products group by CategoryID having COUNT(*)<10 --Kategoriye G�re 10'dan az �r�nleri g�ster.
select CategoryID,COUNT(*) from Products where UnitPrice>20 group by CategoryID having COUNT(*)<10 -- Birim fiyat� 20'den fazla olan �r�nleri kategoriye g�re grupla 
--INNER JOIN
select * from Products inner join Categories on Products.CategoryID = Categories.CategoryID
select Products.ProductID,Products.ProductName,Products.UnitPrice,Categories.CategoryName from Products inner join Categories on Products.CategoryID = Categories.CategoryID
select Products.ProductID,Products.ProductName,Products.UnitPrice,Categories.CategoryName from Products inner join Categories on Products.CategoryID = Categories.CategoryID where Products.UnitPrice>=10
--DTO - DATA TRANSFORMATION OBJECT
--inner join sadece e�le�en kay�tlar� getirir.
select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
--LEFT JOIN
select * from Products p left join [Order Details] od
on p.ProductID = od.ProductID
select * from Customers c inner join Orders o
on c.CustomerID = o.CustomerID

-- �ye olup hi� �r�n almayan m��terilerin sorgusu ve bunlara kampanya uygulan�r.
select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID
where o.CustomerID is null

select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
inner join Orders o
on o.OrderID = od.OrderID













