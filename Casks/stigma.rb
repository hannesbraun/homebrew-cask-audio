cask 'stigma' do
  version '1.2.4'
  sha256 '87cc5124ef50b2097370e4e1e63f842eb921530639f3600108bc7251a2bff072'

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
