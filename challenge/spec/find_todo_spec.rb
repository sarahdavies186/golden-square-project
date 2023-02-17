require "find_todo"

RSpec.describe "find_todo method" do
  context "when the string doesn't contain #TODO" do
    it "returns false" do
      result = find_todo("I have lots of tasks waiting")
      expect(result).to eq false
    end
  end

  context "when the string contains #TODO" do
    it "returns true" do
      result = find_todo("#TODO clean the house")
      expect(result).to eq true
    end
    it "returns true" do
      result = find_todo("I need to wash the dishes #TODO")
      expect(result).to eq true
    end
  end
end
