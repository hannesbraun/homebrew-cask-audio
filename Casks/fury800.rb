cask 'fury800' do
  version '1.0.0'
  sha256 '780fa18e90af15602264d2b189ba9603e523a160a841be419572b63f10faa024'

  url "https://www.fullbucket.de/music/dl/fury800_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/fury800.html'
  name 'Fury-800'
  homepage 'https://www.fullbucket.de/music/fury800.html'

  pkg "fury800_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'de.fullbucket.audiounit.pkg.Fury800',
                       'de.fullbucket.vst.pkg.Fury800',
                     ]
end
