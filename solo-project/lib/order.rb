require_relative "menu"

class Order
  def initialize(menu = Menu.new)
    @menu = menu
    @order = {}
  end

  def add_item(dish, quantity)
    @order[dish] = quantity
  end

  def remove_item(dish, quantity)
    @order.delete(dish)
  end

  def view_order
    @order.map { |dish, quantity| "#{quantity} x #{dish}" }.join("\n")
  end

  def calculate_total
    @order.map { |dish, quantity| @menu.menu[dish] * quantity.to_f }.inject(:+)
  end
end

#menu price * order quantity
