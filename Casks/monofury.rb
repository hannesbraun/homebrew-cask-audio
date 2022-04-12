cask "monofury" do
  version "2.3.0"
  sha256 "e3c4ae666fc8fefa96d69abc41eb532c5fa92f2359edb80997c485ec00278475"

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
    "de.fullbucket.vst3.pkg.MonoFury",
  ]
end
