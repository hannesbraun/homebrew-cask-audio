cask "tricent" do
  version "1.0.7"
  sha256 "44edce54522de9c086bb034ce6f6827f3d23ddfeeac3df109f1a70055eec8f5a"

  url "https://www.fullbucket.de/music/dl/tricent_#{version.dots_to_underscores}_mac.pkg"
  name "Tricent mk III"
  desc "Polyphonic synthesizer ensemble"
  homepage "https://www.fullbucket.de/music/tricent.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "tricent_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "com.fullbucket.audiounit.pkg.Tricent",
    "com.fullbucket.vst.pkg.Tricent",
  ]
end
