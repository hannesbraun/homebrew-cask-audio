cask "span" do
  version "3.15"
  sha256 "dfacb8f8567d5e2b7b971ef189c9f4a9723eb9452e45c4a6810e2d50a29ab615"

  url "https://www.voxengo.com/files/VoxengoSPAN_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  appcast "https://www.voxengo.com/product/span/",
          must_contain: version.no_dots
  name "Voxengo SPAN"
  desc "Spectrum analyzer plugin"
  homepage "https://www.voxengo.com/product/span/"

  audio_unit_plugin "SPAN.component"
  artifact "ProTools AAX/SPAN.aaxplugin",
           target: "/Library/Application Support/Avid/Audio/Plug-Ins/SPAN.aaxplugin"
end
