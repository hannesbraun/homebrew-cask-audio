cask "tdr-vos-slickeq" do
  version "1.3.6"
  sha256 "cd7e5238e682f163b1f6890cfe8976cf42fb8a9755421d9a7575e060e912f030"

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
