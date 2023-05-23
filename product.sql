select * from Sales.CustomerCategories --category
select * from Sales.Customers --cust id
Select * from Sales.InvoiceLines --discription, quantity,Unitprice, lineprofit
Select * from Sales.Invoices --invoice date

select sc.CustomerID, scc.CustomercategoryName, sil.Description, sum(sil.Quantity) as [Total Quantity], sil.UnitPrice, sil.LineProfit as profit ,si.InvoiceDate
from Sales.CustomerCategories as scc inner join Sales.Customers as sc
on scc.CustomerCategoryID = sc.CustomerCategoryID inner join Sales.Invoices as si
on sc.CustomerID = si.CustomerID inner join Sales.InvoiceLines as sil
on si.InvoiceID = sil.InvoiceID 
Group by sc.CustomerID, scc.CustomercategoryName, sil.Description, sil.Quantity, sil.UnitPrice, sil.LineProfit,si.InvoiceDate
order by sum(sil.Quantity) desc