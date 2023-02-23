require "diary_entry"

RSpec.describe DiaryEntry do
  context "when a diary entry is added" do
    it "returns the diary title" do
      diary_entry_1 = DiaryEntry.new("My title", "Welcome to my diary")
      expect(diary_entry_1.title).to eq "My title"
    end
    it "returns the diary content" do
      diary_entry_1 = DiaryEntry.new("My title", "Welcome to my diary")
      expect(diary_entry_1.content).to eq "Welcome to my diary"
    end

    it "counts the number of words" do
      diary_entry_1 = DiaryEntry.new("My title", "Welcome to my diary")
      expect(diary_entry_1.count_words).to eq 4
    end
  end
end
