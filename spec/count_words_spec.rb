require "count_words"

RSpec.describe "count_words method" do
  it "returns the number of words in a string" do
    result = count_words("This is my string")
    expect(result).to eq 4
  end
end
