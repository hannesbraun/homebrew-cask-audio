cask "fb7999" do
  version "1.1.1"

  on_mojave :or_older do
    sha256 "6955338793d12b9b3da368bd442279e4817f59e7bac1ad908b6e20833fa2ec1b"

    url "https://www.fullbucket.de/music/dl/fb7999_#{version.dots_to_underscores}_N_mac.pkg"

    pkg "fb7999_#{version.dots_to_underscores}_N_mac.pkg"

    uninstall pkgutil: [
      "com.fullbucket.audiounit.pkg.FB7999",
      "com.fullbucket.vst.pkg.FB7999",
    ]
  end
  on_catalina :or_newer do
    sha256 "30870ab76c5d69c6aa049ff51238509118ffc5d6453a8faec19473bd1c0771ee"

    url "https://www.fullbucket.de/music/dl/fb7999_#{version.dots_to_underscores}_mac.pkg"

    pkg "fb7999_#{version.dots_to_underscores}_mac.pkg"

    uninstall pkgutil: [
      "de.fullbucket.audiounit.pkg.FB7999",
      "de.fullbucket.vst.pkg.FB7999",
      "de.fullbucket.vst3.pkg.FB7999",
    ]
  end

  name "FB-7999"
  desc "Digital waveform synthesizer simulation"
  homepage "https://www.fullbucket.de/music/fb7999.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end
end
