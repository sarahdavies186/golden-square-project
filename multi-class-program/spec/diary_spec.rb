require "diary"

RSpec.describe Diary do
  it "returns an empty list if no diary entries" do
    my_diary = Diary.new
    expect(my_diary.all).to eq []
  end

  it "returns nil if no diary entries to read" do
    my_diary = Diary.new
    expect(my_diary.find_best_entry_for_reading_time(1, 1)).to eq nil
  end
end
