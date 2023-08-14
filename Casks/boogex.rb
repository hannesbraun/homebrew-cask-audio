cask "boogex" do
  version "3.7"
  sha256 "ea06e4da75f57dbae8c712f2f945b19850312c8ff2ab58c7fb43a16229aab169"

  url "https://www.voxengo.com/files/VoxengoBoogex_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Boogex"
  desc "Guitar amp plugin"
  homepage "https://www.voxengo.com/product/boogex/"

  livecheck do
    url "https://www.voxengo.com/product/boogex/"
    strategy :page_match do |page|
      page.scan(/VoxengoBoogex_(\d)(\d+)_Mac_AU_AAX_setup\.dmg/).map do |match|
        "#{match[0]}.#{match[1]}"
      end
    end
  end

  audio_unit_plugin "Boogex.component"
  artifact "ProTools AAX/Boogex.aaxplugin",
           target: "/Library/Application Support/Avid/Audio/Plug-Ins/Boogex.aaxplugin"
end
