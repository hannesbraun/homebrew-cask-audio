cask "tdr-nova" do
  version "2.1.1"
  sha256 "fac62192acbb802fc701df1d22449b71aa19968fb557c05d17ee954d804cb09e"

  url "https://www.tokyodawn.net/labs/Nova/#{version}/TDR%20Nova.dmg"
  appcast "https://www.tokyodawn.net/tdr-nova/"
  name "TDR Nova"
  homepage "https://www.tokyodawn.net/tdr-nova/"

  audio_unit_plugin "TDR Nova.component"
  vst_plugin "TDR Nova.vst"
  vst3_plugin "TDR Nova.vst3"
  artifact "TDR Nova.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/TDR Nova.aaxplugin"
end
