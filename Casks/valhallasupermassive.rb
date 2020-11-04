cask "valhallasupermassive" do
  version "1.1.1"
  sha256 "ffeca951c67ab6053b1f3cf58c9b0ac05faffa6efed63c8243e4f1018fb0a6e8"

  # valhallaproduction.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://valhallaproduction.s3-us-west-2.amazonaws.com/supermassive/ValhallaSupermassiveOSX_#{version.dots_to_underscores}.zip"
  appcast "https://valhalladsp.com/shop/reverb/valhalla-supermassive/"
  name "Valhalla Supermassive"
  homepage "https://valhalladsp.com/shop/reverb/valhalla-supermassive/"

  pkg "ValhallaSupermassiveOSX.pkg"

  uninstall pkgutil: [
    "com.valhalladsp.supermassive.pkg.aax",
    "com.valhalladsp.supermassive.pkg.au",
    "com.valhalladsp.supermassive.pkg.presets",
    "com.valhalladsp.supermassive.pkg.vst",
    "com.valhalladsp.supermassive.pkg.vst3",
  ]
end
