cask "tal-reverb3" do
  version "2.3.0"
  sha256 :no_check

  url "https://tal-software.com//downloads/plugins/TAL-reverb-3-installer.pkg"
  name "TAL-Reverb-3"
  homepage "https://tal-software.com/products/tal-reverb"

  pkg "TAL-reverb-3-installer.pkg"

  uninstall pkgutil: [
    "com.talsoftware.pkg.TAL-Reverb-3-AAX",
    "com.talsoftware.pkg.TAL-Reverb-3-AU",
    "com.talsoftware.pkg.TAL-Reverb-3-VST",
    "com.talsoftware.pkg.TAL-Reverb-3-VST3",
  ]
end
