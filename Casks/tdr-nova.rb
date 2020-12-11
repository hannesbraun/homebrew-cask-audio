cask "tdr-nova" do
  version "2.1.3"
  sha256 "368246676adfee2bec51f3335c58c6e8e949f8a1e0c213bc499f60e3d90c2242"

  url "https://www.tokyodawn.net/labs/Nova/#{version}/TDR%20Nova.zip"
  appcast "https://www.tokyodawn.net/tdr-nova/"
  name "TDR Nova"
  desc "Parallel dynamic equalizer"
  homepage "https://www.tokyodawn.net/tdr-nova/"

  pkg "TDR Nova.pkg"

  uninstall pkgutil: [
    "com.TokyoDawnLabs.TDRNova.AAX",
    "com.TokyoDawnLabs.TDRNova.AU",
    "com.TokyoDawnLabs.TDRNova.VST",
    "com.TokyoDawnLabs.TDRNova.VST3",
  ]
end
