class GrammarStats
  def initialize
    @grammar_stats = []
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    first_letter_capital = ("A".."Z").include?(text[0])
    last_character_correct = %w[. ? !].include?(text[-1])
    if first_letter_capital == true && last_character_correct == true
      @grammar_stats.push("true")
      return true
    else
      @grammar_stats.push("false")
      return false
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    ((@grammar_stats.count("true") / @grammar_stats.count.to_f) * 100).round
  end
end

# new_grammar_stats = GrammarStats.new
# new_grammar_stats.check("This is my sentence")
# new_grammar_stats.check("This is my sentence")
# new_grammar_stats.check("This is my sentence.")
# new_grammar_stats.check("This is my sentence.")
# new_grammar_stats.check("This is my sentence")
# new_grammar_stats.percentage_good
