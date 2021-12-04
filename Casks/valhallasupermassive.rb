cask "valhallasupermassive" do
  version "1.5.0"
  sha256 "90ec407a01aa59a47d22c0236521cafe4e01ba75f78b389c94461f943bf5d124"

  url "https://valhallaproduction.s3-us-west-2.amazonaws.com/supermassive/ValhallaSupermassiveOSX_#{version.dots_to_underscores}v2.zip",
      verified: "valhallaproduction.s3-us-west-2.amazonaws.com/"
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
