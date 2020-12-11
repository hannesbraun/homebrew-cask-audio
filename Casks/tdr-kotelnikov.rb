cask "tdr-kotelnikov" do
  version "1.6.2"
  sha256 "07c5f75a4b5da0c1676a8861553b6e605b730c96c794aafbfdf3b348ae9aaef6"

  url "https://www.tokyodawn.net/labs/Kotelnikov/#{version}/TDR%20Kotelnikov.zip"
  appcast "https://www.tokyodawn.net/tdr-kotelnikov/"
  name "TDR Kotelnikov"
  desc "Mastering compressor"
  homepage "https://www.tokyodawn.net/tdr-kotelnikov/"

  pkg "TDR Kotelnikov.pkg"

  uninstall pkgutil: [
    "com.TokyoDawnLabs.TDRKotelnikov.AAX",
    "com.TokyoDawnLabs.TDRKotelnikov.AU",
    "com.TokyoDawnLabs.TDRKotelnikov.VST",
    "com.TokyoDawnLabs.TDRKotelnikov.VST3",
  ]
end
