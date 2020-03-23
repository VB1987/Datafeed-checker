CREATE TABLE `baseProducts` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `EAN` bigint NOT NULL,
  `product_id` int NOT NULL,
  `product_name` varchar(255),
  `product_description` varchar(255),
  `product_brand` varchar(255),
  `product_price` float,
  `product_discount` float,
  `product_URL` varchar(255),
  `product_image` varchar(255)
);

CREATE TABLE `products` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `EAN` bigint NOT NULL,
  `name` varchar(255),
  `description` varchar(255),
  `brand` varchar(255),
  `price` float,
  `discount` float,
  `deliveryTime` varchar(255),
  `deliveryCosts` float,
  `URL` varchar(255),
  `image` varchar(255),
  `stock` int,
  `prescription` bool,
  `category_path` varchar(255),
  `revision` int
);

CREATE TABLE `productHistory` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `EAN` bigint,
  `name` varchar(255)
);

CREATE TABLE `categories` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `parent` int,
  `name` varchar(255)
);

CREATE TABLE `categories_products` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `category_id` int NOT NULL
);

CREATE TABLE `baseProducts_products` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `baseProducts_id` int NOT NULL
);

ALTER TABLE `categories_products` ADD FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `categories_products` ADD FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

ALTER TABLE `baseProducts_products` ADD FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `baseProducts_products` ADD FOREIGN KEY (`baseProducts_id`) REFERENCES `baseProducts` (`id`);
