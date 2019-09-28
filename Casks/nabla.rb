cask 'nabla' do
  version '1.2.2'
  sha256 '7ae993b2e07ecf1838f2ecbe179a5909139a254814326c045f10c5beb8712ef6'

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
