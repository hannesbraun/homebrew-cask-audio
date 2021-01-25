cask "tdr-nova" do
  version "2.1.4"
  sha256 "9cd1b070e08af529d31656c116388d6765be424d230e8bd5347389f2e3a0e54b"

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
