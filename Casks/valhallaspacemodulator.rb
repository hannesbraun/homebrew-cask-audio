cask "valhallaspacemodulator" do
  version "1.2.8"
  sha256 "12033f7f35e97e6e06e3852e42f50caff17165bc6e79696d6837d61b34858598"

  url "https://valhallaproduction.s3-us-west-2.amazonaws.com/spacemod/ValhallaSpaceModulatorOSX_#{version.dots_to_underscores}.dmg",
      verified: "valhallaproduction.s3-us-west-2.amazonaws.com/"
  name "Valhalla Space Modulator"
  homepage "https://valhalladsp.com/shop/modulation/valhalla-space-modulator/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Current Version:\s(\d+(?:\.\d+)+)/)
  end

  pkg "ValhallaSpaceModulatorOSX.pkg"

  uninstall pkgutil: [
    "com.valhalladsp.SpaceModulator.pkg.aax",
    "com.valhalladsp.SpaceModulator.pkg.au",
    "com.valhalladsp.SpaceModulator.pkg.presets",
    "com.valhalladsp.SpaceModulator.pkg.vst",
    "com.valhalladsp.SpaceModulator.pkg.vst3",
  ]
end
