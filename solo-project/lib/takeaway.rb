require_relative "menu"
require_relative "order"

class Takeaway
  attr_reader :menu
  attr_reader :order
  def initialize(menu = Menu.new)
    @menu = menu
    @order = ""
  end

  def show_menu
    @menu.view
  end

  def create_order(order = Order.new)
    @order << order.view_order
  end

  def final_order(order)
    "You have ordered: #{@order}. The final price is £#{"%.2f" % order.calculate_total}"
  end
end
