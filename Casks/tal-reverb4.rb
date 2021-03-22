cask "tal-reverb4" do
  version "2.3.0"
  sha256 :no_check

  url "https://tal-software.com//downloads/plugins/tal-reverb-4-installer.pkg"
  name "TAL-Reverb-4"
  homepage "https://tal-software.com/products/tal-reverb-4"

  pkg "tal-reverb-4-installer.pkg"

  uninstall pkgutil: [
    "com.talsoftware.pkg.TAL-Reverb-4-AAX",
    "com.talsoftware.pkg.TAL-Reverb-4-VST3",
    "com.talsoftware.pkg.TAL-Reverb-4-VST",
    "com.talsoftware.pkg.TAL-Reverb-4-AU",
  ]
end
