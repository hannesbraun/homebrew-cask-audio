cask "molot" do
  version "0.3.1b"
  sha256 "153e41be25d46a09512ba9ee566b4810f852db7a08dff6e2756216ce724ce0af"

  url "https://www.tokyodawn.net/labs/vladgsound/Molot#{version.no_dots}.dmg"
  name "VladG Molot Compressor"
  desc "Compressor plugin"
  homepage "https://www.tokyodawn.net/vladg-molot-compressor/"

  audio_unit_plugin "Molot.component"
  vst_plugin "Molot.vst"

  caveats do
    discontinued
  end
end
