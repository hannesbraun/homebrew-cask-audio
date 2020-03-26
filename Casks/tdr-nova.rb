cask 'tdr-nova' do
  version '2.1.0'
  sha256 'feec398a210678547da881ad54f43928e552809b2d4658506294cb7b87bf46da'

  url "https://www.tokyodawn.net/labs/Nova/#{version}/TDR%20Nova.dmg"
  appcast 'https://www.tokyodawn.net/tdr-nova/'
  name 'TDR Nova'
  homepage 'https://www.tokyodawn.net/tdr-nova/'

  audio_unit_plugin 'TDR Nova.component'
  vst_plugin 'TDR Nova.vst'
  vst3_plugin 'TDR Nova.vst3'
  artifact 'TDR Nova.aaxplugin', target: '/Library/Application Support/Avid/Audio/Plug-Ins/TDR Nova.aaxplugin'
end
