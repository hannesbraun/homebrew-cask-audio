cask 'sequencair' do
  version '1.0.6'
  sha256 '813560046011788c1e1efa1d44b9ab320a9b7261783d7e71ddfc321f6075d40d'

  url "https://www.fullbucket.de/music/dl/sequencair_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/sequencair.html'
  name 'SequencAir'
  homepage 'https://www.fullbucket.de/music/sequencair.html'

  pkg "sequencair_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'com.fullbucket.app.pkg.SequencAir',
                       'com.fullbucket.vst.pkg.SequencAir',
                     ]
end
