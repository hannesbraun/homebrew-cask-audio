cask "pteq-x" do
  version "1.1.1"
  sha256 "f683482e8c9d5e0d247b776b80f36428cbf79f47534d5e9fce3925f4486e4c44"

  # static.kvraudio.com was verified as official when first introduced to the cask
  url "https://static.kvraudio.com/files/1546/ignite_amps_pteq-x_#{version.dots_to_underscores}_mac.zip"
  appcast "https://www.kvraudio.com/product/pteq-x-by-ignite-amps/"
  name "PTEq-X"
  desc "Digital emulation of 3 famous vintage passive program equalizers"
  homepage "http://www.igniteamps.com/"

  audio_unit_plugin "AU/PTEq-X.component"
  vst_plugin "VST/PTEq-X.vst"
  vst3_plugin "VST3/PTEq-X.vst3"
end
