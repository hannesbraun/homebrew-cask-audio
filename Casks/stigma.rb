cask 'stigma' do
  version '1.1.2'
  sha256 'f6cf2eb71be8da19fc8abd7b895779f7b87cb9154e0bc360cb1a80cdf5cbf601'

  url "https://www.fullbucket.de/music/dl/stigma_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/stigma.html'
  name 'Stigma'
  homepage 'https://www.fullbucket.de/music/stigma.html'

  pkg "stigma_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'com.fullbucket.audiounit.pkg.Stigma',
                       'com.fullbucket.vst.pkg.Stigma',
                     ]

  caveats do
    reboot
  end
end
