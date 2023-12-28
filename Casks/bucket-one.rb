cask "bucket-one" do
  version "1.1.0"
  sha256 "dd8c1edafedc3736872cc36fde5121f868dc3c6044c0b20b77b3a3d6c3c353ac"

  url "https://www.fullbucket.de/music/dl/bucketone_#{version.dots_to_underscores}_mac.pkg"
  name "Bucket ONE"
  desc "Crumar BIT 01/99 simulation"
  homepage "https://www.fullbucket.de/music/bucketone.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "bucketone_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.BucketOne",
    "de.fullbucket.vst.pkg.BucketOne",
    "de.fullbucket.vst3.pkg.BucketOne",
  ]
end
