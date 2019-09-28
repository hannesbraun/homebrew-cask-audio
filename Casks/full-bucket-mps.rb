cask 'full-bucket-mps' do
  version '1.0.1'
  sha256 '55bdb5ceb1b90a65aa1bc19d8537ac49ff92bd1227254268759d24ee08152455'

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
