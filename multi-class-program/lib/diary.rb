class Diary
  def initialize
    @diary_entries = []
  end

  def add(entry)
    @diary_entries << entry
  end

  def all
    @diary_entries
  end

  def find_best_entry_for_reading_time(wpm, time)
    reading_time = wpm * time

    readable_entries =
      @diary_entries.filter { |entry| entry.count_words <= reading_time }

    sort_by_length = readable_entries.sort_by { |entry| entry.count_words }

    return sort_by_length[-1]
  end

  private
end
