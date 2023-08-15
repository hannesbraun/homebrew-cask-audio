cask "freeclip" do
  version "0.9.2"
  sha256 "bfa4366e7b5c69449eae17aeeb2b33d81cef4d7158d45aa7a49b30d80aa78586"

  url "https://www.vennaudio.com/downloads/FreeClip/Free%20Clip%20#{version}.dmg"
  name "Free Clip"
  desc "Intuitive multi algorithm soft clipper"
  homepage "https://www.vennaudio.com/free-clip/"

  livecheck do
    strategy :page_match
    url :homepage
    regex(%r{Download Mac Audio Unit/VST v(\d+(?:\.\d+)*)})
  end

  audio_unit_plugin "FreeClip.component"
  vst_plugin "FreeClip.vst"
end
