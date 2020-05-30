cask 'tdr-vos-slickeq' do
  version '1.3.3'
  sha256 'e1fe8947ac31015d82ca99365339e6cefa9abd06c1d8c687a9278a7f97dddc79'

  url "https://www.tokyodawn.net/labs/SlickEQ/release#{version}/TDR%20VOS%20SlickEQ.dmg"
  appcast 'https://www.tokyodawn.net/tdr-vos-slickeq/'
  name 'TDR VOS SlickEQ'
  homepage 'https://www.tokyodawn.net/tdr-vos-slickeq/'

  audio_unit_plugin 'TDR VOS SlickEQ.component'
  vst_plugin 'TDR VOS SlickEQ.vst'
  vst3_plugin 'TDR VOS SlickEQ.vst3'
  artifact 'TDR VOS SlickEQ.aaxplugin', target: '/Library/Application Support/Avid/Audio/Plug-Ins/TDR VOS SlickEQ.aaxplugin'
end
