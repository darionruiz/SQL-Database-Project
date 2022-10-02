-- This script is the build for the database.

CREATE TABLE `orders` (
    `row_id` int  NOT NULL ,
    `order_id` varchar(10)  NOT NULL ,
    `order_time` datetime  NOT NULL ,
    `item_id` varchar(10)  NOT NULL ,
    `quantity` int  NOT NULL ,
    `cust_id` int  NOT NULL ,
    `delivery` boolean  NOT NULL ,
    `add_id` int  NOT NULL ,
    PRIMARY KEY (
        `row_id`
    )
);

CREATE TABLE `customers` (
    `cust_id` int  NOT NULL ,
    `cust_firstname` varchar(50)  NOT NULL ,
    `cust_lastname` varchar(50)  NOT NULL ,
    PRIMARY KEY (
        `cust_id`
    )
);

CREATE TABLE `addresses` (
    `add_id` int  NOT NULL ,
    `address1` varchar(200)  NULL ,
    `address2` varchar(200)  NOT NULL ,
    `city` varchar(50)  NOT NULL ,
    `zipcode` varchar(20)  NOT NULL ,
    PRIMARY KEY (
        `add_id`
    )
);

CREATE TABLE `item` (
    `item_id` varchar(10)  NOT NULL ,
    `sku` varchar(20)  NOT NULL ,
    `item_name` varchar(50)  NOT NULL ,
    `item_category` varchar(50)  NOT NULL ,
    `item_size` varchar(50)  NOT NULL ,
    `item_price` decimal(5,2)  NOT NULL ,
    PRIMARY KEY (
        `item_id`
    )
);

CREATE TABLE `recipes` (
    `row_id` int  NOT NULL ,
    `recipe_id` varchar(20)  NOT NULL ,
    `ing_id` varchar(10)  NOT NULL ,
    `quantity` int  NOT NULL ,
    PRIMARY KEY (
        `row_id`
    )
);

CREATE TABLE `ingredients` (
    `ing_id` varchar(10)  NOT NULL ,
    `ing_name` varchar(200)  NOT NULL ,
    `ing_weight` int  NOT NULL ,
    `ing_meas` varchar(20)  NOT NULL ,
    `ing_price` decimal(5,2)  NOT NULL 
);

CREATE TABLE `inventory` (
    `inv_id` int  NOT NULL ,
    `item_id` varchar(20)  NOT NULL ,
    `quantity` int  NOT NULL ,
    PRIMARY KEY (
        `inv_id`
    )
);

CREATE TABLE `rotations` (
    `row_id` int  NOT NULL ,
    `rota_id` varchar(20)  NOT NULL ,
    `date` datetime  NOT NULL ,
    `shift_id` varchar(20)  NOT NULL ,
    `staff_id` varchar(20)  NOT NULL ,
    PRIMARY KEY (
        `row_id`
    )
);

CREATE TABLE `staff` (
    `staff_id` varchar(20)  NOT NULL ,
    `first_name` varchar(50)  NOT NULL ,
    `last_name` varchar(50)  NOT NULL ,
    `position` varchar(100)  NOT NULL ,
    `hourly_rate` decimal(5,2)  NOT NULL ,
    PRIMARY KEY (
        `staff_id`
    )
);

CREATE TABLE `shifts` (
    `shift_id` varchar(20)  NOT NULL ,
    `day_of_week` varchar(10)  NOT NULL ,
    `start_time` time  NOT NULL ,
    `end_time` time  NOT NULL ,
    PRIMARY KEY (
        `shift_id`
    )
);

ALTER TABLE `customers` ADD CONSTRAINT `fk_customers_cust_id` FOREIGN KEY(`cust_id`)
REFERENCES `orders` (`cust_id`);

ALTER TABLE `addresses` ADD CONSTRAINT `fk_addresses_add_id` FOREIGN KEY(`add_id`)
REFERENCES `orders` (`add_id`);

ALTER TABLE `item` ADD CONSTRAINT `fk_item_item_id` FOREIGN KEY(`item_id`)
REFERENCES `orders` (`item_id`);

ALTER TABLE `recipes` ADD CONSTRAINT `fk_recipes_recipe_id` FOREIGN KEY(`recipe_id`)
REFERENCES `item` (`sku`);

ALTER TABLE `ingredients` ADD CONSTRAINT `fk_ingredients_ing_id` FOREIGN KEY(`ing_id`)
REFERENCES `recipes` (`ing_id`);

ALTER TABLE `inventory` ADD CONSTRAINT `fk_inventory_item_id` FOREIGN KEY(`item_id`)
REFERENCES `recipes` (`ing_id`);

ALTER TABLE `rotations` ADD CONSTRAINT `fk_rotations_date` FOREIGN KEY(`date`)
REFERENCES `orders` (`order_time`);

ALTER TABLE `staff` ADD CONSTRAINT `fk_staff_staff_id` FOREIGN KEY(`staff_id`)
REFERENCES `rotations` (`staff_id`);

ALTER TABLE `shifts` ADD CONSTRAINT `fk_shifts_shift_id` FOREIGN KEY(`shift_id`)
REFERENCES `rotations` (`shift_id`);
