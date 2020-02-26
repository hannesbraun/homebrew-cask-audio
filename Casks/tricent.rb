cask 'tricent' do
  version '1.0.1'
  sha256 'edd6959389b58e894a69916eb8fbe97cb24295b1d1318aa6b308807c8168dd26'

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
