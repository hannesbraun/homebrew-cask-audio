cask "correlometer" do
  version "1.7"
  sha256 "f21a44ffb34f3d2c073bfbfecd96e1b300818b78b9a08487cbc3f2d904d3aab1"

  url "https://www.voxengo.com/files/VoxengoCorrelometer_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  name "Voxengo Correlometer"
  desc "Multi-Band Correlometer"
  homepage "https://www.voxengo.com/product/correlometer/"

  livecheck do
    url "https://www.voxengo.com/product/correlometer/"
    strategy :page_match do |page|
      page.scan(/VoxengoCorrelometer_(\d)(\d+)_Mac_AU_AAX_setup\.dmg/).map do |match|
        "#{match[0]}.#{match[1]}"
      end
    end
  end

  audio_unit_plugin "Correlometer.component"
  artifact "ProTools AAX/Correlometer.aaxplugin",
           target: "/Library/Application Support/Avid/Audio/Plug-Ins/Correlometer.aaxplugin"
end
