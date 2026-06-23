SELECT SKU, SKU_Description FROM INVENTORY;

SELECT SKU_Description, SKU FROM INVENTORY;

SELECT WarehouseID FROM INVENTORY;

SELECT DISTINCT WarehouseID FROM INVENTORY;

SELECT WarehouseID, SKU, SKU_Description, QuantityOnHand, QuantityOnOrder FROM INVENTORY;

SELECT * FROM INVENTORY;

SELECT QuantityOnHand FROM INVENTORY WHERE QuantityOnHand > 0;

SELECT SKU, SKU_Description FROM INVENTORY WHERE QuantityOnHand = 0;

SELECT SKU, SKU_Description, WarehouseID FROM INVENTORY WHERE QuantityOnHand = 0 order by WarehouseID;

SELECT SKU, SKU_Description, WarehouseID FROM INVENTORY WHERE QuantityOnHand > 0 order by WarehouseID desc, SKU;

SELECT SKU, SKU_Description, WarehouseID FROM INVENTORY WHERE QuantityOnHand = 0 and QuantityOnOrder > 0 order by WarehouseID desc, SKU;

SELECT SKU, SKU_Description, WarehouseID FROM INVENTORY WHERE QuantityOnHand = 0 or QuantityOnOrder = 0 order by WarehouseID desc, SKU;

SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand FROM INVENTORY WHERE QuantityOnHand > 1 and QuantityOnHand < 10;

SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand FROM INVENTORY WHERE QuantityOnHand between 2 and 9;

SELECT distinct SKU, SKU_Description from INVENTORY where SKU_Description like 'Half-Dome%';

SELECT distinct SKU, SKU_Description from INVENTORY where SKU_Description like '%Climb%';

SELECT distinct SKU, SKU_Description from INVENTORY where SKU_Description like '__d%';

select sum(QuantityOnHand) as SumOfQuantityOnHand,
avg(QuantityOnHand) as AverageQuantityOnHand,
min(QuantityOnHand) as MinQuantityOnHand,
max(QuantityOnHand) as MaxQuantityOnHand
from INVENTORY;

select WarehouseID, sum(QuantityOnHand) as TotalItemsOnHand from INVENTORY
group by WarehouseID order by TotalItemsOnHand desc;

select WarehouseID, sum(QuantityOnHand) as TotalItemsOnHandLT3 from INVENTORY where SKU <3
group by WarehouseID order by TotalItemsOnHandLT3 desc;

select WarehouseID, sum(QuantityOnHand) as TotalItemsOnHandLT3
