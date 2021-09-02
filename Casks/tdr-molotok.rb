cask "tdr-molotok" do
  version "1.0.4"
  sha256 "8217a5185cbe114387f45ed2360e8d6808ab2d099da43bd850f92350b571f2df"

  url "https://www.tokyodawn.net/labs/Molotok/#{version}/TDR%20Molotok.zip"
  name "TDR Molotok"
  desc "Characterful dynamics processor"
  homepage "https://www.tokyodawn.net/tdr-molotok/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{(\d+(?:\.\d+)*)/TDR Molotok\.zip})
  end

  pkg "TDR Molotok.pkg"

  uninstall pkgutil: [
    "com.TokyoDawnLabs.TDRMolotok.AAX",
    "com.TokyoDawnLabs.TDRMolotok.AU",
    "com.TokyoDawnLabs.TDRMolotok.VST",
    "com.TokyoDawnLabs.TDRMolotok.VST3",
  ]
end
