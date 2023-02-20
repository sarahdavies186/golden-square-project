require "grammar_stats"

RSpec.describe GrammarStats do
  context "when the grammar is correct" do
    it "returns true" do
      new_grammar_stats = GrammarStats.new
      result = new_grammar_stats.check("This is my sentence.")
      expect(result).to eq true
    end
  end
  context "when the grammar is incorrect" do
    it "returns false" do
      new_grammar_stats = GrammarStats.new
      result = new_grammar_stats.check("This is my sentence")
      expect(result).to eq false
    end
  end

  context "for the texts checked that passed" do
    it "returns the percentage" do
      new_grammar_stats = GrammarStats.new
      new_grammar_stats.check("This is my sentence.")
      new_grammar_stats.check("This is my sentence")
      expect(new_grammar_stats.percentage_good).to eq 50
    end
  end

  context "for the texts checked that passed" do
    it "returns the percentage" do
      new_grammar_stats = GrammarStats.new
      new_grammar_stats.check("This is my sentence.")
      new_grammar_stats.check("This is my sentence")
      new_grammar_stats.check("This is my sentence")
      new_grammar_stats.check("this is my sentence")
      new_grammar_stats.check("this is my sentence")
      new_grammar_stats.check("This is my sentence")
      new_grammar_stats.check("This is my sentence")
      expect(new_grammar_stats.percentage_good).to eq 14
    end
  end
end
