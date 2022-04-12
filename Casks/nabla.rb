cask "nabla" do
  version "1.3.0"
  sha256 "f86dc51c031758ac5f1f2d7385eba0041a3a339aaf45e21cde75af524799f1ac"

  url "https://www.fullbucket.de/music/dl/nabla_#{version.dots_to_underscores}_mac.pkg"
  name "Nabla"
  desc "KORG Delta DL-50 simulation"
  homepage "https://www.fullbucket.de/music/nabla.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "nabla_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.Nabla",
    "de.fullbucket.vst.pkg.Nabla",
    "de.fullbucket.vst3.pkg.Nabla",
  ]
end
