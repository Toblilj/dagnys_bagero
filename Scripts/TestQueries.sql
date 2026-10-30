

SELECT Products.productName, Goods.nameOfItem, RecipeItems.amountKg
FROM RecipeItems
INNER JOIN Products ON RecipeItems.productId = Products.productId
INNER JOIN Goods ON RecipeItems.artNr = Goods.artNr;



--Lista Produkter
SELECT * FROM Products;

--Lista leverantörer
SELECT * FROM Deliveries;


SELECT * FROM Goods INNER JOIN Deliveries ON Deliveries.leveransId =Goods.leveransId;

SELECT * FROM LagerSaldo INNER JOIN Goods ON LagerSaldo.artNr = Goods.artNr;
