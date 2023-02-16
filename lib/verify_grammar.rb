def verify_grammar(string)
  first_letter_capital = ("A".."Z").include?(string[0])
  last_character_correct = %w[. ? !].include?(string[-1])

  if first_letter_capital == true && last_character_correct == true
    return true
  else
    return false
  end
end

print verify_grammar("This is a sentence,")
