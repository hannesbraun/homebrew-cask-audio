cask 'nabla' do
  version '1.2.4'
  sha256 '5521b831f76bc5787f859cb41e639cd8d2afa1eded4f08d8b720397e1b44fb66'

  url "https://www.fullbucket.de/music/dl/nabla_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/nabla.html'
  name 'Nabla'
  homepage 'https://www.fullbucket.de/music/nabla.html'

  pkg "nabla_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'com.fullbucket.audiounit.pkg.Nabla',
                       'com.fullbucket.vst.pkg.Nabla',
                     ]

  caveats do
    reboot
  end
end
