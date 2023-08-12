cask "fury800" do
  version "2.4.2"
  sha256 "4e4654624f085ad7f16ff59726efcef8d79e71e670191242c47033c64a3f02ec"

  url "https://www.fullbucket.de/music/dl/fury800_#{version.dots_to_underscores}_mac.pkg"
  name "Fury-800"
  desc "KORG Poly-800 simulation"
  homepage "https://www.fullbucket.de/music/fury800.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "fury800_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.Fury800",
    "de.fullbucket.vst.pkg.Fury800",
    "de.fullbucket.vst3.pkg.Fury800",
  ]
end
