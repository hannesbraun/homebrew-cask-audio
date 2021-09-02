cask "fb3300" do
  version "1.1.6"

  if MacOS.version <= :mojave
    sha256 "590ce6297b316f84e48b97ac7fc1746f24aa38eb5d868d39038d823795328a20"
    url "https://www.fullbucket.de/music/dl/fb3300_#{version.dots_to_underscores}_mac.pkg"
  else
    sha256 "1136f00e5a0c2eeae075b3603f76222cef0ec0e6eb6e22c7e2a31fdbb349faa5"
    url "https://www.fullbucket.de/music/dl/fb3300_#{version.dots_to_underscores}_METAL_mac.pkg"
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
    pkg "fb3300_#{version.dots_to_underscores}_mac.pkg"
  else
    pkg "fb3300_#{version.dots_to_underscores}_METAL_mac.pkg"
  end

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.FB3300",
    "de.fullbucket.vst.pkg.FB3300",
  ]
end
