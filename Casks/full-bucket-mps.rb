cask 'full-bucket-mps' do
  version '1.1.3'
  sha256 '1b9d766322aac1a3b6272ee577085f54b1ede3ec7517a137915ffc53b2dedde0'

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
