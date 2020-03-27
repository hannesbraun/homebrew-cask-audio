cask 'stigma' do
  version '1.2.1'
  sha256 '7355e265661a7e28255d685b0920366909795518364b4b527c681c4176e30882'

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
