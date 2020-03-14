cask 'monofury' do
  version '2.2.0'
  sha256 '6f23bbe27b8cc86db947519f56660915cb9664f2869214ea80dfa116540d6ef9'

  url "https://www.fullbucket.de/music/dl/monofury_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/monofury.html'
  name 'Mono/Fury'
  homepage 'https://www.fullbucket.de/music/monofury.html'

  pkg "monofury_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'com.fullbucket.audiounit.pkg.MonoFury',
                       'com.fullbucket.vst.pkg.MonoFury',
                     ]

  caveats do
    reboot
  end
end
