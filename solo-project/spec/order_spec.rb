require "order"

RSpec.describe Order do
  it "adds an item to the order" do
    order_1 = Order.new
    order_1.add_item("Onion Bhaji", "1")
    expect(order_1.view_order).to eq "1 x Onion Bhaji"
  end

  it "adds multiple items to the order" do
    order_1 = Order.new
    order_1.add_item("Onion Bhaji", "2")
    order_1.add_item("Vegetable Passand", "1")
    expect(order_1.view_order).to eq "2 x Onion Bhaji\n1 x Vegetable Passand"
  end

  xit "adds the quantity to order if same item added again" do
    order_1 = Order.new
    order_1.add_item("Onion Bhaji", "1")
    order_1.add_item("Onion Bhaji", "5")
    expect(order_1.view_order).to eq "6 x Onion Bhaji"
  end

  it "removes the item and quanity from order" do
    order_1 = Order.new
    order_1.add_item("Onion Bhaji", "1")
    order_1.remove_item("Onion Bhaji", "1")
    expect(order_1.view_order).to eq ""
  end

  it "calculates the cost of the order" do
    order_1 = Order.new
    order_1.add_item("Onion Bhaji", "1")
    order_1.add_item("Pilau Rice", "1")
    expect(order_1.calculate_total).to eq 8.00
  end
end
