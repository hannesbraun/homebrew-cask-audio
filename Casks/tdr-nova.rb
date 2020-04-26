cask 'tdr-nova' do
  version '2.1.1'
  sha256 '48bef8c7c0c2159883cb66973f26848934186a0377571d48c57d26512d569b20'

  url "https://www.tokyodawn.net/labs/Nova/#{version}/TDR%20Nova.dmg"
  appcast 'https://www.tokyodawn.net/tdr-nova/'
  name 'TDR Nova'
  homepage 'https://www.tokyodawn.net/tdr-nova/'

  audio_unit_plugin 'TDR Nova.component'
  vst_plugin 'TDR Nova.vst'
  vst3_plugin 'TDR Nova.vst3'
  artifact 'TDR Nova.aaxplugin', target: '/Library/Application Support/Avid/Audio/Plug-Ins/TDR Nova.aaxplugin'
end
