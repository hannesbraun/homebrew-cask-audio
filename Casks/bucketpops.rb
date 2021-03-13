cask "bucketpops" do
  version "1.0.2"
  sha256 "72a9bb64564818a816f07e4fddfdb631d56caa96e33c8549de02f4bcffd9ec41"

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
  ]
end
