cask "limiter-no6" do
  version "1.0.2b"
  sha256 "f70ef9de688032ab626fc8eecc4d8b577b1006b6e679b0a5192316c64c6ef72c"

  url "https://www.tokyodawn.net/labs/vladgsound/Limiter6-v#{version.no_dots}-gui1.dmg"
  name "VladG Limiter No6"
  desc "Modular limiter"
  homepage "https://www.tokyodawn.net/vladg-limiter-n6/"

  deprecate! date: "2024-05-08", because: :discontinued

  audio_unit_plugin "Limiter6.component"
  vst_plugin "Limiter6.vst"
end
