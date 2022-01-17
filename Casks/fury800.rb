cask "fury800" do
  version "2.4.0"

  if MacOS.version <= :mojave
    sha256 "f9dd2b33876acf10697208b5a44fd968d54e64ce117d1b411ee81e54612eb6d7"
    url "https://www.fullbucket.de/music/dl/fury800_#{version.dots_to_underscores}_N_mac.pkg"
  else
    sha256 "a2c0105dace2a39edc2796a31f65d01adf034c8da4e7e1d60f7e8218b0a946ea"
    url "https://www.fullbucket.de/music/dl/fury800_#{version.dots_to_underscores}_mac.pkg"
  end

  name "Fury-800"
  desc "KORG Poly-800 simulation"
  homepage "https://www.fullbucket.de/music/fury800.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  if MacOS.version <= :mojave
    pkg "fury800_#{version.dots_to_underscores}_N_mac.pkg"

    uninstall pkgutil: [
      "com.fullbucket.audiounit.pkg.Fury800",
      "com.fullbucket.vst.pkg.Fury800",
    ]
  else
    pkg "fury800_#{version.dots_to_underscores}_mac.pkg"

    uninstall pkgutil: [
      "de.fullbucket.audiounit.pkg.Fury800",
      "de.fullbucket.vst.pkg.Fury800",
      "de.fullbucket.vst3.pkg.Fury800",
    ]
  end
end
