cask "whispair" do
  version "1.1.4"
  sha256 "529209aeaa17a449b9cf4a3d8306db000f4cbb43fa531ba4328711636d4dfbdf"

  url "https://www.fullbucket.de/music/dl/whispair_#{version.dots_to_underscores}_mac.pkg"
  name "WhispAir"
  desc "Wavetable synthesizer"
  homepage "https://www.fullbucket.de/music/whispair.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "whispair_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.WhispAir",
    "de.fullbucket.vst.pkg.WhispAir",
    "de.fullbucket.vst3.pkg.WhispAir",
  ]
end
