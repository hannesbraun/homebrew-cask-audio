cask 'full-bucket-mps' do
  version '1.1.2'
  sha256 '4be70bfd4b70e9d8b95675c8a45f930f379eded5ffe3a2de449e37a5a77bd53b'

  url "https://www.fullbucket.de/music/dl/mps_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/mps.html'
  name 'MPS'
  homepage 'https://www.fullbucket.de/music/mps.html'

  pkg "mps_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'com.fullbucket.audiounit.pkg.MPS',
                       'com.fullbucket.vst.pkg.MPS',
                     ]

  caveats do
    reboot
  end
end
