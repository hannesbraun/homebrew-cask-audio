cask "valhallasupermassive" do
  version "3.0.0"
  sha256 "a416c6bfb2e2383de30832c84a960bbbc6032c9cc8d747cd27086c658ddea6ce"

  url "https://valhallaproduction.s3-us-west-2.amazonaws.com/supermassive/ValhallaSupermassiveOSX_#{version.dots_to_underscores}v3.dmg",
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
