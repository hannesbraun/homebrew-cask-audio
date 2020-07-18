cask 'monofury' do
  version '2.2.3'
  sha256 '5adc7195d216ca5a5dd2b0b05dba9422a861ce8cd4ca774beb780a2dd989a489'

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
