cask "tdr-nova" do
  version "2.1.5"
  sha256 "0471edca6a0b8943a104d948a6870be74066847c4224afd31853bb4ab33460aa"

  url "https://www.tokyodawn.net/labs/Nova/#{version}/TDR%20Nova.zip"
  name "TDR Nova"
  desc "Parallel dynamic equalizer"
  homepage "https://www.tokyodawn.net/tdr-nova/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{(\d+(?:\.\d+)*)/TDR Nova\.zip})
  end

  pkg "TDR Nova.pkg"

  uninstall pkgutil: [
    "com.TokyoDawnLabs.TDRNova.AAX",
    "com.TokyoDawnLabs.TDRNova.AU",
    "com.TokyoDawnLabs.TDRNova.VST",
    "com.TokyoDawnLabs.TDRNova.VST3",
  ]
end
