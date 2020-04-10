cask 'monofury' do
  version '2.2.2'
  sha256 'a82ed7b182356cbc13696e1f71b5523bd00f436a88a5b4453c66d491b88e3b50'

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
