SELECT * FROM Books WHERE genre = 'Fiction' ; 
SELECT COUNT(*) FROM Books WHERE genre = 'Fiction' ; 

SELECT * FROM Books WHERE published_year>1950 ; 

SELECT * FROM Customers WHERE country = 'Canada' ; 

SELECT * FROM Orders WHERE order_date  BETWEEN '2023-11-01' AND '2023-11-30' ;

SELECT title , stock FROM Books ;
SELECT SUM(stock) AS Total_stock FROM Books ; 

SELECT * FROM Books ORDER BY price DESC LIMIT 1 ; 

SELECT * from Orders WHERE quantity>1;
SELECT DISTINCT c.name , o.quantity FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id WHERE o.quantity > 1;

SELECT * FROM Orders WHERE total_amount>200 ; 

SELECT DISTINCT genre FROM Books;

SELECT title , stock FROM Books ORDER BY stock ASC LIMIT 1 ; 

SELECT SUM(total_amount) AS Revenue FROM Orders ; 

SELECT b.genre , SUM(o.quantity) FROM Orders o JOIN Books b ON b.book_id = o.book_id GROUP BY b.genre;

SELECT AVG(price) AS average FROM Books WHERE genre = 'Fantasy' ; 

SELECT customer_id , COUNT(order_id) FROM Orders GROUP BY customer_id HAVING COUNT(order_id)>=2;

SELECT book_id , COUNT(order_id) AS freq_ord FROM Orders GROUP BY book_id ORDER BY freq_ord DESC ; 

SELECT title , price , genre FROM Books WHERE genre='Fantasy' ORDER BY price DESC LIMIT 1;















