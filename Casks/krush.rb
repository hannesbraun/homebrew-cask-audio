cask "krush" do
  version "1.2.5"
  sha256 "5f3f03d07b7d13f5fd2b1cdb5b48137d1e43d4000a89b0f34403fdbe5687c642"

  url "https://www.tritik.com/downloads/plugins/krush/Tritik_Krush_v#{version}_macOS.zip"
  name "Krush"
  desc "Bitcrusher"
  homepage "https://www.tritik.com/products/krush/"

  livecheck do
    strategy :page_match
    url :homepage
    regex(/version (\d+(?:\.\d+)*)/)
  end

  pkg "Tritik_Krush_v#{version}.pkg"

  uninstall pkgutil: [
    "com.tritik.pkg.KrushFactoryPresets",
    "com.tritik.pkg.KrushRyManningPresets",
    "com.tritik.pkg.Tritik-Krush-AAX",
    "com.tritik.pkg.Tritik-Krush-AU",
    "com.tritik.pkg.Tritik-Krush-VST",
    "com.tritik.pkg.Tritik-Krush-VST3",
  ]
end
