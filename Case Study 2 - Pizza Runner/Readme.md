# :pizza: Case Study 2 - Pizza Runner

## Introduction
> Did you know that over 115 million kilograms of pizza is consumed daily worldwide??? (Well according to Wikipedia anyway…)

> Danny was scrolling through his Instagram feed when something really caught his eye - “80s Retro Styling and Pizza Is The Future!”

? Danny was sold on the idea, but he knew that pizza alone was not going to help him get seed funding to expand his new Pizza Empire - so he had one more genius idea to combine with it - he was going to Uberize it - and so Pizza Runner was launched!

> Danny started by recruiting “runners” to deliver fresh pizza from Pizza Runner Headquarters (otherwise known as Danny’s house) and also maxed out his credit card to pay freelance developers to build a mobile app to accept orders from customers.

 # **:file_folder: Datasets**
 Danny has shared with you 6 key datasets for this case study:
 
### **1. RUNNERS**

 <details><summary>
 View Table
 </summary>
The runners table shows the registration_date for each new runner

| runner_id	| registration_date |
| ----------| ----------------- |
| 1	        | 2021-01-01
| 2	        | 2021-01-03
| 3	        | 2021-01-08
| 4	        | 2021-01-15

</details>

### **2. CUSTOMER ORDERS**

<details><summary>
 View Table
 </summary>
Customer pizza orders are captured in the customer_orders table with 1 row for each individual pizza that is part of the order.

The pizza_id relates to the type of pizza which was ordered whilst the exclusions are the ingredient_id values which should be removed from the pizza and the extras are the ingredient_id values which need to be added to the pizza.

Note that customers can order multiple pizzas in a single order with varying exclusions and extras values even if the pizza is the same type!

The exclusions and extras columns will need to be cleaned up before using them in your queries.

| order_id	 | customer_id	| pizza_id	| exclusions	| extras	| order_time|
| ----------| ------------| ---------| -----------| -------| ----------|
| 1	        | 101	        | 1	 	 	   |            |        | 2021-01-01 18:05:02
| 2	        | 101	        | 1	 	    	|            |        | 2021-01-01 19:00:52
| 3	        | 102	        | 1        |            | 	 	 	  | 2021-01-02 23:51:23
| 3	        | 102	        | 2	 	     |            | NaN	   | 2021-01-02 23:51:23
| 4	        | 103	        | 1       	| 4          | 	 	    | 2021-01-04 13:23:46
| 4	        | 103	        | 1       	| 4	         |       	| 2021-01-04 13:23:46
| 4	| 103	| 2	| 4	|  	| 2021-01-04 13:23:46
| 5	| 104	| 1	| null	| 1	| 2021-01-08 21:00:29
| 6	| 101	| 2	| null	| null	| 2021-01-08 21:03:13
| 7	| 105	| 2	| null	| 1	| 2021-01-08 21:20:29
| 8	| 102	| 1	| null	| null	| 2021-01-09 23:54:33
| 9	| 103	| 1	| 4	| 1, 5	| 2021-01-10 11:22:59
| 10	| 104	| 1	| null	| null	| 2021-01-11 18:34:49
| 10	| 104	| 1	| 2, 6	| 1, 4	| 2021-01-11 18:34:49
