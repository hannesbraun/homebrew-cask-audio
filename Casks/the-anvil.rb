cask "the-anvil" do
  version "3.0.0"
  sha256 "4e4c6e51d00ec18e98c5e83465f399fc01c7fb612b6f88d51e420d9988f42ec1"

  # static.kvraudio.com was verified as official when first introduced to the cask
  url "https://static.kvraudio.com/files/1546/ignite_amps_the_anvil_#{version.dots_to_underscores}_mac.zip"
  appcast "https://www.kvraudio.com/product/the-anvil-by-ignite-amps/"
  name "The Anvil"
  homepage "http://www.igniteamps.com/"

  audio_unit_plugin "AU/Anvil.component"
  vst_plugin "VST/Anvil.vst"
  vst3_plugin "VST3/Anvil.vst3"
end
