cask "fb7999" do
  version "1.1.6"
  sha256 "6bec4107160542feaa7d62a370b58c714c9e65cdcd07fcf880908dc6b00ac1ae"

  url "https://www.fullbucket.de/music/dl/fb7999_#{version.dots_to_underscores}_mac.pkg"
  name "FB-7999"
  desc "Digital waveform synthesizer simulation"
  homepage "https://www.fullbucket.de/music/fb7999.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "fb7999_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.FB7999",
    "de.fullbucket.vst.pkg.FB7999",
    "de.fullbucket.vst3.pkg.FB7999",
  ]

  zap trash: "~/Music/FullBucketMusic/fb7999.ini"
end
