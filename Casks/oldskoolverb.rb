cask "oldskoolverb" do
  version "2.7"
  sha256 "6a0a2038848077997f359ed86481426cf4f6cc10ff2d644f13ed439269af4ec1"

  url "https://www.voxengo.com/files/VoxengoOldSkoolVerb_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  appcast "https://www.voxengo.com/product/oldskoolverb/",
          must_contain: version.no_dots
  name "Voxengo OldSkoolVerb"
  desc "Plate reverb plugin"
  homepage "https://www.voxengo.com/product/oldskoolverb/"

  audio_unit_plugin "OldSkoolVerb.component"
  artifact "ProTools AAX/OldSkoolVerb.aaxplugin",
           target: "/Library/Application Support/Avid/Audio/Plug-Ins/OldSkoolVerb.aaxplugin"
end
