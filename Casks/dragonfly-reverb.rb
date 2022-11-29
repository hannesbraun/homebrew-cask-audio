cask "dragonfly-reverb" do
  version "3.2.7"
  sha256 "5e22bbab93ae8361deacb65af38697433124e51f0172e885f7f158f0576a7f69"

  url "https://github.com/michaelwillis/dragonfly-reverb/releases/download/#{version}/dragonfly-reverb-mac-universal-#{version}.zip",
      verified: "github.com/michaelwillis/dragonfly-reverb/"
  name "Dragonfly Reverb"
  desc "Set of free reverb effects"
  homepage "https://michaelwillis.github.io/dragonfly-reverb/"

  livecheck do
    strategy :git
    url "https://github.com/michaelwillis/dragonfly-reverb/"
  end

  pkg "dragonfly-reverb-mac-universal-#{version}/dragonfly-reverb-macOS.pkg"

  uninstall pkgutil: [
    "studio.kx.distrho.dragonfly-reverb-lv2bundles",
    "studio.kx.distrho.dragonfly-reverb-vst2bundles",
    "studio.kx.distrho.dragonfly-reverb-vst3bundles",
    "studio.kx.distrho.dragonfly-reverb-clapbundles",
  ]
end
