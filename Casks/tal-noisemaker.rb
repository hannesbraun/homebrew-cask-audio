cask "tal-noisemaker" do
  version "4.6.2"
  sha256 :no_check

  url "https://tal-software.com//downloads/plugins/tal-noisemaker-installer.pkg"
  name "TAL-NoiseMaker"
  homepage "https://tal-software.com/products/tal-noisemaker"

  pkg "tal-noisemaker-installer.pkg"

  uninstall pkgutil: [
    "com.talsoftware.pkg.TAL-NoiseMaker-AAX",
    "com.talsoftware.pkg.TAL-NoiseMaker-VST3",
    "com.talsoftware.pkg.TAL-NoiseMaker-VST",
    "com.talsoftware.pkg.TAL-NoiseMaker-AU",
  ]
end
