require "make_snippet"

RSpec.describe "make_snippet method" do
  it "returns the string if 5 words or less" do
    result = make_snippet("There are lots of words")
    expect(result).to eq "There are lots of words"
  end

  it "returns the first five words and ... if the string is more than 5 words" do
    result = make_snippet("There are lots of words in my string")
    expect(result).to eq "There are lots of words..."
  end
end
