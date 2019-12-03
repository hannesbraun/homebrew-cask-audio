cask 'fbvc' do
  version '1.0.1'
  sha256 '6f67a0affc26339c1f71ee8d5a42a8c5f3312716ef5a459e2e7e14067cf820aa'

  url "https://www.fullbucket.de/music/dl/fbvc_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/fbvc.html'
  name 'Full Bucket Vocoder FBVC'
  homepage 'https://www.fullbucket.de/music/fbvc.html'

  pkg "fbvc_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'com.fullbucket.audiounit.pkg.FBVC',
                       'com.fullbucket.vst.pkg.FBVC',
                       'com.fullbucket.wav.pkg.FBVC',
                     ]

  caveats do
    reboot
  end
end
