cask "neuralampmodeler" do
  version "0.7.3"
  sha256 "05a2caf404e4e100e97e538b7b1bd337fd7f7f74b7f00d5e801a312dfc257d3f"

  url "https://github.com/sdatkinson/NeuralAmpModelerPlugin/releases/download/v#{version}/NeuralAmpModeler-v#{version}-mac.dmg"
  name "Neural Amp Modeler"
  desc "VST3/AudioUnit plug-in* for Neural Amp Modeler, built with iPlug2"
  homepage "https://github.com/sdatkinson/NeuralAmpModelerPlugin"

  livecheck do
    strategy :git
    url "https://github.com/sdatkinson/NeuralAmpModelerPlugin/"
  end

  pkg "NeuralAmpModeler Installer.pkg"

  uninstall pkgutil: [
    "com.StevenAtkinson.app.pkg.NeuralAmpModeler",
    "com.StevenAtkinson.au.pkg.NeuralAmpModeler",
    "com.StevenAtkinson.vst3.pkg.NeuralAmpModeler",
  ]
end
