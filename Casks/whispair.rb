cask "whispair" do
  version "1.0.3"

  if MacOS.version <= :mojave
    sha256 "aec66c9b220945859095d0a7ceb0f233c7d751544d75ab43fb7a6f024799102f"
    url "https://www.fullbucket.de/music/dl/whispair_#{version.dots_to_underscores}_mac.pkg"
  else
    sha256 "d42695158dfbad4d37f64f1f08e3405204739346be976db9ef65050f6a8b49e0"
    url "https://www.fullbucket.de/music/dl/whispair_#{version.dots_to_underscores}_METAL_mac.pkg"
  end

  name "WhispAir"
  desc "Wavetable synthesizer"
  homepage "https://www.fullbucket.de/music/whispair.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  if MacOS.version <= :mojave
    pkg "whispair_#{version.dots_to_underscores}_mac.pkg"
  else
    pkg "whispair_#{version.dots_to_underscores}_METAL_mac.pkg"
  end

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.WhispAir",
    "de.fullbucket.vst.pkg.WhispAir",
  ]
end
