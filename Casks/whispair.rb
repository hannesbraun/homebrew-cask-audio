cask "whispair" do
  version "1.1.1"

  if MacOS.version <= :mojave
    sha256 "86ee4f3b6423d30284f318a944efdce9aad493eebea442abe778f4902ae2147f"
    url "https://www.fullbucket.de/music/dl/whispair_#{version.dots_to_underscores}_N_mac.pkg"
  else
    sha256 "1566de2749703d1fd12feddfb3d73e70017b309e944dddcd590bb6ecc961b454"
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

    uninstall pkgutil: [
      "com.fullbucket.audiounit.pkg.WhispAir",
      "com.fullbucket.vst.pkg.WhispAir",
    ]
  else
    pkg "whispair_#{version.dots_to_underscores}_mac.pkg"

    uninstall pkgutil: [
      "de.fullbucket.audiounit.pkg.WhispAir",
      "de.fullbucket.vst.pkg.WhispAir",
      "de.fullbucket.vst3.pkg.WhispAir",
    ]
  end
end
