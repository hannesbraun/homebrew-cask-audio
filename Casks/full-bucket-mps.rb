cask "full-bucket-mps" do
  version "1.1.7"

  if MacOS.version <= :mojave
    sha256 "0bd319922d409c5b75fa1f0feb608918f9986b15a244cb5841ccd7cbfbd13326"
    url "https://www.fullbucket.de/music/dl/mps_#{version.dots_to_underscores}_mac.pkg"
  else
    sha256 "c62f3601b2d1a50adeda4efa7359876355365172e8330bbf9e84283b42d5a84a"
    url "https://www.fullbucket.de/music/dl/mps_#{version.dots_to_underscores}_METAL_mac.pkg"
  end

  name "MPS"
  desc "Musical parameter synthesizer"
  homepage "https://www.fullbucket.de/music/mps.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  if MacOS.version <= :mojave
    pkg "mps_#{version.dots_to_underscores}_mac.pkg"
  else
    pkg "mps_#{version.dots_to_underscores}_METAL_mac.pkg"
  end

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.MPS",
    "de.fullbucket.vst.pkg.MPS",
  ]
end
