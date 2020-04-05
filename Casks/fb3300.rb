cask 'fb3300' do
  version '1.1.0'
  sha256 'f832b9278352908b5f2190153f168a81e726afdd5a2d24fe668ce6647eedef26'

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
