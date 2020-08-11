cask "tal-noisemaker" do
  version "4.5.3"
  sha256 "7ed94ae7af0c74cfec972f123b9f198f6961326fe5c2e6a4e3fed7bcc6ff1053"

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
