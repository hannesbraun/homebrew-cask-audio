cask "tpa1" do
  version "1.0.1"
  sha256 "a1e2e7ab9eaaaa58b3c8e59fe23dfe4fb575ce6cbc68227fd9a302461e03c26c"

  url "https://static.kvraudio.com/files/1546/ignite_amps_tpa-1_#{version.dots_to_underscores}_mac.zip",
      verified: "static.kvraudio.com/"
  name "TPA-1"
  homepage "http://www.igniteamps.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/TPA-1 v(\d+(?:\.\d+)*)/)
  end

  audio_unit_plugin "AU/TPA-1.component"
  vst_plugin "VST/TPA-1.vst"
end
