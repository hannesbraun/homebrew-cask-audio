cask "pteq-x" do
  version "1.1.0"
  sha256 "9a74a4ac0f6be019664008c0b96d40399c457ccfbacb9096d00f9ae6fc95a223"

  # static.kvraudio.com was verified as official when first introduced to the cask
  url "https://static.kvraudio.com/files/1546/ignite_amps_pteq-x_#{version.dots_to_underscores}_mac.zip"
  appcast "https://www.kvraudio.com/product/pteq-x-by-ignite-amps/"
  name "PTEq-X"
  homepage "http://www.igniteamps.com/"

  audio_unit_plugin "AU/PTEq-X.component"
  vst_plugin "VST/PTEq-X.vst"
  vst3_plugin "VST3/PTEq-X.vst3"
end
