cask 'full-bucket-brigade-delay' do
  version '1.2.1'
  sha256 '63d19dccc950270370aae3eabfcbbffdf56514102733d09e0f196bfb05053450'

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
