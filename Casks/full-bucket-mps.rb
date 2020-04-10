cask 'full-bucket-mps' do
  version '1.1.5'
  sha256 'c8c1bfe4dcbf88068f8d1f55d96c818093deb4e6559f791112a43667d954f5a7'

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
