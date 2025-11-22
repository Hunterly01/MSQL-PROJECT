
USE mdc_ch02;
 -- A
select *
 from  CUSTOMER , INVOICE, INVOICE_ITEM;

 -- B
 select LastName, FirstName, Phone 
 from CUSTOMER;
 
 -- C
  select LastName, FirstName, Phone 
 from CUSTOMER
 where FirstName = "Nikki";
 
 -- D 
 select LastName, FirstName, Phone, DateIn, DateOut
from customer join invoice
where TotalAmount > 100.00;

 -- E
 select LastName, FirstName, Phone
 from customer
 where firstName like "B%";
 
 -- F 
  select LastName, FirstName, Phone
  from customer
  where LastName like "%cat%";
  
  -- G 
  select LastName, FirstName, Phone
  from customer
  where phone like "_23%";
  
  -- H 
  select 
  max(TotalAmount) as MaxTotalAmount,
  min(TotalAmount) as MinTotalAmount
  from invoice;
  
  -- I 
  select avg(TotalAmount) as AvgTotalAmount
  from invoice;
  
  -- J 
  select
	count(*) as NumberOfCustomer
 from customer;   
  

  -- K 
  select LastName,FirstName
  from customer
  group by LastName,FirstName
  order by LastName,FirstName;
  
  
  -- L 
  select LastName,FirstName,
  count(*) as numberOfCustomer
  from customer
  group by LastName,FirstName
  order by LastName,FirstName;
  
  -- M
  select LastName,FirstName,phone
  from customer
  where CustomerID in (
    select CustomerID
    from INVOICE
    where TotalAmount > 100.00
)
order by LastName asc, FirstName desc;

-- N 
select distinct C.LastName,C.FirstName,C.Phone
from CUSTOMER C, INVOICE I
where C.CustomerID = I.CustomerID
  and I.TotalAmount > 100.00
order by C.LastName asc, C.FirstName desc;
  
  -- O 
select distinct C.LastName,C.FirstName,C.Phone
from CUSTOMER C
join INVOICE I
    on C.CustomerID = I.CustomerID
where I.TotalAmount > 100.00
order by C.LastName asc, C.FirstName desc;
  
  -- p 
select LastName,FirstName,Phone
from CUSTOMER
where CustomerID in (
    select I.CustomerID
    from INVOICE I
    where I.InvoiceNumber in (
        select InvoiceNumber
        from INVOICE_ITEM
        where Item = 'Dress Shirt'
    )
)
order by LastName asc, FirstName desc;

-- Q 
select distinct C.LastName,C.FirstName,C.Phone
from CUSTOMER C, INVOICE I, INVOICE_ITEM II
where C.CustomerID = I.CustomerID
  and I.InvoiceNumber = II.InvoiceNumber
  and II.Item = 'Dress Shirt'
order by C.LastName asc, C.FirstName desc;

-- R 
SELECT DISTINCT C.LastName,C.FirstName,C.Phone
from CUSTOMER C
join INVOICE I
    on  C.CustomerID = I.CustomerID
join INVOICE_ITEM II
    on I.InvoiceNumber = II.InvoiceNumber
where II.Item = 'Dress Shirt'
order by C.LastName asc, C.FirstName desc;

-- S 
select C.LastName as CustomerLastName,
       C.FirstName as CustomerFirstName,
       R.LastName as ReferredByLastName,
       R.FirstName as ReferredByFirstName
from CUSTOMER C
left join CUSTOMER R
    on C.ReferredBy = R.CustomerID
order by C.LastName asc, C.FirstName asc;

