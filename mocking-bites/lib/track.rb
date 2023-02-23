class Track
  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def matches?(keyword)
    return true if @artist == keyword || @title == keyword
    return false
  end
end
