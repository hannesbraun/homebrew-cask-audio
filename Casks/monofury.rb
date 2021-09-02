cask "monofury" do
  version "2.2.6"

  if MacOS.version <= :mojave
    sha256 "fc2c0e0fa368dca101beeba5285d56b21a083a9bbc6a082108dd1a21cdb64c0d"
    url "https://www.fullbucket.de/music/dl/monofury_#{version.dots_to_underscores}_mac.pkg"
  else
    sha256 "33cf66d72ad3f5fc4080d41f467c46f0f962113cf430b539efd7b7a9127a832a"
    url "https://www.fullbucket.de/music/dl/monofury_#{version.dots_to_underscores}_METAL_mac.pkg"
  end

  name "Mono/Fury"
  desc "KORG Mono/Poly simulation"
  homepage "https://www.fullbucket.de/music/monofury.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  if MacOS.version <= :mojave
    pkg "monofury_#{version.dots_to_underscores}_mac.pkg"
  else
    pkg "monofury_#{version.dots_to_underscores}_METAL_mac.pkg"
  end

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.MonoFury",
    "de.fullbucket.vst.pkg.MonoFury",
  ]
end
