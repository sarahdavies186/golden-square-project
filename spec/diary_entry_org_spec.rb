require "diary_entry"

RSpec.describe DiaryEntry do
  it "retruns the title as a string" do
    new_diary_entry = DiaryEntry.new("Entry 1", "This is my diary")
    result = new_diary_entry.title
    expect(result).to eq "Entry 1"
  end

  it "return the contents as a string" do
    new_diary_entry = DiaryEntry.new("Entry 1", "This is my diary")
    result = new_diary_entry.contents
    expect(result).to eq "This is my diary"
  end

  it "returns the number of words in the contents" do
    new_diary_entry = DiaryEntry.new("Entry 1", "This is my diary")
    result = new_diary_entry.count_words
    expect(result).to eq 4
  end

  it "returns an estimate of the reading time in minutes" do
    new_diary_entry = DiaryEntry.new("Entry 1", "word " * 500)
    new_diary_entry.count_words
    result = new_diary_entry.reading_time(200)
    expect(result).to eq 3
  end

  context "with a contents readable in the time" do
    it "returns full content" do
      new_diary_entry = DiaryEntry.new("Entry 1", "This is my contents")
      new_diary_entry.count_words
      result = new_diary_entry.reading_chunk(2, 2)
      expect(result).to eq "This is my contents"
    end
  end

  context "with a contents unreadable in the time" do
    it "returns a readable chunk" do
      new_diary_entry = DiaryEntry.new("Entry 1", "This is my contents")
      new_diary_entry.count_words
      result = new_diary_entry.reading_chunk(1, 3)
      expect(result).to eq "This is my"
    end

    it "returns the next chunk next time called again" do
      new_diary_entry = DiaryEntry.new("Entry 1", "This is my contents")
      new_diary_entry.count_words
      new_diary_entry.reading_chunk(1, 3)
      result = new_diary_entry.reading_chunk(1, 3)
      expect(result).to eq "contents"
    end

    it "restarts the chunk again after being fully read" do
      new_diary_entry = DiaryEntry.new("Entry 1", "This is my contents")
      new_diary_entry.count_words
      new_diary_entry.reading_chunk(2, 1)
      new_diary_entry.reading_chunk(2, 1)
      result = new_diary_entry.reading_chunk(2, 1)
      expect(result).to eq "This is"
    end
  end
end
