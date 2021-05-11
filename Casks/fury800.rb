cask "fury800" do
  version "2.3.0"
  sha256 "695c19424ff0106dd9b63207ed2e90cdc1cdf3a0b4af9cd0dd32c95dcbba21cf"

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
  ]
end
