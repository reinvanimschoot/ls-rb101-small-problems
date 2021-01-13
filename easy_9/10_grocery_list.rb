=begin

Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of
the correct number of each fruit.

Example:

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

=end

def buy_fruit(grocery_list)
  groceries = []

  grocery_list.each do |(fruit, amount)|
    amount.times { groceries << fruit }
  end

  groceries
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
       ["apples", "apples", "apples", "orange", "bananas", "bananas"]
