cask 'stigma' do
  version '1.2.0'
  sha256 'be616876fff03f195961984020e14a173c444760a4e0cbb036a9651e158c438a'

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
