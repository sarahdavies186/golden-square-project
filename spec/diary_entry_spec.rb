require "diary_entry"

RSpec.describe DiaryEntry do
  it "returns how many words are in the content" do
    diary_entry = DiaryEntry.new("title", "blah blah blah")
    expect(diary_entry.count_words).to eq 3
  end
end
