def find_reading_time(string)
  text_length = string.split(" ").length
  reading_time = (text_length.to_f / 200).round
end

print find_reading_time("word " * 700)
