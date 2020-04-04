cask 'tricent' do
  version '1.0.5'
  sha256 '3d3b8c28f9b3f610efa96823bce3ebb033022c8dcba71f12588c2c705239ae84'

  url "https://www.fullbucket.de/music/dl/tricent_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/tricent.html'
  name 'Tricent mk III'
  homepage 'https://www.fullbucket.de/music/tricent.html'

  pkg "tricent_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'com.fullbucket.audiounit.pkg.Tricent',
                       'com.fullbucket.vst.pkg.Tricent',
                     ]

  caveats do
    reboot
  end
end
