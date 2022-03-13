cask "span" do
  version "3.13"
  sha256 "557e695c3f51e2cef61719127be18a25d6bf24150fb74430e8c2ae27f00aa20f"

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
