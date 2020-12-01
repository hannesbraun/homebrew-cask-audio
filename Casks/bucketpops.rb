cask "bucketpops" do
  version "1.0.0"
  sha256 "b0e656c822fefff48410a3e9d71c2b1f6ea75753b6afc8bf8a21a1b07f83f407"

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
