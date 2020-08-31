cask "tdr-vos-slickeq" do
  version "1.3.4"
  sha256 "b020c84035a846b29312a580c93f10a868c17d60dabd055731dd401e06a653b9"

  url "https://www.tokyodawn.net/labs/SlickEQ/release#{version}/TDR%20VOS%20SlickEQ.dmg"
  appcast "https://www.tokyodawn.net/tdr-vos-slickeq/"
  name "TDR VOS SlickEQ"
  desc "Mixing/mastering equalizer"
  homepage "https://www.tokyodawn.net/tdr-vos-slickeq/"

  audio_unit_plugin "TDR VOS SlickEQ.component"
  vst_plugin "TDR VOS SlickEQ.vst"
  vst3_plugin "TDR VOS SlickEQ.vst3"
  artifact "TDR VOS SlickEQ.aaxplugin",
           target: "/Library/Application Support/Avid/Audio/Plug-Ins/TDR VOS SlickEQ.aaxplugin"
end
