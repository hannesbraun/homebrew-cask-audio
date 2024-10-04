cask "dragonfly-reverb" do
  version "3.2.10"
  sha256 "e0b854b92a4e51ce5851320fb1a9f91ab1a4309f997de070e175b3e5cab4adaf"

  url "https://github.com/michaelwillis/dragonfly-reverb/releases/download/#{version}/dragonfly-reverb-#{version}-macos-universal.dmg",
      verified: "github.com/michaelwillis/dragonfly-reverb/"
  name "Dragonfly Reverb"
  desc "Set of free reverb effects"
  homepage "https://michaelwillis.github.io/dragonfly-reverb/"

  livecheck do
    strategy :git
    url "https://github.com/michaelwillis/dragonfly-reverb/"
  end

  pkg "dragonfly-reverb-AudioPlugins.pkg"

  uninstall pkgutil: [
    "studio.kx.distrho.dragonfly-reverb-clapbundles",
    "studio.kx.distrho.dragonfly-reverb-lv2bundles",
    "studio.kx.distrho.dragonfly-reverb-vst2bundles",
    "studio.kx.distrho.dragonfly-reverb-vst3bundles",
  ]
end
