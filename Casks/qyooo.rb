cask "qyooo" do
  version "1.2.1"
  sha256 "e0fcde90d6516d6c05a2942a32e9a877e8293b00bcbfce6a1b52906bce005c2b"

  url "https://www.fullbucket.de/music/dl/qyooo_#{version.dots_to_underscores}_mac.pkg"
  name "the qyooo"
  desc "Complex modulation synthesizer"
  homepage "https://www.fullbucket.de/music/qyooo.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "qyooo_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.qyooo",
    "de.fullbucket.vst.pkg.qyooo",
    "de.fullbucket.vst3.pkg.qyooo",
  ]
end
