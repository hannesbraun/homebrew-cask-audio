cask 'nabla' do
  version '1.2.3'
  sha256 '1e9b0de42f0ed4dd9f22694dfebf5a5b905e30796d1c905d339e02af42184873'

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
