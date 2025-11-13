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



