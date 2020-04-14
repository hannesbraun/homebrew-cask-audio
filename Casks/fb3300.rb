cask 'fb3300' do
  version '1.1.2'
  sha256 '27d72c965d384bd583d1ec40cb5d082e4f29716f1a52f8212c46291e7e57c3d3'

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
