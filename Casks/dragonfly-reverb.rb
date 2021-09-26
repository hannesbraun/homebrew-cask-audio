cask "dragonfly-reverb" do
  version "3.2.5"
  sha256 "56175dc6330c30ac4a776e2adf1821a8a42bdf228aae5a120335197892686591"

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
