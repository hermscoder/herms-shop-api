-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
USE `full-stack-ecommerce` ;

-- -----------------------------------------------------
-- ADD CATEGORIES
-- -----------------------------------------------------
delete from `full-stack-ecommerce`.`product_category` where id >= 1;

INSERT INTO product_category(category_name) VALUES ('Books');
INSERT INTO product_category(category_name) VALUES ('Coffee Mugs');
INSERT INTO product_category(category_name) VALUES ('Mouse Pads');
INSERT INTO product_category(category_name) VALUES ('Luggage Tags');

-- -----------------------------------------------------
-- ADD PRODUCTS
-- -----------------------------------------------------
delete from `full-stack-ecommerce`.`product` where id >= 1;
-- -----------------------------------------------------
--      Books
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1000', 'Crash Course in Python', 'Learn Python at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1000.png', 1, 100, 14.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1001', 'Become a Guru in JavaScript', 'Learn JavaScript at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1001.png', 1, 100, 20.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1002', 'Exploring Vue.js', 'Learn Vue.js at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1002.png', 1, 100, 14.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1003', 'Advanced Techniques in Big Data', 'Learn Big Data at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1003.png', 1, 100, 13.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1004', 'Crash Course in Big Data', 'Learn Big Data at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1004.png', 1, 100, 18.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1005', 'JavaScript Cookbook', 'Learn JavaScript at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1005.png', 1, 100, 23.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1006', 'Beginners Guide to SQL', 'Learn SQL at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1006.png', 1, 100, 14.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1007', 'Advanced Techniques in JavaScript', 'Learn JavaScript at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1007.png', 1, 100, 16.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1008', 'Introduction to Spring Boot', 'Learn Spring Boot at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1008.png', 1, 100, 25.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1009', 'Become a Guru in React.js', 'Learn React.js at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1009.png', 1, 100, 23.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1010', 'Beginners Guide to Data Science', 'Learn Data Science at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1010.png', 1, 100, 24.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1011', 'Advanced Techniques in Java', 'Learn Java at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1011.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1012', 'Exploring DevOps', 'Learn DevOps at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1012.png', 1, 100, 24.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1013', 'The Expert Guide to SQL', 'Learn SQL at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1013.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1014', 'Introduction to SQL', 'Learn SQL at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1014.png', 1, 100, 22.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1015', 'The Expert Guide to JavaScript', 'Learn JavaScript at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1015.png', 1, 100, 22.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1016', 'Exploring React.js', 'Learn React.js at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1016.png', 1, 100, 27.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1017', 'Advanced Techniques in React.js', 'Learn React.js at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1017.png', 1, 100, 13.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1018', 'Introduction to C#', 'Learn C# at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1018.png', 1, 100, 26.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1019', 'Crash Course in JavaScript', 'Learn JavaScript at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1019.png', 1, 100, 13.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1020', 'Introduction to Machine Learning', 'Learn Machine Learning at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1020.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1021', 'Become a Guru in Java', 'Learn Java at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1021.png', 1, 100, 18.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1022', 'Introduction to Python', 'Learn Python at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1022.png', 1, 100, 26.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1023', 'Advanced Techniques in C#', 'Learn C# at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1023.png', 1, 100, 22.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TECH-1024', 'The Expert Guide to Machine Learning', 'Learn Machine Learning at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/products/books/book-luv2code-1024.png', 1, 100, 16.99, 1, NOW());

-- -----------------------------------------------------
--      Coffee Mugs
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1000', 'Coffee Mug - Express', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1000.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1001', 'Coffee Mug - Cherokee', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1001.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1002', 'Coffee Mug - Sweeper', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1002.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1003', 'Coffee Mug - Aspire', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1003.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1004', 'Coffee Mug - Dorian', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1004.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1005', 'Coffee Mug - Columbia', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1005.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1006', 'Coffee Mug - Worthing', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1006.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1007', 'Coffee Mug - Oak Cliff', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1007.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1008', 'Coffee Mug - Tachyon', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1008.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1009', 'Coffee Mug - Pan', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1009.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1010', 'Coffee Mug - Phase', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1010.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1011', 'Coffee Mug - Falling', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1011.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1012', 'Coffee Mug - Wispy', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1012.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1013', 'Coffee Mug - Arlington', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1013.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1014', 'Coffee Mug - Gazing', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1014.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1015', 'Coffee Mug - Azura', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1015.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1016', 'Coffee Mug - Quantum Leap', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1016.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1017', 'Coffee Mug - Light Years', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1017.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1018', 'Coffee Mug - Taylor', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1018.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1019', 'Coffee Mug - Gracia', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1019.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1020', 'Coffee Mug - Relax', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1020.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1021', 'Coffee Mug - Windermere', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1021.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1022', 'Coffee Mug - Prancer', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1022.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1023', 'Coffee Mug - Recursion', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1023.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('COFFEEMUG-1024', 'Coffee Mug - Treasure', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1024.png', 1, 100, 18.99, 2, NOW());

-- -----------------------------------------------------
--      Mouse Pads
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1000', 'Mouse Pad - Express', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1000.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1001', 'Mouse Pad - Cherokee', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1001.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1002', 'Mouse Pad - Sweeper', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1002.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1003', 'Mouse Pad - Aspire', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1003.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1004', 'Mouse Pad - Dorian', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1004.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1005', 'Mouse Pad - Columbia', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1005.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1006', 'Mouse Pad - Worthing', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1006.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1007', 'Mouse Pad - Oak Cliff', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1007.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1008', 'Mouse Pad - Tachyon', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1008.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1009', 'Mouse Pad - Pan', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1009.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1010', 'Mouse Pad - Phase', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1010.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1011', 'Mouse Pad - Falling', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1011.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1012', 'Mouse Pad - Wispy', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1012.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1013', 'Mouse Pad - Arlington', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1013.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1014', 'Mouse Pad - Gazing', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1014.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1015', 'Mouse Pad - Azura', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1015.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1016', 'Mouse Pad - Quantum Leap', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1016.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1017', 'Mouse Pad - Light Years', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1017.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1018', 'Mouse Pad - Taylor', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1018.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1019', 'Mouse Pad - Gracia', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1019.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1020', 'Mouse Pad - Relax', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1020.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1021', 'Mouse Pad - Windermere', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1021.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1022', 'Mouse Pad - Prancer', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1022.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1023', 'Mouse Pad - Recursion', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1023.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MOUSEPAD-1024', 'Mouse Pad - Treasure', 'Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!', 'assets/images/products/mousepads/mousepad-luv2code-1024.png', 1, 100, 17.99, 3, NOW());

-- -----------------------------------------------------
--      Luggage Tags
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1000', 'Luggage Tag - Cherish', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1000.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1001', 'Luggage Tag - Adventure', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1001.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1002', 'Luggage Tag - Skyline', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1002.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1003', 'Luggage Tag - River', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1003.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1004', 'Luggage Tag - Trail Steps', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1004.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1005', 'Luggage Tag - Blooming', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1005.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1006', 'Luggage Tag - Park', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1006.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1007', 'Luggage Tag - Beauty', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1007.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1008', 'Luggage Tag - Water Fall', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1008.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1009', 'Luggage Tag - Trail', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1009.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1010', 'Luggage Tag - Skyscraper', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1010.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1011', 'Luggage Tag - Leaf', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1011.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1012', 'Luggage Tag - Jungle', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1012.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1013', 'Luggage Tag - Shoreline', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1013.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1014', 'Luggage Tag - Blossom', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1014.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1015', 'Luggage Tag - Lock', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1015.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1016', 'Luggage Tag - Cafe', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1016.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1017', 'Luggage Tag - Darling', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1017.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1018', 'Luggage Tag - Full Stack', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1018.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1019', 'Luggage Tag - Courtyard', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1019.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1020', 'Luggage Tag - Coaster', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1020.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1021', 'Luggage Tag - Bridge', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1021.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1022', 'Luggage Tag - Sunset', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1022.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1023', 'Luggage Tag - Flames', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1023.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LUGGAGETAG-1024', 'Luggage Tag - Countryside', 'This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!', 'assets/images/products/luggagetags/luggagetag-luv2code-1024.png', 1, 100, 16.99, 4, NOW());


-- -----------------------------------------------------
-- Add COUNTRY and STATE
-- -----------------------------------------------------
delete from `full-stack-ecommerce`.`state` where id >= 1;
delete from `full-stack-ecommerce`.`country` where id >= 1;

INSERT INTO `country` (`id`, `code`, `name`)
VALUES (1, 'AD', 'Andorra');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (1, 'Andorra la Vella', 1),
    (2, 'Canillo', 1),
    (3, 'Encamp', 1),
    (4, 'Escaldes-Engordany', 1),
    (5, 'La Massana', 1),
    (6, 'Ordino', 1),
    (7, 'Sant Julià de Lòria', 1);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (2, 'AL', 'Albania');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (8, 'Tirana', 2),
    (9, 'Durrës', 2),
    (10, 'Vlorë', 2),
    (11, 'Shkodër', 2),
    (12, 'Fier', 2),
    (13, 'Korçë', 2);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (3, 'AT', 'Austria');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (14, 'Vienna', 3),
    (15, 'Lower Austria', 3),
    (16, 'Upper Austria', 3),
    (17, 'Styria', 3),
    (18, 'Tyrol', 3),
    (19, 'Carinthia', 3),
    (20, 'Salzburg', 3),
    (21, 'Vorarlberg', 3),
    (22, 'Burgenland', 3);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (4, 'BE', 'Belgium');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (23, 'Brussels-Capital Region', 4),
    (24, 'Flanders', 4),
    (25, 'Wallonia', 4);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (5, 'BG', 'Bulgaria');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (26, 'Sofia-Capital', 5),
    (27, 'Blagoevgrad', 5),
    (28, 'Burgas', 5),
    (29, 'Dobrich', 5),
    (30, 'Gabrovo', 5),
    (31, 'Haskovo', 5),
    (32, 'Kardzhali', 5),
    (33, 'Kyustendil', 5),
    (34, 'Lovech', 5),
    (35, 'Montana', 5),
    (36, 'Pazardzhik', 5),
    (37, 'Pernik', 5),
    (38, 'Pleven', 5),
    (39, 'Plovdiv', 5),
    (40, 'Razgrad', 5),
    (41, 'Ruse', 5),
    (42, 'Shumen', 5),
    (43, 'Silistra', 5),
    (44, 'Sliven', 5),
    (45, 'Smolyan', 5),
    (46, 'Sofia Province', 5),
    (47, 'Stara Zagora', 5),
    (48, 'Targovishte', 5),
    (49, 'Varna', 5),
    (50, 'Veliko Tarnovo', 5),
    (51, 'Vidin', 5),
    (52, 'Vratsa', 5),
    (53, 'Yambol', 5);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (6, 'HR', 'Croatia');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (54, 'Zagreb', 6),
    (55, 'Krapina-Zagorje', 6),
    (56, 'Sisak-Moslavina', 6),
    (57, 'Karlovac', 6),
    (58, 'Varaždin', 6),
    (59, 'Koprivnica-Križevci', 6),
    (60, 'Bjelovar-Bilogora', 6),
    (61, 'Primorje-Gorski Kotar', 6),
    (62, 'Lika-Senj', 6),
    (63, 'Virovitica-Podravina', 6),
    (64, 'Požega-Slavonia', 6),
    (65, 'Brod-Posavina', 6),
    (66, 'Zadar', 6),
    (67, 'Osijek-Baranja', 6),
    (68, 'Šibenik-Knin', 6),
    (69, 'Vukovar-Syrmia', 6),
    (70, 'Split-Dalmatia', 6),
    (71, 'Istria', 6),
    (72, 'Dubrovnik-Neretva', 6);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (7, 'CY', 'Cyprus');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (73, 'Nicosia', 7),
    (74, 'Famagusta', 7),
    (75, 'Kyrenia', 7),
    (76, 'Larnaca', 7),
    (77, 'Limassol', 7),
    (78, 'Paphos', 7);

INSERT INTO `country` (`id`, `code`, `name`)
VALUES (8, 'CZ', 'Czech Republic');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (79, 'Prague', 8),
    (80, 'Central Bohemia', 8),
    (81, 'South Bohemia', 8),
    (82, 'Plzeň', 8),
    (83, 'Karlovy Vary', 8),
    (84, 'Ústí nad Labem', 8),
    (85, 'Liberec', 8),
    (86, 'Hradec Králové', 8),
    (87, 'Pardubice', 8),
    (88, 'Vysočina', 8),
    (89, 'South Moravia', 8),
    (90, 'Olomouc', 8),
    (91, 'Zlín', 8),
    (92, 'Moravian-Silesian', 8);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (9, 'DK', 'Denmark');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (93, 'Capital Region of Denmark', 9),
    (94, 'Zealand', 9),
    (95, 'Region of Southern Denmark', 9),
    (96, 'Central Denmark Region', 9),
    (97, 'North Denmark Region', 9);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (10, 'EE', 'Estonia');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (98, 'Harju County', 10),
    (99, 'Hiiu County', 10),
    (100, 'Ida-Viru County', 10),
    (101, 'Järva County', 10),
    (102, 'Jõgeva County', 10),
    (103, 'Lääne County', 10),
    (104, 'Lääne-Viru County', 10),
    (105, 'Pärnu County', 10),
    (106, 'Põlva County', 10),
    (107, 'Rapla County', 10),
    (108, 'Saare County', 10),
    (109, 'Tartu County', 10),
    (110, 'Valga County', 10),
    (111, 'Viljandi County', 10),
    (112, 'Võru County', 10);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (11, 'FI', 'Finland');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (113, 'Åland Islands', 11),
    (114, 'South Karelia', 11),
    (115, 'Southern Ostrobothnia', 11),
    (116, 'Southern Savonia', 11),
    (117, 'Kainuu', 11),
    (118, 'Tavastia Proper', 11),
    (119, 'Central Ostrobothnia', 11),
    (120, 'Central Finland', 11),
    (121, 'Northern Ostrobothnia', 11),
    (122, 'Northern Savonia', 11),
    (123, 'Pirkanmaa', 11),
    (124, 'Ostrobothnia', 11),
    (125, 'North Karelia', 11),
    (126, 'Kymenlaakso', 11),
    (127, 'Lapland', 11);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (12, 'FR', 'France');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (128, 'Île-de-France', 12),
    (129, 'Auvergne-Rhône-Alpes', 12),
    (130, 'Bourgogne-Franche-Comté', 12),
    (131, 'Brittany', 12),
    (132, 'Centre-Val de Loire', 12),
    (133, 'Corsica', 12),
    (134, 'Grand Est', 12),
    (135, 'Hauts-de-France', 12),
    (136, 'Normandy', 12),
    (137, 'Nouvelle-Aquitaine', 12),
    (138, 'Occitanie', 12),
    (139, 'Pays de la Loire', 12),
    (140, 'Provence-Alpes-Côte d\'Azur', 12),
    (141, 'Guadeloupe', 12),
    (142, 'Martinique', 12),
    (143, 'French Guiana', 12),
    (144, 'Réunion', 12);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (13, 'DE', 'Germany');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (145, 'Baden-Württemberg', 13),
    (146, 'Bavaria', 13),
    (147, 'Berlin', 13),
    (148, 'Brandenburg', 13),
    (149, 'Bremen', 13),
    (150, 'Hamburg', 13),
    (151, 'Hesse', 13),
    (152, 'Lower Saxony', 13),
    (153, 'Mecklenburg-Vorpommern', 13),
    (154, 'North Rhine-Westphalia', 13),
    (155, 'Rhineland-Palatinate', 13),
    (156, 'Saarland', 13),
    (157, 'Saxony', 13),
    (158, 'Saxony-Anhalt', 13),
    (159, 'Schleswig-Holstein', 13),
    (160, 'Thuringia', 13);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (14, 'GR', 'Greece');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (161, 'Attica', 14),
    (162, 'Central Macedonia', 14),
    (163, 'Central Greece', 14),
    (164, 'Crete', 14),
    (165, 'East Macedonia and Thrace', 14),
    (166, 'Epirus', 14),
    (167, 'Ionian Islands', 14),
    (168, 'North Aegean', 14),
    (169, 'Peloponnese', 14),
    (170, 'South Aegean', 14),
    (171, 'Thessaly', 14),
    (172, 'West Macedonia', 14);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (15, 'HU', 'Hungary');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (173, 'Budapest', 15),
    (174, 'Baranya', 15),
    (175, 'Bács-Kiskun', 15),
    (176, 'Békés', 15),
    (177, 'Borsod-Abaúj-Zemplén', 15),
    (178, 'Csongrád-Csanád', 15),
    (179, 'Fejér', 15),
    (180, 'Győr-Moson-Sopron', 15),
    (181, 'Hajdú-Bihar', 15),
    (182, 'Heves', 15),
    (183, 'Jász-Nagykun-Szolnok', 15),
    (184, 'Komárom-Esztergom', 15),
    (185, 'Nógrád', 15),
    (186, 'Pest', 15),
    (187, 'Somogy', 15),
    (188, 'Szabolcs-Szatmár-Bereg', 15),
    (189, 'Tolna', 15),
    (190, 'Vas', 15),
    (191, 'Veszprém', 15),
    (192, 'Zala', 15);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (16, 'IS', 'Iceland');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (193, 'Capital Region', 16),
    (194, 'Southern Peninsula', 16),
    (195, 'Western Region', 16),
    (196, 'Westfjords', 16),
    (197, 'Northwestern Region', 16),
    (198, 'Northeastern Region', 16),
    (199, 'Eastern Region', 16),
    (200, 'Southern Region', 16);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (17, 'IE', 'Ireland');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (201, 'Leinster', 17),
    (202, 'Munster', 17),
    (203, 'Connacht', 17),
    (204, 'Ulster', 17);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (18, 'IT', 'Italy');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (205, 'Abruzzo', 18),
    (206, 'Basilicata', 18),
    (207, 'Calabria', 18),
    (208, 'Campania', 18),
    (209, 'Emilia-Romagna', 18),
    (210, 'Friuli-Venezia Giulia', 18),
    (211, 'Lazio', 18),
    (212, 'Liguria', 18),
    (213, 'Lombardy', 18),
    (214, 'Marche', 18),
    (215, 'Molise', 18),
    (216, 'Piedmont', 18),
    (217, 'Sardinia', 18),
    (218, 'Sicily', 18),
    (219, 'Trentino-Alto Adige/Südtirol', 18),
    (220, 'Tuscany', 18),
    (221, 'Umbria', 18),
    (222, 'Veneto', 18);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (19, 'LV', 'Latvia');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (223, 'Riga', 19),
    (224, 'Vidzeme', 19),
    (225, 'Latgale', 19),
    (226, 'Kurzeme', 19),
    (227, 'Zemgale', 19);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (20, 'LI', 'Liechtenstein');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (228, 'Balzers', 20),
    (229, 'Eschen', 20),
    (230, 'Gamprin', 20),
    (231, 'Mauren', 20),
    (232, 'Planken', 20),
    (233, 'Ruggell', 20),
    (234, 'Schaan', 20),
    (235, 'Schellenberg', 20),
    (236, 'Triesen', 20),
    (237, 'Triesenberg', 20),
    (238, 'Vaduz', 20);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (21, 'LT', 'Lithuania');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (239, 'Alytus County', 21),
    (240, 'Kaunas County', 21),
    (241, 'Klaipėda County', 21),
    (242, 'Marijampolė County', 21),
    (243, 'Panevėžys County', 21),
    (244, 'Šiauliai County', 21),
    (245, 'Tauragė County', 21),
    (246, 'Telšiai County', 21),
    (247, 'Utena County', 21),
    (248, 'Vilnius County', 21);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (22, 'LU', 'Luxembourg');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (249, 'Luxembourg District', 22),
    (250, 'Diekirch District', 22),
    (251, 'Grevenmacher District', 22);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (23, 'MT', 'Malta');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (252, 'Northern Region', 23),
    (253, 'Southern Region', 23);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (24, 'MC', 'Monaco');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (254, 'La Condamine', 24),
    (255, 'Monaco-Ville', 24),
    (256, 'Monte Carlo', 24);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (25, 'NL', 'Netherlands');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (257, 'Drenthe', 25),
    (258, 'Flevoland', 25),
    (259, 'Friesland', 25),
    (260, 'Gelderland', 25),
    (261, 'Groningen', 25),
    (262, 'Limburg', 25),
    (263, 'North Brabant', 25),
    (264, 'North Holland', 25),
    (265, 'Overijssel', 25),
    (266, 'South Holland', 25),
    (267, 'Utrecht', 25),
    (268, 'Zeeland', 25);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (26, 'NO', 'Norway');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (269, 'Viken', 26),
    (270, 'Innlandet', 26),
    (271, 'Vestfold og Telemark', 26),
    (272, 'Agder', 26),
    (273, 'Rogaland', 26),
    (274, 'Vestland', 26),
    (275, 'Møre og Romsdal', 26),
    (276, 'Trøndelag', 26),
    (277, 'Nordland', 26),
    (278, 'Troms og Finnmark', 26);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (27, 'PL', 'Poland');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (279, 'Lower Silesian Voivodeship', 27),
    (280, 'Kuyavian-Pomeranian Voivodeship', 27),
    (281, 'Lubusz Voivodeship', 27),
    (282, 'Lubusz Voivodeship', 27),
    (283, 'Łódź Voivodeship', 27),
    (284, 'Lesser Poland Voivodeship', 27),
    (285, 'Masovian Voivodeship', 27),
    (286, 'Opole Voivodeship', 27),
    (287, 'Subcarpathian Voivodeship', 27),
    (288, 'Podlaskie Voivodeship', 27);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (28, 'PT', 'Portugal');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (289, 'Aveiro', 28),
    (290, 'Beja', 28),
    (291, 'Braga', 28),
    (292, 'Bragança', 28),
    (293, 'Castelo Branco', 28),
    (294, 'Coimbra', 28),
    (295, 'Évora', 28),
    (296, 'Faro', 28),
    (297, 'Guarda', 28),
    (298, 'Leiria', 28),
    (299, 'Lisbon', 28),
    (300, 'Portalegre', 28),
    (301, 'Porto', 28),
    (302, 'Santarém', 28),
    (303, 'Setúbal', 28),
    (304, 'Viana do Castelo', 28),
    (305, 'Vila Real', 28),
    (306, 'Viseu', 28),
    (307, 'Azores', 28),
    (308, 'Madeira', 28);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (29, 'RO', 'Romania');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (309, 'Alba', 29),
    (310, 'Arad', 29),
    (311, 'Argeș', 29),
    (312, 'Bacău', 29),
    (313, 'Bihor', 29),
    (314, 'Bistrița-Năsăud', 29),
    (315, 'Botoșani', 29),
    (316, 'Brașov', 29),
    (317, 'Brăila', 29),
    (318, 'Caraș-Severin', 29);



INSERT INTO `country` (`id`, `code`, `name`)
VALUES (30, 'SM', 'San Marino');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (319, 'Acquaviva', 30),
    (320, 'Borgo Maggiore', 30),
    (321, 'Chiesanuova', 30),
    (322, 'Domagnano', 30),
    (323, 'Faetano', 30),
    (324, 'Fiorentino', 30),
    (325, 'Montegiardino', 30),
    (326, 'San Marino', 30);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (31, 'RS', 'Serbia');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (327, 'Belgrade', 31),
    (328, 'South Bačka', 31),
    (329, 'North Bačka', 31),
    (330, 'South Banat', 31),
    (331, 'North Banat', 31),
    (332, 'Central Banat', 31),
    (333, 'West Bačka', 31),
    (334, 'Srem', 31);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (32, 'SK', 'Slovakia');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (335, 'Bratislava', 32),
    (336, 'Trnava', 32),
    (337, 'Trenčín', 32),
    (338, 'Nitra', 32),
    (339, 'Žilina', 32),
    (340, 'Banská Bystrica', 32),
    (341, 'Prešov', 32),
    (342, 'Košice', 32);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (33, 'SI', 'Slovenia');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (343, 'Pomurska', 33),
    (344, 'Podravska', 33),
    (345, 'Koroška', 33),
    (346, 'Savinjska', 33),
    (347, 'Posavska', 33),
    (348, 'Zasavska', 33),
    (349, 'Posavska', 33),
    (350, 'Primorsko-notranjska', 33),
    (351, 'Goriška', 33),
    (352, 'Obalno-kraška', 33),
    (353, 'Gorenjska', 33);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (34, 'ES', 'Spain');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (354, 'Andalusia', 34),
    (355, 'Aragon', 34),
    (356, 'Asturias', 34),
    (357, 'Balearic Islands', 34),
    (358, 'Canary Islands', 34),
    (359, 'Cantabria', 34),
    (360, 'Castile and León', 34),
    (361, 'Castile-La Mancha', 34),
    (362, 'Catalonia', 34),
    (363, 'Extremadura', 34);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (35, 'SE', 'Sweden');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (364, 'Blekinge County', 35),
    (365, 'Dalarna County', 35),
    (366, 'Gävleborg County', 35),
    (367, 'Gotland County', 35),
    (368, 'Halland County', 35),
    (369, 'Jönköping County', 35),
    (370, 'Kalmar County', 35),
    (371, 'Kronoberg County', 35),
    (372, 'Norrbotten County', 35),
    (373, 'Örebro County', 35);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (36, 'CH', 'Switzerland');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (374, 'Aargau', 36),
    (375, 'Appenzell Ausserrhoden', 36),
    (376, 'Appenzell Innerrhoden', 36),
    (377, 'Basel-Landschaft', 36),
    (378, 'Basel-Stadt', 36),
    (379, 'Bern', 36),
    (380, 'Fribourg', 36),
    (381, 'Geneva', 36),
    (382, 'Glarus', 36),
    (383, 'Graubünden', 36);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (37, 'UA', 'Ukraine');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (384, 'Vinnytsia Oblast', 37),
    (385, 'Volyn Oblast', 37),
    (386, 'Dnipropetrovsk Oblast', 37),
    (387, 'Donetsk Oblast', 37),
    (388, 'Zhytomyr Oblast', 37),
    (389, 'Zakarpattia Oblast', 37),
    (390, 'Zaporizhzhia Oblast', 37),
    (391, 'Ivano-Frankivsk Oblast', 37),
    (392, 'Kirovohrad Oblast', 37),
    (393, 'Kyiv Oblast', 37);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (38, 'GB', 'United Kingdom');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (394, 'England', 38),
    (395, 'Northern Ireland', 38),
    (396, 'Scotland', 38),
    (397, 'Wales', 38);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (39, 'VA', 'Vatican City');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (398, 'Vatican City', 39);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (40, 'BR', 'Brazil');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (399, 'Acre', 40),
    (400, 'Alagoas', 40),
    (401, 'Amapá', 40),
    (402, 'Amazonas', 40),
    (403, 'Bahia', 40),
    (404, 'Ceará', 40),
    (405, 'Distrito Federal', 40),
    (406, 'Espírito Santo', 40),
    (407, 'Goiás', 40),
    (408, 'Maranhão', 40),
    (409, 'Mato Grosso', 40),
    (410, 'Mato Grosso do Sul', 40),
    (411, 'Minas Gerais', 40),
    (412, 'Pará', 40),
    (413, 'Paraíba', 40),
    (414, 'Paraná', 40),
    (415, 'Pernambuco', 40),
    (416, 'Piauí', 40),
    (417, 'Rio de Janeiro', 40),
    (418, 'Rio Grande do Norte', 40),
    (419, 'Rio Grande do Sul', 40),
    (420, 'Rondônia', 40),
    (421, 'Roraima', 40),
    (422, 'Santa Catarina', 40),
    (423, 'São Paulo', 40),
    (424, 'Sergipe', 40),
    (425, 'Tocantins', 40);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (41, 'CA', 'Canada');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (426, 'Alberta', 41),
    (427, 'British Columbia', 41),
    (428, 'Manitoba', 41),
    (429, 'New Brunswick', 41),
    (430, 'Newfoundland and Labrador', 41),
    (431, 'Northwest Territories', 41),
    (432, 'Nova Scotia', 41),
    (433, 'Nunavut', 41),
    (434, 'Ontario', 41),
    (435, 'Prince Edward Island', 41),
    (436, 'Quebec', 41),
    (437, 'Saskatchewan', 41),
    (438, 'Yukon', 41);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (42, 'IN', 'India');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (439, 'Andaman and Nicobar Islands', 42),
    (440, 'Andhra Pradesh', 42),
    (441, 'Arunachal Pradesh', 42),
    (442, 'Assam', 42),
    (443, 'Bihar', 42),
    (444, 'Chandigarh', 42),
    (445, 'Chhattisgarh', 42),
    (446, 'Dadra and Nagar Haveli and Daman and Diu', 42),
    (447, 'Delhi', 42),
    (448, 'Goa', 42),
    (449, 'Gujarat', 42),
    (450, 'Haryana', 42),
    (451, 'Himachal Pradesh', 42),
    (452, 'Jammu and Kashmir', 42),
    (453, 'Jharkhand', 42),
    (454, 'Karnataka', 42),
    (455, 'Kerala', 42),
    (456, 'Ladakh', 42),
    (457, 'Lakshadweep', 42),
    (458, 'Madhya Pradesh', 42),
    (459, 'Maharashtra', 42),
    (460, 'Manipur', 42),
    (461, 'Meghalaya', 42),
    (462, 'Mizoram', 42),
    (463, 'Nagaland', 42),
    (464, 'Odisha', 42),
    (465, 'Puducherry', 42),
    (466, 'Punjab', 42),
    (467, 'Rajasthan', 42),
    (468, 'Sikkim', 42),
    (469, 'Tamil Nadu', 42),
    (470, 'Telangana', 42),
    (471, 'Tripura', 42),
    (472, 'Uttar Pradesh', 42),
    (473, 'Uttarakhand', 42),
    (474, 'West Bengal', 42);


INSERT INTO `country` (`id`, `code`, `name`)
VALUES (43, 'US', 'United States');

INSERT INTO `state` (`id`, `name`, `country_id`)
VALUES
    (475, 'Alabama', 43),
    (476, 'Alaska', 43),
    (477, 'Arizona', 43),
    (478, 'Arkansas', 43),
    (479, 'California', 43),
    (480, 'Colorado', 43),
    (481, 'Connecticut', 43),
    (482, 'Delaware', 43),
    (483, 'Florida', 43),
    (484, 'Georgia', 43),
    (485, 'Hawaii', 43),
    (486, 'Idaho', 43),
    (487, 'Illinois', 43),
    (488, 'Indiana', 43),
    (489, 'Iowa', 43),
    (490, 'Kansas', 43),
    (491, 'Kentucky', 43),
    (492, 'Louisiana', 43),
    (493, 'Maine', 43),
    (494, 'Maryland', 43),
    (495, 'Massachusetts', 43),
    (496, 'Michigan', 43),
    (497, 'Minnesota', 43),
    (498, 'Mississippi', 43),
    (499, 'Missouri', 43),
    (500, 'Montana', 43),
    (501, 'Nebraska', 43),
    (502, 'Nevada', 43),
    (503, 'New Hampshire', 43),
    (504, 'New Jersey', 43),
    (505, 'New Mexico', 43),
    (506, 'New York', 43),
    (507, 'North Carolina', 43),
    (508, 'North Dakota', 43),
    (509, 'Ohio', 43),
    (510, 'Oklahoma', 43),
    (511, 'Oregon', 43),
    (512, 'Pennsylvania', 43),
    (513, 'Rhode Island', 43),
    (514, 'South Carolina', 43),
    (515, 'South Dakota', 43),
    (516, 'Tennessee', 43),
    (517, 'Texas', 43),
    (518, 'Utah', 43),
    (519, 'Vermont', 43),
    (520, 'Virginia', 43),
    (521, 'Washington', 43),
    (522, 'West Virginia', 43),
    (523, 'Wisconsin', 43),
    (524, 'Wyoming', 43);