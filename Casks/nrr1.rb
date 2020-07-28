cask "nrr1" do
  version "3.0.0"
  sha256 "3680e1b90c69ca8b85390d2cc566e67d832e8f948cb7ed139639fbbed6b9502a"

  # static.kvraudio.com was verified as official when first introduced to the cask
  url "https://static.kvraudio.com/files/1546/ignite_amps_nrr-1_#{version.dots_to_underscores}_mac.zip"
  appcast "https://www.kvraudio.com/product/nrr-1-by-ignite-amps/"
  name "NRR-1"
  homepage "http://www.igniteamps.com/"

  audio_unit_plugin "AU/NRR-1.component"
  vst_plugin "VST/NRR-1.vst"
  vst3_plugin "VST3/NRR-1.vst3"
end
