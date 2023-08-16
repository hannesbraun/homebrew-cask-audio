cask "the-anvil" do
  version "3.0.0"
  sha256 "4e4c6e51d00ec18e98c5e83465f399fc01c7fb612b6f88d51e420d9988f42ec1"

  url "https://static.kvraudio.com/files/1546/ignite_amps_the_anvil_#{version.dots_to_underscores}_mac.zip",
      verified: "static.kvraudio.com/"
  name "The Anvil"
  desc "Digital emulation of a three channels tube preamplifier for guitar"
  homepage "https://www.igniteamps.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/The Anvil v(\d+(?:\.\d+)*)/)
  end

  audio_unit_plugin "AU/Anvil.component"
  vst_plugin "VST/Anvil.vst"
  vst3_plugin "VST3/Anvil.vst3"
end
