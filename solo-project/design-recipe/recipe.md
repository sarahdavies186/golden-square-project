# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total.

Use the twilio-ruby gem to implement this next one. You will need to use doubles too.

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

```

```

_Also design the interface of each class in more detail._

```ruby
class Takeaway 

  def initialize() 
  end

  def show_menu(menu)
  end

  def create_order(order)
  end

  def view_total
  end
end

class Menu 

  menu = {"Onion Bhaji" => 4.50, "Sag Aloo" => 4.75, "Peshwari Naan" => 3.60, "Pilau Rice" => 3.50, "Vegetable Tikka Masala" => 9.50, "Vegetable Passand" => 9.50}

  def initialize#initalize with menu hash
  @menu
  end

  def view 
    #view the menu
  end
end

class Order
  def initialize
    # ...
  end

  def add_item(dish, quantity) 
  end

  def remove_item(dish, quantity)
    
  end
  
  def calculate_total 
  end
end


```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby

#1 shows the menu items
takeaway = Takeaway.new
expect(takeaway.show_menu).to eq menu

#2 create an order with 1 item
takeaway = Takeaway.new
order_1 = Order.new
order_1.add("Onion Bhaji, 1")
expect(takeaway.create_order).to eq total

#3 create an order with multiple items
takeaway = Takeaway.new
order_1 = Order.new
order_1.add("Onion Bhaji", 1)
order_2.add("Vegetable Tikka Masala", 1)
expect(takeaway.create_order).to eq total

#4 view reciept


```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
# Menu
#1 View the menu

# Order
#1 Add an item

#2 Remove an item

#3 Calculate the total

#Takeaway
#1 View the menu

#2 View the total
```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._