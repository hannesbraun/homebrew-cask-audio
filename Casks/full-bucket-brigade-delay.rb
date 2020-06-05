cask 'full-bucket-brigade-delay' do
  version '1.2.3'
  sha256 '3f7fdf876206ffff4cfeb5c5492dc330e544d2c769680616fa320c7de0f370a9'

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
