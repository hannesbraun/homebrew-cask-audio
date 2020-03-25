cask 'dragonfly-reverb' do
  version '3.0.0'
  sha256 '834a87d1dab7ce279755b1036fc59d26bbd9868063e1ff2c8f65973b058a17da'

  # github.com/michaelwillis/dragonfly-reverb was verified as official when first introduced to the cask
  url "https://github.com/michaelwillis/dragonfly-reverb/releases/download/#{version}/DragonflyReverb-MacOS-64bit-v#{version}.zip"
  appcast 'https://github.com/michaelwillis/dragonfly-reverb/releases.atom'
  name 'Dragonfly Reverb'
  homepage 'https://michaelwillis.github.io/dragonfly-reverb/'

  vst_plugin "DragonflyReverb-MacOS-64bit-v#{version}/DragonflyEarlyReflections.vst"
  vst_plugin "DragonflyReverb-MacOS-64bit-v#{version}/DragonflyHallReverb.vst"
  vst_plugin "DragonflyReverb-MacOS-64bit-v#{version}/DragonflyPlateReverb.vst"
  vst_plugin "DragonflyReverb-MacOS-64bit-v#{version}/DragonflyRoomReverb.vst"
end
