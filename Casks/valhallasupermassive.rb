cask "valhallasupermassive" do
  version "4.0.0"
  sha256 "6f64b1401cc788877bc19ad07b1d52039196b268702fdd1f458388b2f9954377"

  url "https://valhallaproduction.s3-us-west-2.amazonaws.com/supermassive/ValhallaSupermassiveOSX_#{version.dots_to_underscores}v4.dmg",
      verified: "valhallaproduction.s3-us-west-2.amazonaws.com/"
  name "Valhalla Supermassive"
  desc "Plugin for massive reverbs, harmonic echoes and space sounds"
  homepage "https://valhalladsp.com/shop/reverb/valhalla-supermassive/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Current Version:\s(\d+(?:\.\d+)+)/)
  end

  pkg "ValhallaSupermassiveOSX.pkg"

  uninstall pkgutil: [
    "com.valhalladsp.supermassive.pkg.aax",
    "com.valhalladsp.supermassive.pkg.au",
    "com.valhalladsp.supermassive.pkg.presets",
    "com.valhalladsp.supermassive.pkg.vst",
    "com.valhalladsp.supermassive.pkg.vst3",
  ]
end
