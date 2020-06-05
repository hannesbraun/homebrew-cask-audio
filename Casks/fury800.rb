cask 'fury800' do
  version '1.0.1'
  sha256 '4ec99abf5515ac9d32e8eb69b28a863d8ff49cae7d8464de6511a5f720c9ba61'

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
