
--------Book Store Inventory Case-study------
                                    --------A. Data Retrieval & Filtering----------
									---------------SESSION -1 -----------------
--------1.Retrieve all details of every book in the inventory.
select * from books;

--------2.List the title, author, and price of each book available.
select title, author, price
from books

--------3.Display the titles of books that are considered expensive according to company standards (above a certain price threshold).
select price 
from books
order by price desc;

select title
from books
where price>50

--------4.Identify books that are currently out of stock.
select title, stock
from books
where stock = 0;

--------5.Find the top 10 most expensive books in the catalog.
select title, price
from books
order by price desc nulls last 
limit 10

--------6.Retrieve the five oldest books based on their publication year.
select title, publication_year
from books
order by publication_year nulls last
limit 5

--------7.Find books that have not yet been rated by customers.
select title, rating
from books
where rating is NULL;

--------8.Show books where the publisherʼs information is available.
select publisher, publication_year, isbn
from books
---OR-----
select title
from books
where publisher is not NULL


                          ---------------SESSION -2 -----------------
               ------------------ B. Working with Operators--------------------------
-----9.Display each bookʼs title, its listed price, and the price after applying a 10% tax
select title, price, (price + (price*0.10)) as price_afer_tax
from books


-----10.Identify books with a high page count but still priced affordably.
select pages, price
from books
order by pages asc, price asc

select title, pages, price
from books
where pages > 600 and price < 6.6

-----11.Find books whose rating is different from the highest possible score.
select title, rating
from books
where rating <> (select max(rating) from books)
or rating is null

-----12.Retrieve books that are either not in English or are offered in a digital format.
select title, language, format
from books
where language <> 'English' or format = 'eBook'


 
















