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

  describe "contact number behaviour" do
    context "when there is a mobile number in a diary entry" do
      it "extracts it into contacts" do
        diary_entry_1 =
          DiaryEntry.new("my diary", "sarahs number is 07757204409")
        expect(diary_entry_1.extract_number).to eq ["07757204409"]
      end
    end

    context "when there are multiple mobile numbers in a diary entry" do
      it "extracts them into contacts" do
        diary_entry_1 =
          DiaryEntry.new("my diary", "07757204403 sarahs number is 07757204409")
        expect(diary_entry_1.extract_number).to eq %w[07757204403 07757204409]
      end
    end

    context "when there is a mobile number in a diary entry that is the wrong length" do
      it "doesn't extract it into contacts" do
        diary_entry_1 =
          DiaryEntry.new("my diary", "sarahs number is 0775720440")
        expect(diary_entry_1.extract_number).to eq []
      end
    end
  end
end
