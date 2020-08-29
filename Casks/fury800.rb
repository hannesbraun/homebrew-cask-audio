cask "fury800" do
  version "2.0.0"
  sha256 "6857c25164dd396d5ded9a2cd51cc91f8e7f08c824fb6fb9336d75df46f14d1f"

  url "https://www.fullbucket.de/music/dl/fury800_#{version.dots_to_underscores}_mac.pkg"
  appcast "https://www.fullbucket.de/music/fury800.html"
  name "Fury-800"
  homepage "https://www.fullbucket.de/music/fury800.html"

  pkg "fury800_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.Fury800",
    "de.fullbucket.vst.pkg.Fury800",
  ]
end
