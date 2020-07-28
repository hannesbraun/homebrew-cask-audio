cask "tal-reverb2" do
  version "2.2.3"
  sha256 "03c6db0841f73c09fffb10ee6f1edc862fda7e1c904b2819f2ebb5fd7db1fc35"

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
