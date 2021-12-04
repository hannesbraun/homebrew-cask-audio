cask "anspec" do
  version "1.4"
  sha256 "90676600faa6dbd781856ca274340f343732a464eed2ce2c7c1347ad6719c814"

  url "https://www.voxengo.com/files/VoxengoAnSpec_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  appcast "https://www.voxengo.com/product/anpsec/",
          must_contain: version.no_dots
  name "Voxengo AnSpec"
  desc "Analog spectrum analyzer"
  homepage "https://www.voxengo.com/product/anspec/"

  audio_unit_plugin "AnSpec.component"
  artifact "ProTools AAX/AnSpec.aaxplugin",
           target: "/Library/Application Support/Avid/Audio/Plug-Ins/AnSpec.aaxplugin"
end
