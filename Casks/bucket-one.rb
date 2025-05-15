cask "bucket-one" do
  version "1.1.2"
  sha256 "7e66f859f2ced42b11adc79f2c1abb218988512831780e94b6370c3c2c150982"

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
