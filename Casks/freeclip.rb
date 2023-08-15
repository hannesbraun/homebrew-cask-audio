cask "freeclip" do
  version "0.9.2"
  sha256 "1e3a2356acd3249a3054e00c6be22cf364e4863ba71931b5440bc9f93878e38e"

  url "https://www.vennaudio.com/downloads/Free%20Clip%20#{version}.dmg"
  appcast "https://www.vennaudio.com/free-clip/"
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
