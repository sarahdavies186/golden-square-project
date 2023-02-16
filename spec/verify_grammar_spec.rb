require "verify_grammar"

RSpec.describe "verify_grammar method" do
  context "when the first letter is a captital" do
    it "returns true" do
      result = verify_grammar("Is this a question?")
      expect(result).to eq true
    end
  end

  context "when the first letter is not a capital" do
    it "returns false" do
      result = verify_grammar("this is a sentence")
      expect(result).to eq false
    end
  end

  context "when the first letter is not a capital and does not end with correct punctuation" do
    it "returns false" do
      result = verify_grammar("this is a sentence")
      expect(result).to eq false
    end
  end

  context "when the first letter is a capital and does end with correct punctuation" do
    it "returns true" do
      result = verify_grammar("This is a sentence.")
      expect(result).to eq true
    end
  end
end
