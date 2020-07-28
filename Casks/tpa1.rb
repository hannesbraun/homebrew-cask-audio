cask "tpa1" do
  version "1.0.1"
  sha256 "a1e2e7ab9eaaaa58b3c8e59fe23dfe4fb575ce6cbc68227fd9a302461e03c26c"

  # static.kvraudio.com was verified as official when first introduced to the cask
  url "https://static.kvraudio.com/files/1546/ignite_amps_tpa-1_#{version.dots_to_underscores}_mac.zip"
  appcast "https://www.kvraudio.com/product/tpa-1-by-ignite-amps/"
  name "TPA-1"
  homepage "http://www.igniteamps.com/"

  audio_unit_plugin "AU/TPA-1.component"
  vst_plugin "VST/TPA-1.vst"
end
