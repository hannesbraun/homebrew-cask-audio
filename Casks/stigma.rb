cask 'stigma' do
  version '1.2.2'
  sha256 '41fb02b688485f48e3c5ac7bdf92bb827b47a438a5b967e09bb05f338dc6c794'

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
