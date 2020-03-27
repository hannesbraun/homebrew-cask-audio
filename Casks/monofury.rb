cask 'monofury' do
  version '2.2.1'
  sha256 '6df4b98a07008c15dd655d132f5ef286f12f060e9dcf6554df5d3494a09661bc'

  url "https://www.fullbucket.de/music/dl/monofury_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/monofury.html'
  name 'Mono/Fury'
  homepage 'https://www.fullbucket.de/music/monofury.html'

  pkg "monofury_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'de.fullbucket.audiounit.pkg.MonoFury',
                       'de.fullbucket.vst.pkg.MonoFury',
                     ]

  caveats do
    reboot
  end
end
