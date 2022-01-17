cask "bucketpops" do
  version "1.1.0"

  if MacOS.version <= :mojave
    sha256 "ca1b52a3b48d00c7605ccae2f9fd4fdd6afbfc26625d111b59c257f93858697e"
    url "https://www.fullbucket.de/music/dl/bucketpops_#{version.dots_to_underscores}_N_mac.pkg"
  else
    sha256 "f20b64a433bf2dd94fe90e91ecc00d2f7e50557b57bcf1bbb7985c2cd7ae1344"
    url "https://www.fullbucket.de/music/dl/bucketpops_#{version.dots_to_underscores}_mac.pkg"
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
    pkg "bucketpops_#{version.dots_to_underscores}_N_mac.pkg"

    uninstall pkgutil: [
      "com.fullbucket.audiounit.pkg.BucketPops",
      "com.fullbucket.vst.pkg.BucketPops",
    ]
  else
    pkg "bucketpops_#{version.dots_to_underscores}_mac.pkg"

    uninstall pkgutil: [
      "de.fullbucket.audiounit.pkg.BucketPops",
      "de.fullbucket.vst.pkg.BucketPops",
      "de.fullbucket.vst3.pkg.BucketPops",
    ]
  end
end
