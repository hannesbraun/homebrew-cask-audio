cask "whispair" do
  version "1.1.0"

  if MacOS.version <= :mojave
    sha256 "790bf982dfffc2f40268bb72fabeb12a8a4550b8d57de2b13656ab502470df1d"
    url "https://www.fullbucket.de/music/dl/whispair_#{version.dots_to_underscores}_N_mac.pkg"
  else
    sha256 "3398bdd478a68f3c7cb24a8f79cdc6ef68ebbc9eeae531ad47c56bdd61ba2762"
    url "https://www.fullbucket.de/music/dl/whispair_#{version.dots_to_underscores}_mac.pkg"
  end

  name "WhispAir"
  desc "Wavetable synthesizer"
  homepage "https://www.fullbucket.de/music/whispair.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  if MacOS.version <= :mojave
    pkg "whispair_#{version.dots_to_underscores}_N_mac.pkg"
  else
    pkg "whispair_#{version.dots_to_underscores}_mac.pkg"
  end

  if MacOS.version <= :mojave
    uninstall pkgutil: [
      "de.fullbucket.audiounit.pkg.WhispAir",
      "de.fullbucket.vst.pkg.WhispAir",
      "de.fullbucket.vst3.pkg.WhispAir",
    ]
  else
    uninstall pkgutil: [
      "com.fullbucket.audiounit.pkg.WhispAir",
      "com.fullbucket.vst.pkg.WhispAir",
    ]
  end
end
