cask "tal-reverb2" do
  version "2.2.3"
  sha256 :no_check

  url "https://tal-software.com//downloads/plugins/TAL-reverb-2-installer.pkg"
  name "TAL-Reverb-2"
  homepage "https://tal-software.com/products/tal-reverb"

  pkg "TAL-reverb-2-installer.pkg"

  uninstall pkgutil: [
    "com.talsoftware.pkg.TAL-Reverb-4-AAX",
    "com.talsoftware.pkg.TAL-Reverb-4-VST3",
    "com.talsoftware.pkg.TAL-Reverb-4-VST",
    "com.talsoftware.pkg.TAL-Reverb-4-AU",
  ]
end
