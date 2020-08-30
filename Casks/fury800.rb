cask "fury800" do
  version "2.0.1"
  sha256 "216c48718d5ffd87c650ad7c072d2bc32a4740db36f48fe94a4981a6d6124a8e"

  url "https://www.fullbucket.de/music/dl/fury800_#{version.dots_to_underscores}_mac.pkg"
  appcast "https://www.fullbucket.de/music/fury800.html"
  name "Fury-800"
  desc "KORG Poly-800 Simulation"
  homepage "https://www.fullbucket.de/music/fury800.html"

  pkg "fury800_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.Fury800",
    "de.fullbucket.vst.pkg.Fury800",
  ]
end
