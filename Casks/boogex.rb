cask "boogex" do
  version "3.2"
  sha256 "863c2acac5e4f0133f15c7a1ceb5378c4e885ed627b5bd6a0453de7a6587c408"

  url "https://www.voxengo.com/files/VoxengoBoogex_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  appcast "https://www.voxengo.com/product/boogex/",
          must_contain: version.no_dots
  name "Voxengo Boogex"
  desc "Guitar amp plugin"
  homepage "https://www.voxengo.com/product/boogex/"

  audio_unit_plugin "Boogex.component"
  artifact "ProTools AAX/Boogex.aaxplugin",
           target: "/Library/Application Support/Avid/Audio/Plug-Ins/Boogex.aaxplugin"
end
