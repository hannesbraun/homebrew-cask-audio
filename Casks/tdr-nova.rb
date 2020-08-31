cask "tdr-nova" do
  version "2.1.2"
  sha256 "3735da3759b953c63b948e002905c901d4e1e16a28ab96f67e234cbece100de7"

  url "https://www.tokyodawn.net/labs/Nova/#{version}/TDR%20Nova.dmg"
  appcast "https://www.tokyodawn.net/tdr-nova/"
  name "TDR Nova"
  desc "Parallel dynamic equalizer"
  homepage "https://www.tokyodawn.net/tdr-nova/"

  audio_unit_plugin "TDR Nova.component"
  vst_plugin "TDR Nova.vst"
  vst3_plugin "TDR Nova.vst3"
  artifact "TDR Nova.aaxplugin", target: "/Library/Application Support/Avid/Audio/Plug-Ins/TDR Nova.aaxplugin"
end
