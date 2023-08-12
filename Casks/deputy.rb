cask "deputy" do
  version "1.3.1"
  sha256 "f607441bea74ef22e39f9b5722f82e9fe089cba65d8739beb0f7f4848185957a"

  url "https://www.fullbucket.de/music/dl/deputy_#{version.dots_to_underscores}_mac.pkg"
  name "The Deputy Mark II"
  desc "String synthesizer"
  homepage "https://www.fullbucket.de/music/deputy.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "deputy_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.Deputy",
    "de.fullbucket.vst.pkg.Deputy",
    "de.fullbucket.vst3.pkg.Deputy",
  ]
end
