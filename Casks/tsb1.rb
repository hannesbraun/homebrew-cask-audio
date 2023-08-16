cask "tsb1" do
  version "1.0.1"
  sha256 "3d8c37c29dcb5eccfdc5ea9566037f87b111155353b378310d643f17abbbe2d5"

  url "https://static.kvraudio.com/files/1546/ignite_amps_tsb-1_#{version.dots_to_underscores}_mac.zip",
      verified: "static.kvraudio.com/"
  name "TSB-1 Tyrant Screamer"
  desc "Amp inspired by the most famous green \"808\" overdrive pedal"
  homepage "https://www.igniteamps.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/TSB-1 Tyrant Screamer v(\d+(?:\.\d+)*)/)
  end

  audio_unit_plugin "AU/TSB-1.component"
  vst_plugin "VST/TSB-1.vst"
end
