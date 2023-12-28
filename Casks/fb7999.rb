cask "fb7999" do
  version "1.1.4"
  sha256 "b83419326f37ab6f9e7937f428e750295a182c4120000fea3f07e4f22eaa9e8e"

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
