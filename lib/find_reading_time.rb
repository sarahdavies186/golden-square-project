def find_reading_time(string)
  text_length = string.split(" ").length
  reading_time = text_length / 200
  if reading_time < 2
    return "Reading time is less than 1 minute"
  else
    return reading_time
  end
end

print find_reading_time("word " * 300)
