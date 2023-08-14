cask "span" do
  version "3.19"
  sha256 "485b1c44bcca3878790d032de09dbb6c84171885155bcbec76d1ffce5f159cff"

  url "https://www.voxengo.com/files/VoxengoSPAN_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo SPAN"
  desc "Spectrum analyzer plugin"
  homepage "https://www.voxengo.com/product/span/"

  livecheck do
    url "https://www.voxengo.com/product/span/"
    strategy :page_match do |page|
      page.scan(/VoxengoSPAN_(\d)(\d+)_Mac_AU_AAX_setup\.dmg/).map do |match|
        "#{match[0]}.#{match[1]}"
      end
    end
  end

  audio_unit_plugin "SPAN.component"
  artifact "ProTools AAX/SPAN.aaxplugin",
           target: "/Library/Application Support/Avid/Audio/Plug-Ins/SPAN.aaxplugin"
end
