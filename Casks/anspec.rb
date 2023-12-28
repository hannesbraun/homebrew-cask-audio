cask "anspec" do
  version "1.7"
  sha256 "b681f13f9e8b8bed210e8ac24166145b1673d29f664a6e76b8acb204be6dd3fa"

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
