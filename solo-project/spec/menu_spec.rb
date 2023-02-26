require "menu"

RSpec.describe Menu do
  it "shows the menu" do
    menu = Menu.new
    expect(
      menu.view,
    ).to eq "Onion Bhaji, £4.50\nSag Aloo, £4.75\nPeshwari Naan, £3.60\nPilau Rice, £3.50\nVegetable Tikka Masala, £9.50\nVegetable Passand, £9.50"
  end
end
