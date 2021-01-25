cask "tdr-kotelnikov" do
  version "1.6.3"
  sha256 "d2d551b5c63fd66f38154e10f80c8ab36d516702404810503628a1f12dae778c"

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
