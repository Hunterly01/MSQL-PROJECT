
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
  select TotalAmount
  