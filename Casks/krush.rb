cask "krush" do
  version "1.3.0"
  sha256 "bfefe698110dc3576c7f1c57f2ee827d4f053fd4ca83539fe297d50486a65390"

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
