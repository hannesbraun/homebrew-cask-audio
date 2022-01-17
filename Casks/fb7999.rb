cask "fb7999" do
  version "1.1.0"

  if MacOS.version <= :mojave
    sha256 "814601d3e76e98dd3ef203a9c26ca3655b58c50e86d3fba55f8acabb1d82d543"
    url "https://www.fullbucket.de/music/dl/fb7999_#{version.dots_to_underscores}_N_mac.pkg"
  else
    sha256 "70e66fa0901e989cafa74a0ad53f72db58d79c37c7d9af839ed81ddde2ddabc0"
    url "https://www.fullbucket.de/music/dl/fb7999_#{version.dots_to_underscores}_mac.pkg"
  end

  name "FB-7999"
  desc "Digital waveform synthesizer simulation"
  homepage "https://www.fullbucket.de/music/fb7999.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  if MacOS.version <= :mojave
    pkg "fb7999_#{version.dots_to_underscores}_N_mac.pkg"

    uninstall pkgutil: [
      "com.fullbucket.audiounit.pkg.FB7999",
      "com.fullbucket.vst.pkg.FB7999",
    ]
  else
    pkg "fb7999_#{version.dots_to_underscores}_mac.pkg"

    uninstall pkgutil: [
      "de.fullbucket.audiounit.pkg.FB7999",
      "de.fullbucket.vst.pkg.FB7999",
      "de.fullbucket.vst3.pkg.FB7999",
    ]
  end
end
