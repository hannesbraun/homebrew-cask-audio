cask "correlometer" do
  version "1.6"
  sha256 "aa1ea94c5b718f6f7d28dc4215aa6ac31bf27eca19a84147d3f11a4f1e42276c"

  url "https://www.voxengo.com/files/VoxengoCorrelometer_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  appcast "https://www.voxengo.com/product/correlometer/",
          must_contain: version.no_dots
  name "Voxengo Correlometer"
  desc "Multi-Band Correlometer"
  homepage "https://www.voxengo.com/product/correlometer/"

  audio_unit_plugin "Correlometer.component"
  artifact "ProTools AAX/Correlometer.aaxplugin",
           target: "/Library/Application Support/Avid/Audio/Plug-Ins/Correlometer.aaxplugin"
end
