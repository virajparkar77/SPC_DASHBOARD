select sc.CustomerID, sil.Description, sil.LineProfit as Profit, si.InvoiceDate, asp.StateProvinceName, aco.CountryName
from Sales.InvoiceLines as sil inner join Sales.Invoices as si
on sil.InvoiceID = si.InvoiceID inner join Sales.Customers as sc
on si.CustomerID = sc.CustomerID inner join Application.Cities as ac
on sc.DeliveryCityID = ac.CityID inner join Application.StateProvinces as asp
on ac.StateProvinceID = asp.StateProvinceID inner join Application.Countries as aco
on asp.CountryID = aco.CountryID
Group by sc.CustomerID, sil.Description, sil.LineProfit , si.InvoiceDate, asp.StateProvinceName, aco.CountryName
order by sil.LineProfit desc;