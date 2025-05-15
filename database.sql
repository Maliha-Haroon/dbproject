
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50) UNIQUE
);


INSERT INTO categories VALUES
(1, 'Bags'),
(2, 'Shoes'),
(3, 'Accessories'),
(4, 'Fragrance'),
(5, 'Jewelry'),
(6, 'Watches'),
(7, 'Clothing'),
(8, 'Sunglasses');
SELECT * FROM categories;

CREATE TABLE bags (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2),
    stock INT,
    release_date DATE,
    category_id INT REFERENCES categories(category_id)
);
INSERT INTO bags (product_id, name, description, price, stock, release_date, category_id) VALUES
(1, 'Classic Leather Tote', 'Elegant leather tote bag perfect for everyday use.', 129.99, 15, '2024-05-10', 2),
(2, 'Sporty Backpack', 'Durable backpack ideal for sports and outdoor activities.', 89.50, 25, '2023-11-20', 3),
(3, 'Vintage Handbag', 'Retro style handbag with unique patterns.', 149.00, 10, '2024-01-15', 2),
(4, 'Travel Duffel Bag', 'Spacious duffel bag for weekend getaways.', 179.99, 8, '2023-09-05', 4),
(5, 'Eco-friendly Shopper', 'Reusable eco-friendly shopping bag made from recycled materials.', 39.99, 50, '2024-03-30', 5),
(6, 'Mini Crossbody Bag', 'Compact crossbody bag for casual outings.', 59.90, 20, '2024-06-01', 2),
(7, 'Luxury Clutch', 'Premium clutch bag perfect for evening events.', 199.99, 5, '2024-02-14', 1);

SELECT * FROM bags;

CREATE TABLE shoes (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10,2),
    stock INT,
    release_date DATE,
    category_id INT REFERENCES categories(category_id)
);

INSERT INTO shoes VALUES
(8, 'Ace Sneakers', 'White leather sneakers with Web stripe', 790.00, 40, '2022-11-15', 2),
(9, 'Horsebit Loafers', 'Black leather loafers with horsebit detail', 920.00, 30, '2023-08-20', 2),
(10, 'Gucci Tennis 1977', 'Canvas sneakers with GG motif', 670.00, 35, '2023-02-14', 2),
(11, 'Rhyton Logo Sneakers', 'Chunky sneakers with vintage logo', 920.00, 20, '2023-04-10', 2),
(12, 'Princetown Slipper', 'Backless slipper with fur lining', 1050.00, 11, '2023-03-05', 2),
(13, 'GG Supreme Sneakers', 'Canvas low-top sneakers', 790.00, 24, '2022-09-29', 2),
(14, 'Gucci x Adidas Gazelle', 'Velvet collab sneakers', 980.00, 6, '2023-11-18', 2),
(15, 'Gucci Slide Sandals', 'Rubber sandals with embossed logo', 390.00, 20, '2023-05-26', 2);

SELECT *from shoes;

CREATE TABLE accessories (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10,2),
    stock INT,
    release_date DATE,
    category_id INT REFERENCES categories(category_id)
);

INSERT INTO accessories VALUES
(16, 'GG Canvas Baseball Cap', 'Adjustable canvas cap with GG pattern', 410.00, 22, '2023-01-10', 3),
(17, 'Flora Silk Scarf', 'Multicolor floral print silk scarf', 530.00, 17, '2023-03-25', 3),
(18, 'Gucci Socks GG Pattern', 'Cotton socks with interlocking G motif', 170.00, 60, '2023-01-30', 3),
(19, 'Leather Driving Gloves', 'Leather gloves with Web trim', 650.00, 10, '2023-12-11', 3),
(20, 'GG Logo Card Holder', 'Leather card case with GG detail', 320.00, 25, '2022-12-08', 3),
(21, 'Pet Collar', 'Leather collar with GG hardware', 290.00, 9, '2023-03-03', 3),
(22, 'Embroidered Cap', 'Cap with Gucci embroidery', 390.00, 20, '2023-06-04', 3);

SELECT * FROM accessories;

CREATE TABLE fragrance (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10,2),
    stock INT,
    release_date DATE,
    category_id INT REFERENCES categories(category_id)
);

INSERT INTO fragrance VALUES
(23, 'Gucci Bloom', 'Floral scent with jasmine and tuberose', 145.00, 50, '2024-03-10', 4),
(24, 'Bloom Gift Set', 'Perfume and lotion gift set', 180.00, 35, '2023-12-05', 4),
(25, 'Bloom Intense', 'Dark floral scent with sandalwood', 155.00, 18, '2023-09-15', 4),
(26, 'Flora Gorgeous Jasmine', 'Jasmine with sandalwood base', 138.00, 42, '2023-05-05', 4),
(27, 'Flora Gorgeous Gardenia', 'Pear and brown sugar scent', 145.00, 36, '2024-02-18', 4);

Select * from fragrance;

CREATE TABLE jewelry (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10,2),
    stock INT,
    release_date DATE,
    category_id INT REFERENCES categories(category_id)
);

INSERT INTO jewelry VALUES
(28, 'Interlocking G Necklace', 'Sterling silver with G pendant', 580.00, 15, '2023-10-01', 5),
(29, 'Feline Head Ring', 'Antiqued silver ring', 330.00, 12, '2023-02-17', 5),
(30, 'GG Pearl Earrings', 'Gold earrings with pearl drop', 620.00, 10, '2022-10-14', 5),
(31, 'GG Running Necklace', '18k gold chain with GG', 1380.00, 4, '2023-10-03', 5),
(32, 'Interlocking G Bracelet', 'Sterling silver bracelet', 520.00, 12, '2022-08-03', 5);

SELECT * FROM jewelry;
select * from jewelry where year(release_date)='2023';

CREATE TABLE watches (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10,2),
    stock INT,
    release_date DATE,
    category_id INT REFERENCES categories(category_id)
);

INSERT INTO watches VALUES
(33, 'Gucci Dive Watch', 'Steel watch with rubber strap', 1390.00, 8, '2023-09-10', 6),
(34, 'Gucci 25H', 'Slim stainless steel minimal watch', 1450.00, 6, '2024-01-10', 6),
(35, 'G-Timeless Watch', 'Gold PVD watch with bee dial', 990.00, 9, '2023-08-30', 6);

select * from watches;

CREATE TABLE clothing (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10,2),
    stock INT,
    release_date DATE,
    category_id INT REFERENCES categories(category_id)
);

INSERT INTO clothing VALUES
(36, 'Wool Crewneck Sweater', 'GG motif wool sweater', 1100.00, 19, '2023-11-01', 7),
(37, 'GG Tracksuit (Kids)', 'Two-piece kids set', 950.00, 13, '2023-05-12', 7),
(38, 'Oversized T-shirt', 'White cotton shirt with logo', 590.00, 45, '2023-07-09', 7),
(39, 'Gucci Hoodie', 'Oversized hoodie with logo', 980.00, 21, '2023-06-20', 7),
(40, 'Denim Jacket', 'Washed jacket with patches', 1350.00, 8, '2023-03-15', 7),
(41, 'Tennis Cotton Polo', 'Piqué polo with Web stripe', 730.00, 14, '2023-04-28', 7),
(42, 'Reversible Bomber Jacket', 'Silk bomber with tiger print', 2900.00, 5, '2023-09-06', 7),
(43, 'North Face Collab Jacket', 'Puffer from Gucci x North Face', 3200.00, 3, '2023-02-01', 7);

SELECT * FROM clothing;

CREATE TABLE sunglasses (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10,2),
    stock INT,
    release_date DATE,
    category_id INT REFERENCES categories(category_id)
);

INSERT INTO sunglasses VALUES
(44, 'Gucci GG0807S', 'Oversized square-frame sunglasses', 420.00, 27, '2023-06-18', 8),
(45, 'Gucci GG1073S', 'Cat-eye acetate frame sunglasses', 420.00, 30, '2023-04-21', 8),
(46, 'Gucci GG0061S', 'Square-frame acetate sunglasses with Web stripe detail', 430.00, 25, '2023-05-12', 8),
(47, 'Gucci GG0740S', 'Oversized butterfly-frame sunglasses with gradient lenses', 460.00, 20, '2023-07-18', 8),
(48, 'Gucci GG0960S', 'Rectangular-frame sunglasses with enamelled Interlocking G', 450.00, 18, '2023-08-22', 8),
(49, 'Gucci GG0715S', 'Round metal sunglasses with iconic Double G logo', 470.00, 15, '2023-09-10', 8),
(50, 'Gucci GG0788S', 'Cat-eye sunglasses with sparkling acetate frame', 490.00, 10, '2023-10-05', 8),
(51, 'Gucci GG1072S', 'Square-frame acetate sunglasses with subtle gold accents', 440.00, 12, '2023-11-01', 8),
(52, 'Gucci GG0950S', 'Pilot-style sunglasses with metal frame and black lenses', 460.00, 14, '2023-12-20', 8),
(53, 'Gucci GG0810S', 'Rectangular acetate sunglasses with Web stripe temples', 430.00, 16, '2024-01-15', 8);



 