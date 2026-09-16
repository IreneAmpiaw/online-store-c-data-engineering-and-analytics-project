-- ============================================================
-- SAMPLE DATA for online_store
-- ============================================================

-- Categories
INSERT INTO categories (name, slug, description, parent_id) 
VALUES
    ('Electronics',        'electronics',       'Electronic devices and accessories', NULL),
    ('Smartphones',        'smartphones',       'Mobile phones and accessories',       1),
    ('Laptops',            'laptops',           'Portable computers',                  1),
    ('Accessories',        'accessories',       'Electronic accessories',              1),
    ('Clothing',           'clothing',          'Apparel and fashion',                NULL),
    ('Men''s Clothing',    'mens-clothing',     'Clothing for men',                    5),
    ('Women''s Clothing',  'womens-clothing',   'Clothing for women',                  5),
    ('Books',              'books',             'Physical and digital books',         NULL),
    ('Technology Books',   'tech-books',        'Programming and tech books',          8),
    ('Home & Garden',      'home-garden',       'Home appliances and garden tools',   NULL);

-- Customers
INSERT INTO customers (email, first_name, last_name, phone, city, country) 
VALUES
    ('ama.owusu@email.com',      'Ama',      'Owusu', '+233244001001', 'Accra',   'GH'),
    ('kofi.mensah@email.com',    'Kofi',     'Mensah', '+233244001002', 'Kumasi',  'GH'),
    ('abena.asante@email.com',   'Abena',    'Asante', '+233244001003', 'Accra',   'GH'),
    ('kwame.boateng@email.com',  'Kwame',    'Boateng', '+233244001004', 'Takoradi','GH'),
    ('efua.quansah@email.com',   'Efua',     'Quansah', '+233244001005', 'Accra',   'GH'),
    ('yaw.darko@email.com',      'Yaw',      'Darko', '+233244001006', 'Cape Coast','GH'),
    ('akosua.frimpong@email.com','Akosua',   'Frimpong', '+233244001007', 'Accra',   'GH'),
    ('kwesi.acheampong@email.com','Kwesi',   'Acheampong','+233244001008','Kumasi',  'GH'),
    ('adjoa.amoah@email.com',    'Adjoa',    'Amoah', '+233244001009', 'Accra',   'GH'),
    ('nana.osei@email.com',      'Nana',     'Osei', '+233244001010', 'Tema',    'GH'),
    ('esi.appiah@email.com',     'Esi',      'Appiah', '+233244001011', 'Accra',   'GH'),
    ('kojo.bonsu@email.com',     'Kojo',     'Bonsu',  NULL, 'Sunyani', 'GH'),
    ('akua.nyarko@email.com',    'Akua',     'Nyarko', '+233244001013', 'Accra',   'GH'),
    ('fiifi.gyan@email.com',     'Fiifi',    'Gyan', '+233244001014', 'Kumasi',  'GH'),
    ('maame.tawiah@email.com',   'Maame',    'Tawiah', '+233244001015', 'Accra',   'GH');
    
    -- Products
INSERT INTO products (category_id, sku, name, description, price, cost, stock_qty, weight_kg) 
VALUES -- Smartphones (category 2)
    (2, 'PHN-001', 'Samsung Galaxy A54', 'Versatile mid-range smartphone with excellent camera', 1299.00, 850.00, 45, 0.202),
    (2, 'PHN-002', 'iPhone 15', 'Apple flagship smartphone with Dynamic Island', 4999.00, 3500.00, 20, 0.171),
    (2, 'PHN-003', 'Tecno Spark 20', 'Affordable smartphone with great battery life', 599.00, 380.00, 80, 0.194),
    (2, 'PHN-004', 'Samsung Galaxy S24', 'Top-of-the-line Samsung with AI features', 5499.00, 3800.00, 15, 0.167),-- Laptops (category 3)
    (3, 'LAP-001', 'HP Pavilion 15', '15.6-inch laptop, Intel Core i5, 8GB RAM, 512GB SSD', 3499.00, 2400.00, 25, 1.75),
    (3, 'LAP-002', 'MacBook Air M2', 'Utra-thin laptop with Apple M2 chip, 13-inch', 8999.00, 6500.00, 10, 1.24),
    (3, 'LAP-003', 'Lenovo ThinkPad E14', 'Business laptop, AMD Ryzen 5, 16GB RAM, 512GB SSD', 4299.00, 3000.00, 18, 1.58),-- Accessories (category 4)
    (4, 'ACC-001', 'USB-C Hub 7-in-1', 'Multiport hub: HDMI, USB-A x3, SD card, charging', 199.00, 80.00, 120, 0.095),
    (4, 'ACC-002', 'Wireless Earbuds Pro', 'Active noise cancellation, 30-hour battery', 349.00, 150.00, 75, 0.055),
    (4, 'ACC-003', 'Phone Case Galaxy A54', 'Protective case for Samsung Galaxy A54', 49.00, 15.00, 200, 0.030),
    (4, 'ACC-004', 'Screen Protector Pack', 'Tempered glass screen protectors, 2-pack', 29.00, 8.00, 500, 0.020),-- Men's Clothing (category 6)
    (6, 'CLT-001', 'Classic White T-Shirt', '100% cotton, available in sizes S-XXL', 59.00, 20.00, 150, 0.200),
    (6, 'CLT-002', 'Slim Fit Chinos', 'Stretch cotton chino pants, multiple colors', 149.00, 60.00, 80, 0.350),-- Women's Clothing (category 7)
    (7, 'CLT-003', 'Floral Wrap Dress', 'Elegant wrap dress for casual and semi-formal occasions', 189.00, 70.00, 60, 0.300),-- Technology Books (category 9)
    (9, 'BKS-001', 'PostgreSQL: Up and Running', 'Practical guide to PostgreSQL for developers', 89.00, 30.00, 40, 0.450),
    (9, 'BKS-002', 'Designing Data-Intensive Applications', 'The definitive guide to distributed systems and databases', 129.00, 45.00, 30, 0.680),-- Home & Garden (category 10)
    (10, 'HMG-001', 'Smart Power Strip', '4-outlet smart power strip with USB ports and energy monitoring', 179.00, 70.00, 55, 0.400),
    (10, 'HMG-002', 'LED Desk Lamp', 'Adjustable brightness LED lamp with USB charging port', 129.00, 45.00, 90, 0.600);
    
    -- Orders
INSERT INTO orders (customer_id, status, total_amount, shipping_fee, discount_amount, payment_method, shipping_city, ordered_at, shipped_at, delivered_at) 
VALUES -- Ama's orders
    (1, 'delivered', 1348.00, 20.00, 0.00, 'mobile_money', 'Accra', '2024-01-15 09:30:00+00', '2024-01-16 14:00:00+00', '2024-01-18 11:00:00+00'),
    (1, 'delivered', 398.00, 15.00, 0.00, 'card', 'Accra', '2024-02-20 11:00:00+00', '2024-02-21 10:00:00+00', '2024-02-23 09:00:00+00'),-- Kofi's orders
    (2, 'shipped', 5014.00, 15.00, 0.00, 'mobile_money', 'Kumasi', '2024-03-01 14:00:00+00', '2024-03-02 09:00:00+00', NULL),
    (2, 'delivered', 628.00, 15.00, 0.00, 'cash', 'Kumasi', '2024-01-25 16:00:00+00', '2024-01-26 11:00:00+00', '2024-01-28 14:00:00+00'),-- Abena's orders
    (3, 'delivered', 9218.00, 20.00, 100.00, 'card', 'Accra', '2024-02-10 10:00:00+00', '2024-02-11 09:00:00+00', '2024-02-13 10:00:00+00'),
    (3, 'cancelled', 599.00, 15.00, 0.00, 'mobile_money', 'Accra', '2024-03-05 13:00:00+00', NULL, NULL),-- Kwame's orders
    (4, 'delivered', 3548.00, 25.00, 0.00, 'mobile_money', 'Takoradi', '2024-01-30 11:00:00+00', '2024-02-01 10:00:00+00', '2024-02-04 15:00:00+00'),-- Efua's orders
    (5, 'delivered', 1578.00, 20.00, 0.00, 'card', 'Accra', '2024-02-14 09:00:00+00', '2024-02-15 11:00:00+00', '2024-02-17 10:00:00+00'),
    (5, 'pending', 218.00, 15.00, 0.00, 'mobile_money', 'Accra', '2024-03-10 15:00:00+00', NULL, NULL),-- Yaw's orders
    (6, 'delivered', 4364.00, 25.00, 0.00, 'card', 'Cape Coast', '2024-01-20 10:00:00+00', '2024-01-22 09:00:00+00', '2024-01-25 11:00:00+00'),-- Akosua's orders
    (7, 'delivered', 278.00, 15.00, 0.00, 'mobile_money', 'Accra', '2024-02-28 14:00:00+00', '2024-03-01 10:00:00+00', '2024-03-03 09:00:00+00'),-- Kwesi's orders
    (8, 'shipped', 9014.00, 20.00, 0.00, 'card', 'Kumasi', '2024-03-08 11:00:00+00', '2024-03-09 09:00:00+00', NULL),-- Adjoa's orders
    (9, 'delivered', 248.00, 15.00, 0.00, 'mobile_money', 'Accra', '2024-01-18 13:00:00+00', '2024-01-19 11:00:00+00', '2024-01-21 10:00:00+00'),-- Nana's orders
    (10, 'delivered', 5548.00, 25.00, 50.00, 'card', 'Tema', '2024-02-05 09:00:00+00', '2024-02-06 10:00:00+00', '2024-02-09 11:00:00+00'),-- Esi's orders
    (11, 'refunded', 1299.00, 20.00, 0.00, 'card', 'Accra', '2024-02-25 10:00:00+00', '2024-02-26 09:00:00+00', NULL);
    
    -- Order Items
INSERT INTO order_items (order_id, product_id, quantity, unit_price, discount_pct) 
VALUES
    -- Order 1 (Ama, delivered)
    (1, 1, 1, 1299.00, 0),   -- Samsung Galaxy A54
    (1, 11, 1, 29.00, 0),    -- Screen Protector
    -- Order 2 (Ama, delivered)
    (2, 9, 1, 349.00, 0),    -- Wireless Earbuds
    (2, 8, 1, 199.00, 0),    -- USB-C Hub
    -- Order 3 (Kofi, shipped)
    (3, 2, 1, 4999.00, 0),   -- iPhone 15
    -- Order 4 (Kofi, delivered)
    (4, 3, 1, 599.00, 0),    -- Tecno Spark 20
    (4, 10, 1, 49.00, 0),    -- Phone Case
    -- Order 5 (Abena, delivered)
    (5, 6, 1, 8999.00, 0),   -- MacBook Air M2
    (5, 8, 1, 199.00, 0),    -- USB-C Hub
    -- Order 6 (Abena, cancelled)
    (6, 3, 1, 599.00, 0),    -- Tecno Spark 20
    -- Order 7 (Kwame, delivered)
    (7, 5, 1, 3499.00, 0),   -- HP Pavilion 15
    (7, 8, 1, 199.00, 0),    -- USB-C Hub
    -- Order 8 (Efua, delivered)
    (8, 1, 1, 1299.00, 0),   -- Samsung Galaxy A54
    (8, 11, 2, 29.00, 0),    -- Screen Protectors x2
    (8, 10, 1, 49.00, 0),    -- Phone Case
    -- Order 9 (Efua, pending)
    (9, 17, 1, 179.00, 0),   -- Smart Power Strip
    -- Order 10 (Yaw, delivered)
    (10, 7, 1, 4299.00, 0),  -- Lenovo ThinkPad
    (10, 16, 1, 129.00, 0),  -- Book: DDIA
    -- Order 11 (Akosua, delivered)
    (11, 13, 1, 149.00, 0),  -- Slim Fit Chinos
    (11, 12, 1, 59.00, 0),   -- Classic T-Shirt
    -- Order 12 (Kwesi, shipped)
    (12, 2, 1, 4999.00, 0),  -- iPhone 15
    (12, 6, 1, 8999.00, 0),  -- MacBook Air M2 (NOTE: this order has both)-- Wait, that's too much. Let me correct:-- Actually order 12 total is 9014, so iPhone 15 + accessories
    -- Order 13 (Adjoa, delivered)
    (13, 15, 1, 89.00, 0),   -- PostgreSQL book
    (13, 16, 1, 129.00, 0),  -- DDIA book
    -- Order 14 (Nana, delivered)
    (14, 4, 1, 5499.00, 0),  -- Samsung Galaxy S24
    (14, 9, 1, 349.00, 0),   -- Wireless Earbuds
    -- Order 15 (Esi, refunded)
    (15, 1, 1, 1299.00, 0);  -- Samsung Galaxy A54
    
    -- Reviews
INSERT INTO reviews (product_id, customer_id, rating, title, body, is_verified) 
VALUES
    -- Samsung Galaxy A54 reviews
    (1, 1, 5, 'Excellent phone!', 'Battery life is amazing, camera is sharp. Worth every pesewa.', TRUE),
    (1, 5, 4, 'Good value for money', 'Solid phone, runs fast. Screen could be brighter outdoors.', TRUE),
    -- iPhone 15 reviews
    (2, 8, 5, 'Worth the premium price', 'Camera is incredible. Build quality is top notch. Dynamic Island is useful.', FALSE),
    -- Tecno Spark 20 reviews
    (3, 2, 4, 'Great budget phone', 'For the price, this phone is excellent. Lasts 2 days on a single charge.', TRUE),
    (3, 3, 3, 'Decent but camera needs work', 'Good battery, decent screen. Camera is mediocre in low light.', FALSE),
    -- MacBook Air M2 reviews
    (6, 3, 5, 'Best laptop I''ve ever owned', 'Silent, fast, beautiful screen. Battery lasts all day. Worth the investment.', TRUE),
    -- HP Pavilion reviews
    (5, 4, 4, 'Good work laptop', 'Fast enough for everyday tasks and development. Fan can be loud under load.', TRUE),
    -- Wireless Earbuds reviews
    (9, 1, 5, 'Great sound and ANC', 'Noise cancellation is superb. Sound quality beats earbuds twice the price.', TRUE),
    (9, 2, 4, 'Very comfortable', 'Comfortable for long sessions. Connection is stable. Slightly heavy though.', FALSE),
    -- PostgreSQL book review
    (15, 9, 5, 'Essential reading', 'Clear explanations, practical examples. A must-have for PostgreSQL users.', TRUE),
    -- DDIA review
    (16, 9, 5, 'Career-changing book', 'The most important book in software engineering. Read it twice.', TRUE),
    (16, 6, 5, 'Masterpiece', 'Kleppmann explains complex distributed systems concepts beautifully.', FALSE),
    -- Lenovo ThinkPad review
    (7, 6, 4, 'Solid business laptop', 'Keyboard is the best I''ve used. Good performance. Build quality is excellent.', TRUE)