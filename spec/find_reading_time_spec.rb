require "find_reading_time"

RSpec.describe "find_reading_time method" do
  context "when given a text of 200 words" do
    it "returns 1" do
      result = find_reading_time("word " * 200)
      expect(result).to eq 1
    end
  end

  context "when given a text of 400 words" do
    it "returns 2" do
      result = find_reading_time("word " * 400)
      expect(result).to eq 2
    end
  end

  context "when given a text of 1000 words" do
    it "returns 5" do
      result = find_reading_time("word " * 1000)
      expect(result).to eq 5
    end
  end

  context "when given a text of 100 words" do
    it "returns 1" do
      result = find_reading_time("word " * 100)
    end
  end
end
