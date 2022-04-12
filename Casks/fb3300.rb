cask "fb3300" do
  if MacOS.version <= :mojave
    version "1.2.0"
    sha256 "0e1fe376647ab1aebf7d961843027f3e84c76b736263210eb4e720990f21a305"
    url "https://www.fullbucket.de/music/dl/fb3300_#{version.dots_to_underscores}_N_mac.pkg"
  else
    version "1.2.1"
    sha256 "75ae81d27f1671ac5b23624573c2c0006d0c0d47bb61784bc26705c543c9fbfb"
    url "https://www.fullbucket.de/music/dl/fb3300_#{version.dots_to_underscores}_mac.pkg"
  end

  name "FB-3300"
  desc "KORG PS-3300 simulation"
  homepage "https://www.fullbucket.de/music/fb3300.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  if MacOS.version <= :mojave
    pkg "fb3300_#{version.dots_to_underscores}_N_mac.pkg"

    uninstall pkgutil: [
      "com.fullbucket.audiounit.pkg.FB3300",
      "com.fullbucket.vst.pkg.FB3300",
    ]
  else
    pkg "fb3300_#{version.dots_to_underscores}_mac.pkg"

    uninstall pkgutil: [
      "de.fullbucket.audiounit.pkg.FB3300",
      "de.fullbucket.vst.pkg.FB3300",
      "de.fullbucket.vst3.pkg.FB3300",
    ]
  end
end
