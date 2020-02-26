cask 'tricent' do
  version '1.0.0'
  sha256 '9b08b4e06fdda691a2e668c1ecfe375f055258735f9c14c516445dd46dac129b'

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
