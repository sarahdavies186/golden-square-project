class DiaryEntry
  def initialize(title, content) # title and content are both strings
    @title = title
    @content = content
    @numbers = []
  end

  def title
    @title
  end

  def content
    @content
  end

  def count_words
    @content.split(" ").length
  end

  def extract_number
    @content.scan(/[0-9]{11}/).each { |number| @numbers << number }
  end
end
