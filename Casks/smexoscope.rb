cask "smexoscope" do
  version "20161216"
  sha256 :no_check

  url "http://armandomontanez.com/smexoscope/files/smexoscope_release.zip"
  name "s(M)exoscope"
  desc "Oscilloscope plugin"
  homepage "http://armandomontanez.com/smexoscope/"

  audio_unit_plugin "smexoscope/macOS/Components/s(M)exoscope.component"
  vst_plugin "smexoscope/macOS/VST/s(M)exoscope.vst"
  vst3_plugin "smexoscope/macOS/VST3/s(M)exoscope.vst3"

  caveats "This is the 64-bit port of the original s(M)exoscope made by Bram DeJong and Sean Evans."
end
