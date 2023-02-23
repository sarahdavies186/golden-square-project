require "diary"
require "diary_entry"

RSpec.describe "diary integration" do
  context "when a diary entry is added"
  it "returns a list of diary entries" do
    my_diary = Diary.new
    diary_entry_1 = DiaryEntry.new("My title", "Welcome to my diary")
    diary_entry_2 = DiaryEntry.new("My diary", "Welcome to my life")
    my_diary.add(diary_entry_1)
    my_diary.add(diary_entry_2)
    expect(my_diary.all).to eq [diary_entry_1, diary_entry_2]
  end
end

describe "best reading time behaviour" do
  context "when we have one diary entry and it is readable in the time" do
    it "returns the diary entry" do
      my_diary = Diary.new
      diary_entry_1 = DiaryEntry.new("My title", "Welcome to my diary")
      my_diary.add(diary_entry_1)
      expect(
        my_diary.find_best_entry_for_reading_time(4, 1),
      ).to eq diary_entry_1
    end
  end

  context "when we have one diary entry and it is unreadable in the time" do
    it "returns nil" do
      my_diary = Diary.new
      diary_entry_1 = DiaryEntry.new("My title", "Welcome to my long diary")
      my_diary.add(diary_entry_1)
      expect(my_diary.find_best_entry_for_reading_time(4, 1)).to eq nil
    end
  end

  context "when we have multiple diary entries" do
    it "returns the diary entry readable in the time and not over" do
      my_diary = Diary.new
      diary_entry_1 = DiaryEntry.new("My title", "Welcome to my ")
      diary_entry_2 = DiaryEntry.new("My title", "Welcome to my diary")
      diary_entry_3 =
        DiaryEntry.new("My title", "Welcome to my lovely diary woo")
      my_diary.add(diary_entry_1)
      my_diary.add(diary_entry_2)
      my_diary.add(diary_entry_3)
      expect(
        my_diary.find_best_entry_for_reading_time(4, 1),
      ).to eq diary_entry_2
    end
  end
end

describe "extract mobile numbers behaviour" do
  context "when there is a phone number in a diary entry" do
    it "returns a list with the number" do
      my_diary = Diary.new
      diary_entry_1 = DiaryEntry.new("My title", "Welcome to my 07757204400")
      my_diary.add(diary_entry_1)
      expect(my_diary.contact_list).to eq ["07757204400"]
    end
  end

  context "when there are multiple phone numbers in multiple diary entries" do
    it "returns a list with the numbers" do
      my_diary = Diary.new
      diary_entry_1 = DiaryEntry.new("My title", "Welcome to my 07757204400")
      diary_entry_2 = DiaryEntry.new("My title", "Welcome to my 07757204488")
      my_diary.add(diary_entry_1)
      my_diary.add(diary_entry_2)
      expect(my_diary.contact_list).to eq %w[07757204400 07757204488]
    end
  end
end
