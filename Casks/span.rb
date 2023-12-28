cask "span" do
  version "3.21"
  sha256 "b7108034f41ba1b8ecbea24a7d9df59ee5c4c168eab49902aec695ec37906e1a"

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
