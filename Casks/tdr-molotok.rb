cask "tdr-molotok" do
  version "1.0.5"
  sha256 "f08968650bbe4facce0ba8a35313742b9a0882064fd35cae1af389d4e5de60ce"

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
