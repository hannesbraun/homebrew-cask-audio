cask 'monofury' do
  version '2.1.3'
  sha256 '241e2871f7db72e2e28b8e31df26b97ffcb2088a39c1b1476c480770bfe3a0e9'

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
