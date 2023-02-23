require "music_library"
require "track"

RSpec.describe "integration" do
  it "returns a list of track objects" do
    music_library = MusicLibrary.new
    track_1 = Track.new("Let Me Down", "Jorja Smith")
    music_library.add(track_1)
    expect(music_library.all).to eq [track_1]
  end

  it "returns a list of tracks that match the keyword" do
    music_library = MusicLibrary.new
    track_1 = Track.new("Let Me Down", "Jorja Smith")
    track_2 = Track.new("Blue Lights", "Jorja Smith")
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.search("Jorja Smith")).to eq [track_1, track_2]
  end
end
