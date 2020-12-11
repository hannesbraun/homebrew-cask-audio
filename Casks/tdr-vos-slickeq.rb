cask "tdr-vos-slickeq" do
  version "1.3.5"
  sha256 "a0507f45740e284f185b19732bce5d6722a9ee204ccae0b258a14a58a4a3fd7b"

  url "https://www.tokyodawn.net/labs/SlickEQ/#{version}/TDR%20VOS%20SlickEQ.zip"
  appcast "https://www.tokyodawn.net/tdr-vos-slickeq/"
  name "TDR VOS SlickEQ"
  desc "Mixing/mastering equalizer"
  homepage "https://www.tokyodawn.net/tdr-vos-slickeq/"

  pkg "TDR VOS SlickEQ.pkg"

  uninstall pkgutil: [
    "com.TokyoDawnLabs.TDRVOSSlickEQ.AAX",
    "com.TokyoDawnLabs.TDRVOSSlickEQ.AU",
    "com.TokyoDawnLabs.TDRVOSSlickEQ.VST",
    "com.TokyoDawnLabs.TDRVOSSlickEQ.VST3",
  ]
end
