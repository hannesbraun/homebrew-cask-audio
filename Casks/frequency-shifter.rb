cask "frequency-shifter" do
  version "2.0.2"
  sha256 "d5a7ac390f865a26d874364802028bc36909b4b9f4e9a2f87d0f02b7ee6cb537"

  url "https://www.fullbucket.de/music/dl/freqshifter_#{version.dots_to_underscores}_mac.pkg"
  name "Frequency Shifter"
  desc "Bode frequency shifter"
  homepage "https://www.fullbucket.de/music/freqshifter.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "freqshifter_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.FreqShifter",
    "de.fullbucket.vst.pkg.FreqShifter",
    "de.fullbucket.vst3.pkg.FreqShifter",
  ]
end
