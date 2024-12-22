cask "neuralampmodeler" do
  version "0.7.13"
  sha256 "e9cea7a409fd167e05314d423a298ecb3b2c915eba2f8a514ee0c48a70f39173"

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
