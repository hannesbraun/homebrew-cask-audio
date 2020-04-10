cask 'stigma' do
  version '1.2.3'
  sha256 'fbfacbb21108f2052255bce63cf8d6af97184c355c71172a5754396e88688afc'

  url "https://www.fullbucket.de/music/dl/stigma_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/stigma.html'
  name 'Stigma'
  homepage 'https://www.fullbucket.de/music/stigma.html'

  pkg "stigma_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'de.fullbucket.audiounit.pkg.Stigma',
                       'de.fullbucket.vst.pkg.Stigma',
                     ]

  caveats do
    reboot
  end
end
