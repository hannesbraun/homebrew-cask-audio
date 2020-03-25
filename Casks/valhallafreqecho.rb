cask 'valhallafreqecho' do
  version '1.0.5.1,2019.11'
  sha256 'bcf9686d7eb9c0916f07fb94bee02fef84c7c4a892a7ccb0fd6fe0f4b338e057'

  url "https://valhalladsp.com/wp-content/uploads/#{version.after_comma.major}/#{version.after_comma.minor}/ValhallaFreqEchoOSX_#{version.before_comma.dots_to_underscores}.zip"
  appcast 'https://valhalladsp.com/shop/delay/valhalla-freq-echo/',
          configuration: version.before_comma.major_minor_patch
  name 'Valhalla Freq Echo'
  homepage 'https://valhalladsp.com/shop/delay/valhalla-freq-echo/'

  pkg 'ValhallaFreqEchoOSX.pkg'

  uninstall pkgutil: [
                       'com.valhalladsp.FreqEcho.pkg.aax',
                       'com.valhalladsp.FreqEcho.pkg.au',
                       'com.valhalladsp.FreqEcho.pkg.dpm',
                       'com.valhalladsp.FreqEcho.pkg.vst',
                     ]
end
