cask "tal-reverb3" do
  version "2.2.2"
  sha256 "b410ff326d8696142071eb83e013085e32aed864498dfe68a98908a7ddcdff2e"

  url "https://tal-software.com//downloads/plugins/TAL-reverb-3-installer.pkg"
  name "TAL-Reverb-3"
  homepage "https://tal-software.com/products/tal-reverb"

  pkg "TAL-reverb-3-installer.pkg"

  uninstall pkgutil: [
    "com.talsoftware.pkg.TAL-Reverb-3-AAX",
    "com.talsoftware.pkg.TAL-Reverb-3-VST3",
    "com.talsoftware.pkg.TAL-Reverb-3-VST",
    "com.talsoftware.pkg.TAL-Reverb-3-AU",
  ]
end
