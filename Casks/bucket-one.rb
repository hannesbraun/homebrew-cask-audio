cask "bucket-one" do
  version "1.1.1"
  sha256 "7e707b030ac7db9fa356daca6677cb8a243c1c0cfca9415063664b58f48a81cb"

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

  zap trash: "~/Music/FullBucketMusic/bucketone.ini"
end
