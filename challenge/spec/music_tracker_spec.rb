require "music_tracker"

RSpec.describe MusicTracker do
  context "when there are no tracks" do
    it "returns an empty list" do
      list = MusicTracker.new
      expect(list.print_list).to eq []
    end
  end

  context "when one track has been added" do
    it "returns a list of the track" do
      list = MusicTracker.new
      list.add_track("Track_1")
      expect(list.print_list).to eq ["Track_1"]
    end
  end

  context "when multiple tasks have been added" do
    it "returns a list of all tasks" do
      list = MusicTracker.new
      list.add_track("Track_1")
      list.add_track("Track_2")
      expect(list.print_list).to eq %w[Track_1 Track_2]
    end
  end
end
