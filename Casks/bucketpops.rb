cask "bucketpops" do
  version "1.1.1"

  on_mojave :or_older do
    sha256 "35215957aeff6cacf1ed81b742ac5450f894b6bfa16c753cf0b4124c28689c74"

    url "https://www.fullbucket.de/music/dl/bucketpops_#{version.dots_to_underscores}_N_mac.pkg"

    pkg "bucketpops_#{version.dots_to_underscores}_N_mac.pkg"

    uninstall pkgutil: [
      "com.fullbucket.audiounit.pkg.BucketPops",
      "com.fullbucket.vst.pkg.BucketPops",
    ]
  end
  on_catalina :or_newer do
    sha256 "d00e0e04641531e5b5a04dbd1080db54ff5e642f2c396980345b50231503d85f"

    url "https://www.fullbucket.de/music/dl/bucketpops_#{version.dots_to_underscores}_mac.pkg"

    pkg "bucketpops_#{version.dots_to_underscores}_mac.pkg"

    uninstall pkgutil: [
      "de.fullbucket.audiounit.pkg.BucketPops",
      "de.fullbucket.vst.pkg.BucketPops",
      "de.fullbucket.vst3.pkg.BucketPops",
    ]
  end

  name "Bucket Pops"
  desc "KORG Mini Pops-7 simulation"
  homepage "https://www.fullbucket.de/music/bucketpops.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end
end
