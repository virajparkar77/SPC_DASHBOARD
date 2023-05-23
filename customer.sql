Select * from Sales.Customers  --customer name
select * from Sales.Invoices  --invoice date
select * from Sales.InvoiceLines  --products, LineProfit, quantity
select * from Sales.CustomerCategories
Select * from Application.StateProvinces --province
Select * from Application.Countries --countries
select * from Sales.CustomerCategories


select sc.CustomerID, sc.CustomerName, sil.Description, sum(sil.LineProfit) as Profit, sum (sil.Quantity) [Total Quantity], si.Invoicedate,asp. StateProvinceName, aco.CountryName
from Sales.InvoiceLines as sil inner join Sales.Invoices as si
on sil.InvoiceID = si.InvoiceID inner join Sales.Customers as sc
on si.CustomerID = sc.CustomerID inner join Application.Cities as ac
on sc.DeliveryCityID = ac.CityID inner join Application.StateProvinces as asp
on ac.StateProvinceID = asp.StateProvinceID inner join Application.Countries as aco
on asp.CountryID = aco.CountryID
Group by sc.CustomerID, sc.CustomerName, sil.Description, sil.LineProfit, sil.Quantity, si.Invoicedate,asp. StateProvinceName, aco.CountryName
order by sum (sil.Quantity) desc;