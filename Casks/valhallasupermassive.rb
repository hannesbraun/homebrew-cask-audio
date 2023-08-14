cask "valhallasupermassive" do
  version "2.5.0"
  sha256 "393a92c77b02625c539b233be471a2fb3e93eb1ff43b7f9f8956f77dde72323e"

  url "https://valhallaproduction.s3-us-west-2.amazonaws.com/supermassive/ValhallaSupermassiveOSX_#{version.dots_to_underscores}.dmg",
      verified: "valhallaproduction.s3-us-west-2.amazonaws.com/"
  name "Valhalla Supermassive"
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
