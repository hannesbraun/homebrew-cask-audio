cask 'fb3300' do
  version '1.1.1'
  sha256 '3f53a9547bb458cf60dc81051caa0328feb1bb7571b213c25a3b4419b1204a1b'

  url "https://www.fullbucket.de/music/dl/fb3300_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/fb3300.html'
  name 'FB-3300'
  homepage 'https://www.fullbucket.de/music/fb3300.html'

  pkg "fb3300_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'de.fullbucket.audiounit.pkg.FB3300',
                       'de.fullbucket.vst.pkg.FB3300',
                     ]

  caveats do
    reboot
  end
end
