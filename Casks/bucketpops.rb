cask "bucketpops" do
  version "1.0.4"

  if MacOS.version <= :mojave
    sha256 "bdbb0d1500721fcd87edd7e87cec26d9efe0467b5491e5e37beac4ebfc8d3f4a"
    url "https://www.fullbucket.de/music/dl/bucketpops_#{version.dots_to_underscores}_mac.pkg"
  else
    sha256 "18b65fc2c6c3bd9eff8300db7568eb4574077b3006e8ff35b86f5790bfe4c9d9"
    url "https://www.fullbucket.de/music/dl/bucketpops_#{version.dots_to_underscores}_METAL_mac.pkg"
  end

  name "Bucket Pops"
  desc "KORG Mini Pops-7 simulation"
  homepage "https://www.fullbucket.de/music/bucketpops.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  if MacOS.version <= :mojave
    pkg "bucketpops_#{version.dots_to_underscores}_mac.pkg"
  else
    pkg "bucketpops_#{version.dots_to_underscores}_METAL_mac.pkg"
  end

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.BucketPops",
    "de.fullbucket.vst.pkg.BucketPops",
  ]
end
