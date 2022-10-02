# Database Creation Walkthrough

## Required Information
Ryder has provided a small amount of information for each dashboard that he wants us to create. We will use this to help us create the database.

1. Orders Data
  - Item Name
  - Item Price
  - Quantity
  - Customer Name
  - Delivery Addresses

2. Inventory Data
  - Ingredients used in each item
  - Quantity based on the size of the pizza
  - Existing stock levels

3. Staffing Data
  - Schedule for employees
  - Staffing cost per day & per employee
  - Total hours worked for each day

## Database Design

### 1. Orders Table

I wanted to start with the orders table, as this is the most vital section of the whole database. I've added all the information needed to create the orders table, but as you may realize, there is going to be a lot of repitition. If we have an order that contains multiple items, there will be a ton of redundancy in the customer information.

![mockup1](https://user-images.githubusercontent.com/104656507/193478546-0a958702-215a-41af-adf7-11579ca9e850.png)

So, we need to separate the current orders table into a few tables. One strictly for orders, one for the customers' name, and another for the customers' addresses. The reason for a separate addresses table is incase a customer has multiple addresses that they frequently deliver to, we won't have redundancy in the customer table.

![mockup2](https://user-images.githubusercontent.com/104656507/193478754-dc8066ed-fb63-4f97-93ab-d1fc5724cb2d.png)

### 2. Inventory Table

Next, we should pull out the item information (item_name, item_cat, item_size, item_price) from the orders table. This too will become redundant and we want to let Ryder have the ability to change the name, price, and size easily by letting the items have their own table. Also, we know that each item has to have a recipe, so we should probably create a recipe table that links to the item table incase Ryder needs to change the recipe on anything. Then we need to create two more tables. One that tracks the ingredients in each recipe, and one that tracks the inventory of all ingredients.

![mockup3](https://user-images.githubusercontent.com/104656507/193479228-8cf058e0-495b-4c57-b2aa-cc39a9c001b5.png)

### 3. Staffing Table

Ryder would like the ability to see total cost of each employee on any given day and see the total cost of an item with the staff included. So, we need to create a few tables to make sure we normalize the database as best as we can. We know we will add a staff table that has the staff information and we know we need to have a shift table to show when people work what shifts. The final piece of the puzzle is actually a rotation table. Ryder has informed us that the staffing hours are straightforward. There's a morning shift, and an evening shift. A lot of the times, the staff will work both morning and lunch with a break during the down time where he usually comes in to check on everything. So, we can add another table that has all the shifts for each day of the week. We will call this the rotations table.

![image](https://user-images.githubusercontent.com/104656507/193479617-026348b1-93c6-41c8-a089-9a32e9b93c87.png)

### Clean-up

The last thing I want to do is check the order of columns for each table and make sure they're in a somewhat logical order. This is what I came up with.

![mockup4](https://user-images.githubusercontent.com/104656507/193479730-f971110a-158a-48ed-9830-eee684899aa7.png)
