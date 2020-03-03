cask 'tricent' do
  version '1.0.4'
  sha256 '19c5c2729a5f7832ed51752a30f71b5e6ac84fceed3cd24225b1084bdae571de'

  url "https://www.fullbucket.de/music/dl/tricent_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/tricent.html'
  name 'Tricent mk III'
  homepage 'https://www.fullbucket.de/music/tricent.html'

  pkg "tricent_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'com.fullbucket.audiounit.pkg.Tricent',
                       'com.fullbucket.vst.pkg.Tricent',
                     ]

  caveats do
    reboot
  end
end
