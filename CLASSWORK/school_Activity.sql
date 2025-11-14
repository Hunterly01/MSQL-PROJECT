use cape_codd;

-- 2.17
select SKU, SKU_DESCRIPTION
from INVERNTORY;

-- 2.18
select SKU_DESCRIPTION, SKU 
from INVENTORY;

-- 2.19
select warehouseID
from INVENTORY;

-- 2.20
select distinct warehouseID as ID
from INVENTORY;

-- 2.21
select warehouseID, SKU, SKU_DESCRIPTION, QuantityOnHand, QuantityOnOrder
from INVENTORY;

-- 2.22
select *
from INVENTORY;

-- 2.23
select QuantityOnHand
from INVENTORY
where QuantityOnHand > 0;

-- 2.24
select  SKU, SKU_Description
from INVENTORY
where QuantityOnHand = 0;

-- 2.25
select SKU, SKU_Description,  WarehouseID
from INVENTORY
where QuantityOnHand = 0
order by WarehouseID ASC;

-- 2.26
select SKU, SKU_Description,  WarehouseID
from INVENTORY
where QuantityOnHand = 0
order by WarehouseID DESC, SKU ASC;

-- 2.27
select SKU, SKU_Description,  WarehouseID
from INVENTORY
where QuantityOnHand = 0 and QuantityOnOrder > 0
order by WarehouseID DESC, SKU ASC;

-- 2.28
select SKU, SKU_Description,  WarehouseID
from INVENTORY
where QuantityOnHand = 0 or QuantityOnOrder = 0
order by WarehouseID DESC, SKU ASC;

-- 2.29
select SKU, SKU_Description, WarehouseID, QuantityOnHand
from INVENTORY
where QuantityOnHand > 1 and QuantityOnHand < 10;

-- 2.30
select SKU, SKU_Description, WarehouseID, QuantityOnHand
from INVENTORY
where QuantityOnHand between 1 and 10;

-- 2.31
select distinct SKU, SKU_Description 
from INVENTORY
where SKU_Description like 'alf-Dome%';

-- 2.32
select distinct SKU, SKU_Description 
from INVENTORY
where SKU_Description like '%Climb%';

-- 2.33
select distinct SKU, SKU_Description 
from INVENTORY
where substring( SKU_Description, 3, 1) = 'd';

-- 2.34
select
	sum(QuantityOnHand) as TotalQuantity,
    count(QuantityOnHand) as TotalNumber,
    avg(QuantityOnHand) as AvgQuantity,
    min(QuantityOnHand) as MinQuantity,
    max(QuantityOnHand) as MaxQuantity    
from INVENTORY;



-- 2.37
select WarehouseID, sum(QuantityOnHand) as TotalItemsOnHandLT3 
from INVENTORY
where QuantityOnHand < 3
group by WarehouseID
order by TotalItemsOnHandLT3 desc;

-- 2.38
select WarehouseID, sum(QuantityOnHand) as TotalItemsOnHandLT3 
from INVENTORY
where QuantityOnHand < 3
group by WarehouseID
having count(SKU) < 2
order by TotalItemsOnHandLT3 desc;


select SKU, SKU_Description, sum(QuantityOnHand) as newTotal 
from INVENTORY
group by SKU, SKU_Description;

select *
from INVENTORY as i, WAREHOUSE as w
where i.WarehouseID = w.WarehouseID;

select *
from INVENTORY as i join WAREHOUSE as w
where i.WarehouseID = w.WarehouseID;

select *
from WAREHOUSE as w left join INVENTORY as i
on i.WarehouseID = w.WarehouseID;

select *
from INVENTORY
where WarehouseID in (100, 200, 300);


-- 2.40
select SKU, SKU_Description, inventory.WarehouseID, Warehouse.WarehouseID WarehouseCity, WarehouseState
from INVENTORY
join Warehouse on Inventory.WarehouseID = Warehouse.WarehouseID
where WarehouseCity = 'Atlanta' or WarehouseCity = 'Bangor' or WarehouseCity = 'Chicago';

-- 2.41
select SKU, SKU_Description, inventory.WarehouseID, Warehouse.WarehouseID WarehouseCity, WarehouseState
from INVENTORY
join Warehouse on Inventory.WarehouseID = Warehouse.WarehouseID
where  WarehouseCity in('Atlanta'or 'Bangor'or 'Chicago');

-- 2.42
Select I.SKU, I.SKU_Description, W.WarehouseID, W.WarehouseCity, W.WarehouseState
From Inventory Join Warehouse W on I.WarehouseID = W.WarehouseID
where W.WarehouseCity <> 'Atlanta' and W.WarehouseCity <> 'Bangor'and W.WarehouseCity <> 'Chicago';

-- 2.43
select I.SKU, I.SKU_Description, W.WarehouseID, W.WarehouseCity, W.WarehouseState
from Inventory I join Warehouse W
on I.WarehouseID = W.WarehouseID
where W.WarehouseCity not in ('Atlanta', 'Bangor', 'Chicago');

-- 2.44


-- 2.45
select SKU, SKU_Description, WarehouseID
From Inventory
Where WarehouseID in (
    select WarehouseID
    from Warehouse
    where Manager = 'Lucille Smith'
);

-- 2.46
select I.SKU, I.SKU_Description, I.WarehouseID
from Inventory I, Warehouse W
where  I.WarehouseID = W.WarehouseID
 and W.Manager = 'Lucille Smith';

-- 2.47
select I.SKU, I.SKU_Description, I.WarehouseID
from Inventory as I join Warehouse as W
    on I.WarehouseID = W.WarehouseID 
where W.Manager = 'Lucille Smith';

-- 2.48






