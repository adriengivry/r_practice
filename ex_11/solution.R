# Write a program that simulate a pizza business with 3 customers.
# The customer ordering, paying and tipping logic is already written.
# You have to write several functions:
# - customer_order_pizzas
# - customer_pay_pizzas
# - customer_give_tips
# See the functions below for more information

PIZZA_SELLING_PRICE     = 15
INITIAL_BALANCE         = 1000
PIZZA_PREPARATION_COST  = 5

balance = INITIAL_BALANCE
last_order_price = 0

# This function is called whenever a customer order one or more pizzas
# Ordering a pizza has a cost for the business, because you have to
# pay for the preparation cost
# @amount: amount of pizzas ordered
customer_order_pizzas = function(amount)
{
  balance <<- balance - PIZZA_PREPARATION_COST * amount
}

# This function is called whenever a customer pay for one or more pizzas
# Getting paid for a pizza increase the balance of the business
# @amount: amount of pizzas to get paid for
customer_pay_pizzas = function(amount)
{
  last_order_price <<- PIZZA_SELLING_PRICE * amount
  balance <<- balance + last_order_price
}

# This function is called whenever a customer tip a percentage for the meal
# @tips: percentage of the meal (From 0 to 100) the customer is tipping
customer_give_tips = function(tips)
{
  balance <<- balance + ((tips / 100) * last_order_price)
}

show_balance = function()
{
  print(paste("Current balance:", balance))
}

show_balance()
customer_order_pizzas(2)
customer_pay_pizzas(2)
customer_give_tips(15)
show_balance()
customer_order_pizzas(3)
customer_pay_pizzas(3)
customer_give_tips(10)
show_balance()
customer_order_pizzas(1)
customer_pay_pizzas(1)
customer_give_tips(20)
show_balance()
customer_order_pizzas(2)
customer_pay_pizzas(2)
customer_give_tips(0)
show_balance()

print("Expected end balance: 1092")