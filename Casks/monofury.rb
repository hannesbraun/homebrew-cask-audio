cask "monofury" do
  version "2.2.4"
  sha256 "ca708dd5f0dabead95a34fe7cd6d871cbfcfd191d016bdb1a220f53aea74168e"

  url "https://www.fullbucket.de/music/dl/monofury_#{version.dots_to_underscores}_mac.pkg"
  appcast "https://www.fullbucket.de/music/monofury.html"
  name "Mono/Fury"
  desc "KORG Mono/Poly Simulation"
  homepage "https://www.fullbucket.de/music/monofury.html"

  pkg "monofury_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.MonoFury",
    "de.fullbucket.vst.pkg.MonoFury",
  ]

  caveats do
    reboot
  end
end
