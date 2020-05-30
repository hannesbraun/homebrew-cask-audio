cask 'tdr-kotelnikov' do
  version '1.6.1'
  sha256 '097e1bf8a27381e330a3f302d9ff8855aa40677919b9c7ef212a12e9bc9e5cdc'

  url "https://www.tokyodawn.net/labs/Kotelnikov/release#{version}/TDR%20Kotelnikov.dmg"
  appcast 'https://www.tokyodawn.net/tdr-kotelnikov/'
  name 'TDR Kotelnikov'
  homepage 'https://www.tokyodawn.net/tdr-kotelnikov/'

  audio_unit_plugin 'TDR Kotelnikov.component'
  vst_plugin 'TDR Kotelnikov.vst'
  vst3_plugin 'TDR Kotelnikov.vst3'
  artifact 'TDR Kotelnikov.aaxplugin', target: '/Library/Application Support/Avid/Audio/Plug-Ins/TDR Kotelnikov.aaxplugin'
end
