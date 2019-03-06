CREATE database bamazon;

USE bamazon;

create table products(
  item_id integer(10) NOT NULL,
  product_name varchar(1000) NULL,
  department_name 	varchar(100) NULL,
  price integer NOT NULL,
  stock_quantity integer NOT NULL,
  PRIMARY KEY (`item_id`)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
values (1,"The day the Crayons Quit", "books and audible", 11.99 , 100), (2, "Fantastic Beasts: The Crimes of Grindelwald
", "movies, music,& games", 24.99 , 160), (3, "TCL 50S425 50 inch 4K Smart LED Roku TV (2019)", "electronics, computer,& office", 299.99, 450 ),
(4, "Sauder 418175 Dakota Pass 4-Drawer Chest, L: 32.68,x W: 17.52, x H: 43.23, Craftsman Oak finish", "Home, Garden & Tools", 155.73, 260),(5, "50 shades of grey", "books and audible", 15.99 , 60),
(6, "Presto Belgian Waffle Maker", "Home, Garden & Tools", 24.47, 54), (7, "18 Super Pigmented - Top Influencer Professional Eyeshadow Palette all finishes, 5 Matte + 9 Shimmer", "beauty & health",12.57 , 51), (8, "Reversible Metatron Cube Orgonite Mixed Chakra Orgone Pendant", "handmade",49.99 ,350 ),
(9, "Play-Doh Modeling Compound 10-Pack Case of Colors", "toys, kids, & baby", 7.99 ,98),(10 ,"Twilight", "books and audible", 9.99 , 202);

select*from products;