cask "neuralampmodeler" do
  version "0.7.12"
  sha256 "284bbc02b29dc0e10cc9bab77de4f8eac6c0b181c403c4e5e29f6854165d3a14"

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
