cask 'tdr-kotelnikov' do
  version '1.6.1'
  sha256 '1139da9761b0aca55d355be6f2307ba345cfc4e1c4533873f787d9b4ad76a8ba'

  url "https://www.tokyodawn.net/labs/Kotelnikov/release#{version}/TDR%20Kotelnikov.dmg"
  appcast 'https://www.tokyodawn.net/tdr-kotelnikov/'
  name 'TDR Kotelnikov'
  homepage 'https://www.tokyodawn.net/tdr-kotelnikov/'

  audio_unit_plugin 'TDR Kotelnikov.component'
  vst_plugin 'TDR Kotelnikov.vst'
  vst3_plugin 'TDR Kotelnikov.vst3'
  artifact 'TDR Kotelnikov.aaxplugin', target: '/Library/Application Support/Avid/Audio/Plug-Ins/TDR Kotelnikov.aaxplugin'
end
