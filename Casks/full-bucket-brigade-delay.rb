cask 'full-bucket-brigade-delay' do
  version '1.2.3'
  sha256 '4799abf03b46d4748cdf8f6b2ba34812ebdc7251357d31657ce41a6bda9b58fa'

  url "https://www.fullbucket.de/music/dl/fbdelay_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/fbdelay.html'
  name 'Full Bucket Brigade Delay'
  homepage 'https://www.fullbucket.de/music/fbdelay.html'

  pkg "fbdelay_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'com.fullbucket.audiounit.pkg.FBDelay',
                       'com.fullbucket.vst.pkg.FBDelay',
                     ]

  caveats do
    reboot
  end
end
