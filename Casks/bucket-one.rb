cask "bucket-one" do
  version "1.0.0"
  sha256 "d281774811f8860a25370c8ce864ad941b888a9b3e02ef1110df0a2b40317930"

  url "https://www.fullbucket.de/music/dl/bucketone_#{version.dots_to_underscores}_mac.pkg"
  name "Bucket ONE"
  desc "Crumar BIT 01/99 simulation"
  homepage "https://www.fullbucket.de/music/bucketone.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "pecs_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.BucketOne",
    "de.fullbucket.vst.pkg.BucketOne",
    "de.fullbucket.vst3.pkg.BucketOne",
  ]
end
