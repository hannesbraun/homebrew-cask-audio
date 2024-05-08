cask "nova67p" do
  version "1.0.3b"
  sha256 "44d61f09aff16e217f934d8ad04319dd4a1e6246e8da322127423f0d5376f101"

  url "https://www.tokyodawn.net/labs/vladgsound/Nova67P_v#{version.dots_to_underscores}-Mac.dmg"
  name "VladG Nova-67P"
  desc "Parallel parametric equalizer combined with a compressor"
  homepage "https://www.tokyodawn.net/vladg-nova-67p/"

  deprecate! date: "2024-05-08", because: :discontinued

  audio_unit_plugin "Nova67P.component"
  vst_plugin "Nova67P.vst"
end
