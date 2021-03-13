cask "monofury" do
  version "2.2.5"
  sha256 "598a33854b73d405fb2f500b9f54fa0f0e806cf20004a4293d3409ff3dceef66"

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
