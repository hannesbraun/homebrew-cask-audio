cask "fury800" do
  version "2.1.0"
  sha256 "12356a8ca23554dc51fef40c971fa510f8dc1ab49d602c537389e476a80f8be7"

  url "https://www.fullbucket.de/music/dl/fury800_#{version.dots_to_underscores}_mac.pkg"
  appcast "https://www.fullbucket.de/music/fury800.html"
  name "Fury-800"
  desc "KORG Poly-800 simulation"
  homepage "https://www.fullbucket.de/music/fury800.html"

  pkg "fury800_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.Fury800",
    "de.fullbucket.vst.pkg.Fury800",
  ]
end
