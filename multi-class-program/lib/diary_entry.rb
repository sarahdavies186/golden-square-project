class DiaryEntry
  def initialize(title, content) # title and content are both strings
    @title = title
    @content = content
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
end
