cask "tdr-molotok" do
  version "1.0.3"
  sha256 "99395725acac039e9301937edc8407434ba271fb44898c81e1ba60889acfea8c"

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
