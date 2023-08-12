cask "bucketpops" do
  version "1.1.5"
  sha256 "458f5086d72dc8b995f85399616b7d3a4118da2358567c5ee1eaed5814422f26"

  url "https://www.fullbucket.de/music/dl/bucketpops_#{version.dots_to_underscores}_mac.pkg"
  name "Bucket Pops"
  desc "KORG Mini Pops-7 simulation"
  homepage "https://www.fullbucket.de/music/bucketpops.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "bucketpops_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.BucketPops",
    "de.fullbucket.vst.pkg.BucketPops",
    "de.fullbucket.vst3.pkg.BucketPops",
  ]
end
