use mi_ch02;

SELECT *
FROM ITEM;

SELECT *
FROM SHIPMENT;

SELECT *
FROM SHIPMENT_ITEM;

SELECT ShipmentID, ShipperName, ShipperInvoiceNumber
FROM SHIPMENT;

SELECT ShipmentID, ShipperName, ShipperInvoiceNumber
FROM SHIPMENT
WHERE InsuredValue > 10000.00;

SELECT ShipmentID, ShipperName, ShipperInvoiceNumber
FROM SHIPMENT
WHERE ShipperName LIKE 'AB%';

SELECT ShipmentID, ShipperName, ShipperInvoiceNumber, ArrivalDate
FROM SHIPMENT
WHERE MONTH(DepartureDate) = 12;

SELECT ShipmentID, ShipperName, ShipperInvoiceNumber, ArrivalDate
FROM SHIPMENT
WHERE DAY(DepartureDate) = 10;

SELECT MIN(InsuredValue) AS MinInsuredValue, MAX(InsuredValue) AS MaxInsuredValue
FROM SHIPMENT;

SELECT AVG(InsuredValue) AS AvgInsuredValue
FROM SHIPMENT;

SELECT COUNT(*) AS NumberOfShipment
FROM SHIPMENT;

SELECT ItemID, Description, Store, 
	(LocalCurrencyAmount * ExchangeRate) AS USCurrencyAmount
FROM ITEM;

SELECT City, Store
FROM ITEM
GROUP BY City, Store;

SELECT City, Store, COUNT(*) AS NumberOfPurchases
FROM ITEM
GROUP BY City, Store;

SELECT ShipperName, ShipmentID, DepartureDate
FROM SHIPMENT
WHERE ShipmentID IN (
SELECT ShipmentId
FROM SHIPMENT_ITEM
WHERE Value > 1000
)
ORDER BY ShipperName, DepartureDate DESC;

SELECT DISTINCT S.ShipperName, S.ShipmentID, S.DepartureDate
FROM SHIPMENT S
JOIN SHIPMENT_ITEM SI 
ON S.ShipmentID = SI.ShipmentID
WHERE SI.Value >= 1000.00
ORDER BY S.ShipperName ASC, S.DepartureDate DESC;

SELECT ShipperName, ShipmentID, DepartureDate
FROM SHIPMENT
WHERE ShipmentID IN
      (SELECT SI.ShipmentID
       FROM SHIPMENT_ITEM SI
       WHERE SI.ItemID IN
             (SELECT ItemID FROM ITEM WHERE City = 'Singapore'))
ORDER BY ShipperName ASC, DepartureDate DESC;

SELECT DISTINCT S.ShipperName, S.ShipmentID, S.DepartureDate
FROM SHIPMENT S, SHIPMENT_ITEM SI, ITEM I
WHERE S.ShipmentID = SI.ShipmentID
  AND SI.ItemID = I.ItemID
  AND I.City = 'Singapore'
ORDER BY S.ShipperName ASC, S.DepartureDate DESC;

SELECT DISTINCT S.ShipperName, S.ShipmentID, S.DepartureDate
FROM SHIPMENT S
JOIN SHIPMENT_ITEM SI ON S.ShipmentID = SI.ShipmentID
JOIN ITEM I ON SI.ItemID = I.ItemID
WHERE I.City = 'Singapore'
ORDER BY S.ShipperName ASC, S.DepartureDate DESC;

SELECT S.ShipperName, S.ShipmentID, S.DepartureDate, SI.Value
FROM SHIPMENT S
JOIN SHIPMENT_ITEM SI ON S.ShipmentID = SI.ShipmentID
WHERE SI.ItemID IN
      (SELECT ItemID FROM ITEM WHERE City = 'Singapore')
ORDER BY S.ShipperName ASC, S.DepartureDate DESC;

SELECT S.ShipperName, S.ShipmentID, S.DepartureDate, SI.Value
FROM SHIPMENT S
LEFT JOIN (
      SELECT SI.ShipmentID, SI.Value, SI.ItemID
      FROM SHIPMENT_ITEM SI
      JOIN ITEM I ON SI.ItemID = I.ItemID
      WHERE I.City = 'Singapore'
      ) SI ON S.ShipmentID = SI.ShipmentID
ORDER BY SI.Value ASC, S.ShipperName ASC, S.DepartureDate DESC;

