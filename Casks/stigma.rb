cask "stigma" do
  version "1.2.5"
  sha256 "16748bcadf4f71e3e645520b79519657c920e296d4743e018b13ccf9ebe86ac6"

  url "https://www.fullbucket.de/music/dl/stigma_#{version.dots_to_underscores}_mac.pkg"
  appcast "https://www.fullbucket.de/music/stigma.html"
  name "Stigma"
  homepage "https://www.fullbucket.de/music/stigma.html"

  pkg "stigma_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.Stigma",
    "de.fullbucket.vst.pkg.Stigma",
  ]

  caveats do
    reboot
  end
end
