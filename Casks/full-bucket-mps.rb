cask 'full-bucket-mps' do
  version '1.1.4'
  sha256 '00073c64f606f5aa1961a1c0ad3f42873c03884d1ea3104501a7ca9d9134689d'

  url "https://www.fullbucket.de/music/dl/mps_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/mps.html'
  name 'MPS'
  homepage 'https://www.fullbucket.de/music/mps.html'

  pkg "mps_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'de.fullbucket.audiounit.pkg.MPS',
                       'de.fullbucket.vst.pkg.MPS',
                     ]

  caveats do
    reboot
  end
end
