require "music_library"

RSpec.describe MusicLibrary do
  it "adds and lists tracks" do
    music_library = MusicLibrary.new
    track_1 = double :track
    track_2 = double :track
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.all).to eq [track_1, track_2]
  end

  it "returns a list of tracks that match the keyword" do
    music_library = MusicLibrary.new
    track_1 = double :track, matches?: true
    music_library.add(track_1)
    expect(music_library.search("Jorja Smith")).to eq [track_1]
  end
end
