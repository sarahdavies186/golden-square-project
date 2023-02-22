class Diary
  def initialize
    @diary_entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    # Returns nothing
    @diary_entries << entry
  end

  def all
    # Returns a list of instances of DiaryEntry
    return @diary_entries
  end

  def count_words
    sum = 0
    @diary_entries.each { |x| sum += x.count_words }
    return sum
  end

  def reading_time(wpm) # wpm is an integer representing
    # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
    return wpm * count_words
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    # `wpm` is an integer representing the number of words the user can read
    # per minute.
    # `minutes` is an integer representing the number of minutes the user
    # has to read.
    # Returns an instance of diary entry representing the entry that is closest
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
    words_in_time = wpm * minutes
    words_per_post = []
    @diary_entries.each do |entry|
      words_per_post << entry.count_words if entry.count_words <= words_in_time
    end
    words_per_post.sort!
    closest = words_per_post[-1]
    @diary_entries.each { |entry| return entry if closest >= entry.count_words }
  end
end
