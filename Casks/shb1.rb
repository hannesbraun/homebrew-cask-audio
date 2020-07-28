cask "shb1" do
  version "1.0.0"
  sha256 "3c9dfd95a585cac1f1dc83a1db6132428e46d294641dc2129fb2d6d77cbf5479"

  # static.kvraudio.com was verified as official when first introduced to the cask
  url "https://static.kvraudio.com/files/1546/ignite_amps_shb-1_#{version.dots_to_underscores}_mac.zip"
  appcast "https://www.kvraudio.com/product/shb-1-by-ignite-amps/",
          must_contain: version.major_minor
  name "SHB-1"
  homepage "http://www.igniteamps.com/"

  audio_unit_plugin "AU/SHB-1.component"
  vst_plugin "VST/SHB-1.vst"
end
