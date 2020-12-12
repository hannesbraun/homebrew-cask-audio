cask "dragonfly-reverb" do
  version "3.2.1"
  sha256 "d5bb6b022b80ce8fba939f4ccdb54b7b83ab5f7eca0649aff5f89ffe984a587d"

  url "https://github.com/michaelwillis/dragonfly-reverb/releases/download/#{version}/DragonflyReverb-MacOS-64bit-v#{version}.zip",
      verified: "github.com/michaelwillis/dragonfly-reverb/"
  appcast "https://github.com/michaelwillis/dragonfly-reverb/releases.atom"
  name "Dragonfly Reverb"
  desc "Set of free reverb effects"
  homepage "https://michaelwillis.github.io/dragonfly-reverb/"

  vst_plugin "DragonflyReverb-MacOS-64bit-v#{version}/DragonflyEarlyReflections.vst"
  vst_plugin "DragonflyReverb-MacOS-64bit-v#{version}/DragonflyHallReverb.vst"
  vst_plugin "DragonflyReverb-MacOS-64bit-v#{version}/DragonflyPlateReverb.vst"
  vst_plugin "DragonflyReverb-MacOS-64bit-v#{version}/DragonflyRoomReverb.vst"
end
