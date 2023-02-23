require "track"

RSpec.describe Track do
  it "returns true if the keywords matches the artist" do
    track = Track.new("Let Me Down", "Jorja Smith")
    expect(track.matches?("Jorja Smith")).to eq true
  end

  it "returns true if the keywords matches the title" do
    track = Track.new("Let Me Down", "Jorja Smith")
    expect(track.matches?("Let Me Down")).to eq true
  end

  it "returns false if the keyword is not in the title or artist" do
    track = Track.new("Let Me Down", "Jorja Smith")
    expect(track.matches?("Hello")).to eq false
  end
end
