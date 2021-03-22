cask "tal-vocoder" do
  version "2.2.0"
  sha256 :no_check

  url "https://tal-software.com//downloads/plugins/tal-vocoder-2-installer.pkg"
  name "TAL-Vocoder"
  homepage "https://tal-software.com/products/tal-vocoder"

  pkg "tal-vocoder-2-installer.pkg"

  uninstall pkgutil: [
    "com.talsoftware.pkg.TAL-Vocoder-2-AAX",
    "com.talsoftware.pkg.TAL-Vocoder-2-VST3",
    "com.talsoftware.pkg.TAL-Vocoder-2-VST",
    "com.talsoftware.pkg.TAL-Vocoder-2-AU",
  ]
end
