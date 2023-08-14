cask "anspec" do
  version "1.6"
  sha256 "fe44e6d6b9f82fd6bccfad7b5c7e7044fa8165b9f8d312a577a83e79c4dd4c0d"

  url "https://www.voxengo.com/files/VoxengoAnSpec_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo AnSpec"
  desc "Analog spectrum analyzer"
  homepage "https://www.voxengo.com/product/anspec/"

  livecheck do
    url "https://www.voxengo.com/product/anpsec/"
    strategy :page_match do |page|
      page.scan(/VoxengoAnSpec_(\d)(\d+)_Mac_AU_AAX_setup\.dmg/).map do |match|
        "#{match[0]}.#{match[1]}"
      end
    end
  end

  audio_unit_plugin "AnSpec.component"
  artifact "ProTools AAX/AnSpec.aaxplugin",
           target: "/Library/Application Support/Avid/Audio/Plug-Ins/AnSpec.aaxplugin"
end
