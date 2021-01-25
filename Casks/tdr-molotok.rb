cask "tdr-molotok" do
  version "1.0.3"
  sha256 "7afeb390a221f1fe7018fb55e0c859ab2ca91108a367fac3b71eb1af96eef885"

  url "https://www.tokyodawn.net/labs/Molotok/#{version}/TDR%20Molotok.zip"
  appcast "https://www.tokyodawn.net/tdr-molotok/"
  name "TDR Molotok"
  desc "Characterful dynamics processor"
  homepage "https://www.tokyodawn.net/tdr-molotok/"

  pkg "TDR Molotok.pkg"

  uninstall pkgutil: [
    "com.TokyoDawnLabs.TDRMolotok.AAX",
    "com.TokyoDawnLabs.TDRMolotok.AU",
    "com.TokyoDawnLabs.TDRMolotok.VST",
    "com.TokyoDawnLabs.TDRMolotok.VST3",
  ]
end
