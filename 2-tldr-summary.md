# Summary

In this project, I used mock data to build a database for a local pizzeria, query specific business needs, and create dashboards using Tableau.

## Relational Database Model

The customer wanted to be able to see orders, customer information, staffing information, and inventory. With that information, I created the database model below. This helped me to visualize what was needed before I created the database in MySQL. For a more detailed view of the creation, please go [here](https://github.com/darionruiz/SQL-Database-Project/tree/personal_projects/3-database-creation).

![mockup4](https://user-images.githubusercontent.com/104656507/193480515-6b345d36-70f0-4759-b404-c09fe0f1548f.png)

## Tables

I created mock data to use for this project so I could have some tangible data to work with when querying and creating the dashboards. To see the tables, please go [here](https://github.com/darionruiz/SQL-Database-Project/tree/personal_projects/4-tables).

## Queries

Once the database was built in MySQL, I created three queries to get the information needed for each dashboard that the customer wanted. The requirements for each dashboard are:

1. Order Activity Dashboard
- Total orders, sales, items
- Average order value
- Sales by category
- Top selling items
- Orders by hour
- Sales by hour
- Orders by address
- Orders by delivery/pick-up

2. Inventory Management Dashboard
- Overall cost of all inventory 
- Total quantity & cost of each ingredient in inventory
- Calculated cost of each pizza
- Percentage of stock remaining by ingredient

3. Staff Cost Dashboard
- Total staff cost
- Total hours worked for the day
- Total hours worked by employee
- Cost per staff member

To see the queries I created and the results of each query, please go [here](https://github.com/darionruiz/SQL-Database-Project/tree/personal_projects/5-queries-and-results).

## Dashboards

After I had successfully queried the information I needed, I started to work on the dashboards in Tableau. This is the end result for each required dashboard that the customer asked for. For a more interactive experience, please click link provided under each screenshot.

### Daily Orders Dashboard

![Daily Orders Dashboard](https://user-images.githubusercontent.com/104656507/193480911-a287432f-0bcd-4d0b-950c-c6d9e2d01d6c.png)
[Tableau Public Link](https://public.tableau.com/app/profile/darion1928/viz/DailyOrders_16647393258850/OrdersDashboard)

### Inventory Dashboard

![Inventory Dashboard](https://user-images.githubusercontent.com/104656507/193480953-68758614-1c21-4b70-8e50-78843644b1ff.png)
[Tableau Public Link](https://public.tableau.com/app/profile/darion1928/viz/Inventory_16647390584700/IngredientsDashboard)

### Staffing Cost Dashboard

![Staffing Cost Dashboard](https://user-images.githubusercontent.com/104656507/193480973-0930a72f-27cb-4222-8689-bab3c6a54e67.png)
[Tableau Public Link](https://public.tableau.com/app/profile/darion1928/viz/StaffingCost/StaffingCost)
