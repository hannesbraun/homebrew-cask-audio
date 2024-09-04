cask "neuralampmodeler" do
  version "0.7.9"
  sha256 "1338603a93aa91b13fac95b04960e5991bd809b2b4e9c4af4b2e4ef219c943ff"

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
