cask "bucketpops" do
  version "1.0.1"
  sha256 "2666cbc13ba2a77e237bc3f6bc60f77be09f15601ba9bc899f278360b3bfd285"

  url "https://www.fullbucket.de/music/dl/bucketpops_#{version.dots_to_underscores}_mac.pkg"
  appcast "https://www.fullbucket.de/music/bucketpops.html"
  name "Bucket Pops"
  desc "KORG Mini Pops-7 simulation"
  homepage "https://www.fullbucket.de/music/bucketpops.html"

  pkg "bucketpops_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.BucketPops",
    "de.fullbucket.vst.pkg.BucketPops",
  ]
end
