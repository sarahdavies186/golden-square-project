require "diary"
require "diary_entry"

RSpec.describe "integration" do
  context "when we add an entry to the diary" do
    it "adds to the list" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my title 1", "my contents 1")
      diary.add(diary_entry_1)
      expect(diary.all).to eq [diary_entry_1]
    end
  end

  context "when we add multiple entries to the diary" do
    it "adds them all to the list" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my title 1", "my contents 1")
      diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.all).to eq [diary_entry_1, diary_entry_2]
    end
  end

  context "counting words in diary entry" do
    it "returns the count of words in one diary entry" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("title", "here is some content")
      diary.add(diary_entry_1)
      expect(diary.count_words).to eq 4
    end
  end

  context "counting words in diary entry" do
    it "returns the count of words in multiple diary entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("title", "here is some content")
      diary_entry_2 = DiaryEntry.new("title", "this is my diary blah blah blah")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.count_words).to eq 11
    end
  end

  context "#reading_time" do
    it "gives an estimate of the reading time for all diary entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my title 1", "my contents 1")
      diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.reading_time(1)).to eq 6
    end
  end

  context "#find_best_entry_for_reading_time" do
    it "returns an entry closest to the time available" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my title 1", "my contents my contents")
      diary_entry_2 = DiaryEntry.new("my title 2", "my contents")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      result = diary.find_best_entry_for_reading_time(4, 1)
      expect(result).to eq diary_entry_1
    end

    it "returns an entry closest to the time available" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my title 1", "my contents my ")
      diary_entry_2 = DiaryEntry.new("my title 2", "my contents")
      diary_entry_3 = DiaryEntry.new("my title 2", "my contents my contents")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      diary.add(diary_entry_3)
      result = diary.find_best_entry_for_reading_time(3, 1)
      expect(result).to eq diary_entry_1
    end

    it "returns an entry closest to the time available" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my title 1", "my contents my ")
      diary_entry_2 = DiaryEntry.new("my title 2", "my contents")
      diary_entry_3 = DiaryEntry.new("my title 2", "my contents my contents")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      diary.add(diary_entry_3)
      result = diary.find_best_entry_for_reading_time(5, 1)
      expect(result).to eq diary_entry_1
    end
  end
end
