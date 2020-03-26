cask 'tdr-kotelnikov' do
  version '1.6.0'
  sha256 '6892193a9e3f6d58af7b1a943d49406c75e24991c2d1ebedc8d97974a6154bad'

  url "https://www.tokyodawn.net/labs/Kotelnikov/release#{version}/TDR%20Kotelnikov.dmg"
  appcast 'https://www.tokyodawn.net/tdr-kotelnikov/'
  name 'TDR Kotelnikov'
  homepage 'https://www.tokyodawn.net/tdr-kotelnikov/'

  audio_unit_plugin 'TDR Kotelnikov.component'
  vst_plugin 'TDR Kotelnikov.vst'
  vst3_plugin 'TDR Kotelnikov.vst3'
  artifact 'TDR Kotelnikov.aaxplugin', target: '/Library/Application Support/Avid/Audio/Plug-Ins/TDR Kotelnikov.aaxplugin'
end
