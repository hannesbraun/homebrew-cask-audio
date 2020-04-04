cask 'full-bucket-brigade-delay' do
  version '1.2.2'
  sha256 '14864344dd19fde219270dd54053abf10c4e83421e3a3db6cf00d148af102167'

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
