cask 'tdr-vos-slickeq' do
  version '1.3.2'
  sha256 '86ecc96a9346cc08d08a01327a29f03e22428684d5427bc81655a4753a632969'

  url "https://www.tokyodawn.net/labs/SlickEQ/release#{version}/TDR%20VOS%20SlickEQ.dmg"
  appcast 'https://www.tokyodawn.net/tdr-vos-slickeq/'
  name 'TDR VOS SlickEQ'
  homepage 'https://www.tokyodawn.net/tdr-vos-slickeq/'

  audio_unit_plugin 'TDR VOS SlickEQ.component'
  vst_plugin 'TDR VOS SlickEQ.vst'
  vst3_plugin 'TDR VOS SlickEQ.vst3'
  artifact 'TDR VOS SlickEQ.aaxplugin', target: '/Library/Application Support/Avid/Audio/Plug-Ins/TDR VOS SlickEQ.aaxplugin'
end
