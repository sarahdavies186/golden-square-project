class Menu
  attr_reader :menu
  def initialize
    @menu = {
      "Onion Bhaji" => 4.50,
      "Sag Aloo" => 4.75,
      "Peshwari Naan" => 3.60,
      "Pilau Rice" => 3.50,
      "Vegetable Tikka Masala" => 9.50,
      "Vegetable Passand" => 9.50,
    }
  end

  def view
    @menu.map { |item, price| "#{item}, £#{"%.2f" % price}" }.join("\n")
  end
end
