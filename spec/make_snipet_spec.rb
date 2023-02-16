require "make_snippet"

RSpec.describe "make_snippet method" do
  context "when given a string of 5 words or less" do
    it "returns the string" do
      result = make_snippet("There are lots of words")
      expect(result).to eq "There are lots of words"
    end

    it "returns the first five words and ... if the string is more than 5 words" do
      result = make_snippet("There are lots of words in my string")
      expect(result).to eq "There are lots of words..."
    end
  end
end
