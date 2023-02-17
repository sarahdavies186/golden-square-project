def get_most_common_letter(text)
  counter = Hash.new(0)
  text.gsub(/\s+/, "").chars.each { |char| counter[char] += 1 }
  counter.to_a.sort_by { |k, v| v }[-1][0]
end

puts get_most_common_letter("the roof, the roof, the roof is on fire!")

# Intended output:
#
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
