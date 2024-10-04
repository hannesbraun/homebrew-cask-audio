cask "tal-chorus-lx" do
  version "1.6.0"
  sha256 :no_check

  url "https://tal-software.com//downloads/plugins/tal-chorus-lx-installer.pkg"
  name "TAL-Chorus-LX"
  homepage "https://tal-software.com/products/tal-chorus-lx"

  pkg "tal-chorus-lx-installer.pkg"

  uninstall pkgutil: [
    "com.talsoftware.pkg.TAL-Chorus-LX-AAX",
    "com.talsoftware.pkg.TAL-Chorus-LX-AU",
    "com.talsoftware.pkg.TAL-Chorus-LX-VST",
    "com.talsoftware.pkg.TAL-Chorus-LX-VST3",
  ]
end
