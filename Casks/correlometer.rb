cask "correlometer" do
  version "1.8"
  sha256 "a549c2cba4987370f1edb6292e2673f004f02b5585777fd6d0c29bd99b1d2b84"

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
