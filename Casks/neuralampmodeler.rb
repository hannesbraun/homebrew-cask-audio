cask "neuralampmodeler" do
  version "0.7.10"
  sha256 "faaf5578effc83b77377d622d816fe7b4f1bc81d48d91e9f4a13c8ec3a11ee44"

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
