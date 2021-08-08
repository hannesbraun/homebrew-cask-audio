cask "monofury" do
  version "2.2.6"
  sha256 "fc2c0e0fa368dca101beeba5285d56b21a083a9bbc6a082108dd1a21cdb64c0d"

  url "https://www.fullbucket.de/music/dl/monofury_#{version.dots_to_underscores}_mac.pkg"
  name "Mono/Fury"
  desc "KORG Mono/Poly simulation"
  homepage "https://www.fullbucket.de/music/monofury.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "monofury_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.MonoFury",
    "de.fullbucket.vst.pkg.MonoFury",
  ]

  caveats do
    reboot
  end
end
