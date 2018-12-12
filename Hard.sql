SELECT TOP 10 *
FROM Products INNER JOIN Firms
ON Products.idProduct = Firms.idProduct
WHERE price > 5000
ORDER BY price DESC;
