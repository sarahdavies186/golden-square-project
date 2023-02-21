#1 Returns a list of instances of DiaryEntry
diary = Diary.new
diary_entry_1 = DiaryEntry.new("my title 1", "my contents 1")
diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
diary.all # => [diary_entry_1, diary_entry_2]

#2 Returns the number of words in all diary entries
diary = Diary.new
diary_entry_1 = DiaryEntry.new("my title 1", "my contents 1")
diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
diary.count_words # => 6

#3 Returns an integer representing an estimate of the reading time in minutes
# if the user were to read all entries in the diary.
diary = Diary.new
diary_entry_1 = DiaryEntry.new("my title 1", "my contents 1")
diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
diary.count_words # => 6
diary.reading_time(1) # => 6 (minutes)

#4  # Returns an instance of diary entry representing the entry that is closest
# to, but not over, the length that the user could read in the minutes they
# have available given their reading speed.
diary = Diary.new
diary_entry_1 =
  DiaryEntry.new("my title 1", "my contents my contents my contents")
diary_entry_2 = DiaryEntry.new("my title 2", "my contents")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
diary.find_best_entry_for_reading_time(4, 1) # => diary_entry_1
