require "takeaway"
require "menu"
require "order"

RSpec.describe "integration" do
  it "shows the menu items and prices" do
    menu = Menu.new
    takeaway = Takeaway.new(menu)
    expect(
      takeaway.show_menu,
    ).to eq "Onion Bhaji, £4.50\nSag Aloo, £4.75\nPeshwari Naan, £3.60\nPilau Rice, £3.50\nVegetable Tikka Masala, £9.50\nVegetable Passand, £9.50"
  end

  it "creates a new order" do
    menu = Menu.new
    order_1 = Order.new
    order_1.add_item("Vegetable Tikka Masala", "1")
    order_1.add_item("Sag Aloo", "2")
    order_1.view_order
    takeaway = Takeaway.new(menu)
    takeaway.create_order(order_1)
    expect(
      takeaway.final_order(order_1),
    ).to eq "You have ordered: 1 x Vegetable Tikka Masala\n2 x Sag Aloo. The final price is £19.00"
  end
end
