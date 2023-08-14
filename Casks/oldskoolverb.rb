cask "oldskoolverb" do
  version "2.12"
  sha256 "39cec78d4771e2b94e32cd829d8baff15fbad34e227a0287d337e80925f2aca4"

  url "https://www.voxengo.com/files/VoxengoOldSkoolVerb_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo OldSkoolVerb"
  desc "Plate reverb plugin"
  homepage "https://www.voxengo.com/product/oldskoolverb/"

  livecheck do
    url "https://www.voxengo.com/product/oldskoolverb/"
    strategy :page_match do |page|
      page.scan(/VoxengoOldSkoolVerb_(\d)(\d+)_Mac_AU_AAX_setup\.dmg/).map do |match|
        "#{match[0]}.#{match[1]}"
      end
    end
  end

  audio_unit_plugin "OldSkoolVerb.component"
  artifact "ProTools AAX/OldSkoolVerb.aaxplugin",
           target: "/Library/Application Support/Avid/Audio/Plug-Ins/OldSkoolVerb.aaxplugin"
end
