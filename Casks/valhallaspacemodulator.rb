cask "valhallaspacemodulator" do
  version "1.1.6"
  sha256 "3edc3c81e75d7f4d5372cd40c7da15f74694f7a16eb9d5ac1795c49edf92c284"

  url "https://valhallaproduction.s3-us-west-2.amazonaws.com/spacemod/ValhallaSpaceModulatorOSXBeta_#{version.dots_to_underscores}.zip",
      verified: "valhallaproduction.s3-us-west-2.amazonaws.com/"
  appcast "https://valhalladsp.com/shop/modulation/valhalla-space-modulator/"
  name "Valhalla Space Modulator"
  homepage "https://valhalladsp.com/shop/modulation/valhalla-space-modulator/"

  pkg "ValhallaSpaceModulatorOSXBeta.pkg"

  uninstall pkgutil: [
    "com.valhalladsp.SpaceModulator.pkg.aax",
    "com.valhalladsp.SpaceModulator.pkg.au",
    "com.valhalladsp.SpaceModulator.pkg.presets",
    "com.valhalladsp.SpaceModulator.pkg.vst",
    "com.valhalladsp.SpaceModulator.pkg.vst3",
  ]
end
