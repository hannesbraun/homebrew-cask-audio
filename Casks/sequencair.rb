cask "sequencair" do
  version "1.1.4"
  sha256 "e325b8affa81dd0f77f8fb51f9bee58197736a5edfbf747ec6c0a246fe7480fa"

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

  zap trash: [
    "~/Library/Application Support/FullBucketMusic",
  ]
end
