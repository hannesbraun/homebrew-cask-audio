cask "shb1" do
  version "1.0.0"
  sha256 "3c9dfd95a585cac1f1dc83a1db6132428e46d294641dc2129fb2d6d77cbf5479"

  url "https://static.kvraudio.com/files/1546/ignite_amps_shb-1_#{version.dots_to_underscores}_mac.zip",
      verified: "static.kvraudio.com/"
  name "SHB-1"
  desc "Amp based on the real SHB-1 \"Extreme Bass Head\""
  homepage "https://www.igniteamps.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/SHB-1 v(\d+(?:\.\d+)*)/)
  end

  audio_unit_plugin "AU/SHB-1.component"
  vst_plugin "VST/SHB-1.vst"
end
