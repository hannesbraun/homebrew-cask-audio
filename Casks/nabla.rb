cask "nabla" do
  version "1.3.1"
  sha256 "d7e2cd91e5ed037ace2a07b19030c5cb9474f761971f171c529accd135919ea4"

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
