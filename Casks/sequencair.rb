cask "sequencair" do
  version "1.1.9"
  sha256 "acaeb5c5cb718905957de6a4c7221e99c89d0b18ca809deca646bd8a7f905d95"

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
