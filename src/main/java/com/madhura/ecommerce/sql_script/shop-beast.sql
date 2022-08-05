
DROP SCHEMA IF EXISTS `shop-beast`;

CREATE SCHEMA `shop-beast`;
USE `shop-beast` ;

CREATE TABLE IF NOT EXISTS `shop-beast`.`product_category` (
                                                                         `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
                                                                         `category_name` VARCHAR(255) NULL DEFAULT NULL,
                                                                         PRIMARY KEY (`id`))
    ENGINE=InnoDB
    AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS `shop-beast`.`product` (
                                                                `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
                                                                `sku` VARCHAR(255) DEFAULT NULL,
                                                                `name` VARCHAR(255) DEFAULT NULL,
                                                                `description` VARCHAR(500) DEFAULT NULL,
                                                                `unit_price` DECIMAL(13,2) DEFAULT NULL,
                                                                `image_url` VARCHAR(500) DEFAULT NULL,
                                                                `active` BIT DEFAULT 1,
                                                                `units_in_stock` INT(11) DEFAULT NULL,
                                                                `date_created` DATETIME(6) DEFAULT NULL,
                                                                `last_updated` DATETIME(6) DEFAULT NULL,
                                                                `category_id` BIGINT(20) NOT NULL,
                                                                PRIMARY KEY (`id`),
                                                                KEY `fk_category` (`category_id`),
                                                                CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
)
    ENGINE=InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Categories
-- -----------------------------------------------------
INSERT INTO product_category(category_name) VALUES ('Laptop');
INSERT INTO product_category(category_name) VALUES ('Graphic Cards');
INSERT INTO product_category(category_name) VALUES ('Monitors');
INSERT INTO product_category(category_name) VALUES ('Softwares');

-- -----------------------------------------------------
-- Laptops
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LAPTOP-TECH-1000', 'The IdeaPad 3 (15, AMD)', 'The IdeaPad 3 (15, AMD) is an entry-level laptop powerful enoug this a great everyday companion.', 'https://www.laptop.lk/wp-content/uploads/2020/12/44-1.jpg', 1, 100, 14.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LAPTOP-TECH-1001', 'ASUS ROG SCAR 15 RYZEN 9', 'Compete at the highest level of Windows 1rena.', 'https://i0.wp.com/laptopmedia.com/wp-content/uploads/2021/01/05_Scar_15-scaled-e1610551491628.jpg?fit=2086%2C1465&ssl=1', 1, 100, 20.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LAPTOP-TECH-1002', 'MSI VECTOR GP66 12UGS 12TH GEN I7', 'The unit in review today  GPU, 3or FHD 144 Hz display, or Core i7-12700H instead.', 'https://media.ldlc.com/r1600/ld/products/00/05/92/48/LD0005924821_1_0005924832.jpg', 1, 100, 14.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LAPTOP-TECH-1003', 'ASUS ZENBOOK PRO 15 UX535LI I7', 'ZenBook Pro 15 is engineered for porealize your creative vision.', 'https://i3.ytimg.com/vi/K9O7YV5gJEM/maxresdefault.jpg', 1, 100, 13.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LAPTOP-TECH-1004', 'ASUS ROG SCAR 15 2022 I7 12TH GEN', 'Draw more frames and win more gaTX™ Laptop GPU with up to a 150W max TGP. t.', 'https://notebook.lk/wp-content/uploads/2022/05/5-4.jpg', 1, 100, 18.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('LAPTOP-TECH-1005', 'HP ZBOOK POWER G8 RTX A2000 4GB I7 11TH GEN', 'The desktop-caliber pe on the move. Extreme power has never been so mobile.', 'https://www.hp.com/gb-en/shop/Html/Merch/Images/c07611892_1750x1285.jpg', 1, 100, 23.99, 1, NOW());

-- -----------------------------------------------------
-- Graphic Cards
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('GRAPHIC_CARDS-1000', 'MSI RX 6900 XT GAMING X TRIO 16G', 'NVIDIA Ampere Streaming Multiprocessors: The building blocks for the world’g performance.', 'https://tpucdn.com/review/msi-radeon-rx-6900-xt-gaming-x-trio/images/title.jpg', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('GRAPHIC_CARDS-1001', 'ASUS TUF GAMING GEFORCE RTX 3080TI 12GB', 'NVIDIA Ampere Streaming Multiprocessors: The building blocks for the g performance.', 'https://storage-asset.msi.com/global/picture/news/2021/vga/rx6900-20210201-2.jpg', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('GRAPHIC_CARDS-1002', 'MSI RTX 3070TI SUPRIM 8GB', 'NVIDIA Ampere Streaming Multiprocessors: The building blocks for the world’s fastesg performance.', 'https://www.guru3d.com/index.php?ct=news&action=file&id=41366', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('GRAPHIC_CARDS-1003', 'INNO3D RTX 3060TI ICHILL X3 RED LHR 8GB', 'NVIDIA Ampere Streaming Multiprocessors: The building blocks for the g performance.', 'https://images.anandtech.com/doci/16303/6900-XT-Front_678x452.jpg', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('GRAPHIC_CARDS-1004', 'ASUS STRIX GAMING GEFORCE RTX 3070 8GB', 'NVIDIA Ampere Streaming Multiprocessors: The building blocks for the wg performance.', 'https://tweakers.net/i/ReEvAZLhwktbHgQX2-ThxUrGn04=/i/2003959988.jpeg', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('GRAPHIC_CARDS-1005', 'ASUS STRIX GAMING RADEON RX6700XT 12GB', 'NVIDIA Ampere Streaming Multiprocessors: The building blocks for the wg performance.', 'https://www.asus.com/media/global/products/THZZDfNZNurcxGoc/P_setting_fff_1_90_end_600.png', 1, 100, 18.99, 2, NOW());

-- -----------------------------------------------------
-- Monitors
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MONITORS-1000', 'ASUS ROG STRIX XG32VC 2560 X 1440 170HZ 1MS', '35 inch 1800R curved gaming monitor with fast 100Hz refresh rate and motion blur', 'https://static.techspot.com/articles-info/1566/images/S-1.jpg', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MONITORS-1001', 'SAMSUNG 49" ODYSSEY C49G95T QLED', '35 inch 1800R curved gaming monitor with fast 100Hz refresh rate designed fn blur', 'https://microless.com/cdn/product_description/3874564_1582572651.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MONITORS-1002', 'MI CURVED GAMING MONITOR 34" 144HZ', '35 inch 1800R curved gaming monitor with fast 100Hz refresh rate designedn blur', 'https://static.techspot.com/articles-info/1566/images/F-13.jpg', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MONITORS-1003', 'ASUS TUF GAMING VG279QM 27" IPS', '35 inch 1800R curved gaming monitor with fast 100Hz refresh rate designed fon blur', 'https://www.notebookcheck.net/fileadmin/_processed_/1/a/csm_xg35vq_4_0bba9ea972.jpg', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MONITORS-1004', 'ASUS ROG STRIX XG49VQ SUPER ULTRA-WIDE', '35 inch 1800R curved gaming monitor with fast 100Hz refresh rate desimotion blur', 'https://media.wemena.com/productlarge/71107_42115_d0e7d6da1bdecf92b5ed4b12ca3c15a9-hi.jpg?v1', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('MONITORS-1005', 'ASUS ROG STRIX XG35VQ (3440X1440)', '35 inch 1800R curved gaming monitor with fast 100Hz refresh rate designed n blur', 'https://images.anandtech.com/doci/12074/asus_rog_strix_xg32vq.jpg', 1, 100, 17.99, 3, NOW());

-- -----------------------------------------------------
-- Softwares
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SOFTWARES-1000', 'POS Software windows', 'AT es POS System facilitate to achieve all kind of retail business. POS system including following features which are easy', 'http://image.lankabuysell.com/ad/1604652/8cd35432b3bdf965-POS-Software-windows.jpg', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SOFTWARES-1001', 'Avast Cleanup Premium 2022 1 Year 1 PC (Global)', 'The ultimate PC tuneup. Speed up and clean your Poblems', 'https://www.digitalgoods.lk/wp-content/uploads/2022/01/Avast-Ultimate-Sri-Lanka-DigitalGoods.lk-01.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SOFTWARES-1002', 'Avast Premium Security 2022 1 Device 2 Years (Global)', 'The ultimate PC tuneup. Speed up and clean ing problems', 'https://www.digitalgoods.lk/wp-content/uploads/2022/01/avast-cleanup-premium-2021.jpg', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SOFTWARES-1003', 'Avast Ultimate 2022 10 Device 3 Year (Global)', 'The ultimate PC tuneup. Speed up and clean your PC,lems', 'https://www.digitalgoods.lk/wp-content/uploads/2021/03/Avast-Premium-Security-Sri-Lanka-DigitalGoods.lk_.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SOFTWARES-1004', 'Intuit QuickBooks Enterprise Accountant 2018 [Pre-Activated]', 'More than just antivirus, Avast Premon for all of your computers.', 'https://www.mrudukanga.lk/wp-content/uploads/2019/01/mcafee_image_575x280.jpg', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SOFTWARES-1005', 'Kaspersky Internet Security 1 Device 1 Year Subscription', 'More than just antivirus, Avast Premium or all of your computers.', 'https://kasperskybd.com/wp-content/uploads/2022/02/Kaspersky-Internet-Security-1-User.jpg', 1, 100, 16.99, 4, NOW());
