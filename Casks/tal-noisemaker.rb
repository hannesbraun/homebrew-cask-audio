cask "tal-noisemaker" do
  version "5.0.6"
  sha256 :no_check

  url "https://tal-software.com//downloads/plugins/TAL-NoiseMaker-installer_macos.zip"
  name "TAL-NoiseMaker"
  desc "Virtual analog synthesizer"
  homepage "https://tal-software.com/products/tal-noisemaker"

  pkg "TAL-NoiseMaker-installer.pkg"

  uninstall pkgutil: [
    "com.talsoftware.pkg.TAL-NoiseMaker-AAX",
    "com.talsoftware.pkg.TAL-NoiseMaker-AU",
    "com.talsoftware.pkg.TAL-NoiseMaker-CLAP",
    "com.talsoftware.pkg.TAL-NoiseMaker-VST",
    "com.talsoftware.pkg.TAL-NoiseMaker-VST3",
  ]
end
