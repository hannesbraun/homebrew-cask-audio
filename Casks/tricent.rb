cask 'tricent' do
  version '1.0.6'
  sha256 'f81249b1c32f5a4b9ae3e2bb81c2d65437e37597d93f45df3d013b01d9a0f366'

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
