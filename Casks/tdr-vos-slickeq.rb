cask 'tdr-vos-slickeq' do
  version '1.3.3'
  sha256 'f8e815754671c0e7c2731e03e1c5aa67500af2bf954e72c89ef51e23fa25400e'

  url "https://www.tokyodawn.net/labs/SlickEQ/release#{version}/TDR%20VOS%20SlickEQ.dmg"
  appcast 'https://www.tokyodawn.net/tdr-vos-slickeq/'
  name 'TDR VOS SlickEQ'
  homepage 'https://www.tokyodawn.net/tdr-vos-slickeq/'

  audio_unit_plugin 'TDR VOS SlickEQ.component'
  vst_plugin 'TDR VOS SlickEQ.vst'
  vst3_plugin 'TDR VOS SlickEQ.vst3'
  artifact 'TDR VOS SlickEQ.aaxplugin', target: '/Library/Application Support/Avid/Audio/Plug-Ins/TDR VOS SlickEQ.aaxplugin'
end
