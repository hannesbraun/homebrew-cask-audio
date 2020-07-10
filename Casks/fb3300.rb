cask 'fb3300' do
  version '1.1.3'
  sha256 'ec3fe92b686ffb3cd186e16bcdbefc162912a73933ff1139a2803941bb1cd99b'

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
