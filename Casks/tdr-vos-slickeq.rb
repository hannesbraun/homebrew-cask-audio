cask "tdr-vos-slickeq" do
  version "1.3.7"
  sha256 "c663b854bfaa322d62c74ed287dfba845dd82a20b95fcaa64ed0771e123a0ab2"

  url "https://www.tokyodawn.net/labs/SlickEQ/#{version}/TDR%20VOS%20SlickEQ.zip"
  name "TDR VOS SlickEQ"
  desc "Mixing/mastering equalizer"
  homepage "https://www.tokyodawn.net/tdr-vos-slickeq/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{(\d+(?:\.\d+)*)/TDR VOS SlickEQ\.zip})
  end

  pkg "TDR VOS SlickEQ.pkg"

  uninstall pkgutil: [
    "com.TokyoDawnLabs.TDRVOSSlickEQ.AAX",
    "com.TokyoDawnLabs.TDRVOSSlickEQ.AU",
    "com.TokyoDawnLabs.TDRVOSSlickEQ.VST",
    "com.TokyoDawnLabs.TDRVOSSlickEQ.VST3",
  ]
end
