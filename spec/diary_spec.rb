require "diary"

RSpec.describe Diary do
  context "initiate" do
    it "is empty" do
      diary = Diary.new
      expect(diary.all).to eq []
    end
  end
end
