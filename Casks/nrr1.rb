cask "nrr1" do
  version "3.0.0"
  sha256 "3680e1b90c69ca8b85390d2cc566e67d832e8f948cb7ed139639fbbed6b9502a"

  url "https://static.kvraudio.com/files/1546/ignite_amps_nrr-1_#{version.dots_to_underscores}_mac.zip",
      verified: "static.kvraudio.com/"
  name "NRR-1"
  desc "Digital emulation of a three channels tube preamplifier for guitar"
  homepage "https://www.igniteamps.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/NRR-1 v(\d+(?:\.\d+)*)/)
  end

  audio_unit_plugin "AU/NRR-1.component"
  vst_plugin "VST/NRR-1.vst"
  vst3_plugin "VST3/NRR-1.vst3"
end
