cask "oldskoolverb" do
  version "2.13"
  sha256 "e2967594b44cbb67d4c7fac1bb525017c4a2c5fdaf440580c9f7993cf03febb7"

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
