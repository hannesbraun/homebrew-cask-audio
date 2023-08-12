cask "fb7999" do
  version "1.1.3"
  sha256 "4e83f20a5ba748428623f41baad6e2415fefedb3115aefb599eae80e31411859"

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
end
