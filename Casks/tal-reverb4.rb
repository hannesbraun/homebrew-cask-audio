cask "tal-reverb4" do
  version "2.2.7"
  sha256 "00e1735ee7aee5a4b1881f9a4f142523178bc3558f980e7b08dd0362cdd844c2"

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
