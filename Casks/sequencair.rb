cask "sequencair" do
  version "1.1.10"
  sha256 "c846ce9ef7d4f312b7233215224bdc5c4769ac20a9ed38098f91423dcf6cd625"

  url "https://www.fullbucket.de/music/dl/sequencair_#{version.dots_to_underscores}_mac.pkg"
  name "SequencAir"
  desc "Step sequencer/synthesizer"
  homepage "https://www.fullbucket.de/music/sequencair.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "sequencair_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "com.fullbucket.app.pkg.SequencAir",
    "com.fullbucket.vst.pkg.SequencAir",
  ]

  zap trash: "~/Library/Application Support/FullBucketMusic"
end
