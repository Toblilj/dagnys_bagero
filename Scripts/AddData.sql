
INSERT INTO Deliveries(
leveransId,companyName,contactPerson,adress,phone,eMail)
VALUES(
'LEV001',
'Svenska Mjölkvarnar AB',
'Karina axelsson',
'Kvarnvägen 4',
'08-123456',
'info@kvarnen.se'
),
(
'LEV002',
'Nordic sugar & cocoa',
'Lars lindqvist',
'teckomatorpsvägen 44',
'040-987654',
'order@nordicsugar.se'
);

INSERT INTO Goods(artNr,nameOfItem,pricePerKilo,leveransId)
VALUES(
 'ART101',
'Vetemjöl Special',
'14.50',
'LEV001'
    ),
    (
 'ART102',
'Strösocker',
'18.00',
'LEV002'
    ),
    (
'ART103',
'Rågmjöl Grovt',
'16.00',
'LEV001'
 );


INSERT INTO Products(productId,productType,productName)
VALUES(
'PROD501',
'Bröd',
'Grovt Rågbröd'
),
(
'PROD504',
'Konditori',
'Klassiska kanelbullar'
);

INSERT INTO RecipeItems(productId,amountKg,artNr)
 VALUES (
 'PROD501',
 '100',
 'ART103'
),
(
'PROD504',
'100',
'ART101'
),
(
'PROD504',
'100',
'ART102'
);

INSERT INTO LagerSaldo(inKop,demand,saldo,newOrderDate,artNr)
VALUES(
'KOPP01',
'alot',
'250',
'2026-11-05 14:30:00',
'ART101'
),
(
'KOPP02',
'alot',
'100',
'2026-11-05 14:30:00',
'ART102'
);