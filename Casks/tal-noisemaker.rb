cask 'tal-noisemaker' do
  version '4.5.1'
  sha256 '9ecae4305d4bcc38d00c8d09e2c4aebc754421373671f319f67ab11c7376d87d'

  url 'https://tal-software.com//downloads/plugins/tal-noisemaker-installer.pkg'
  appcast 'https://tal-software.com/products/tal-noisemaker'
  name 'TAL-NoiseMaker'
  homepage 'https://tal-software.com/products/tal-noisemaker'

  pkg 'tal-noisemaker-installer.pkg'

  uninstall pkgutil: [
                       'com.talsoftware.pkg.TAL-NoiseMaker-AAX',
                       'com.talsoftware.pkg.TAL-NoiseMaker-VST3',
                       'com.talsoftware.pkg.TAL-NoiseMaker-VST',
                       'com.talsoftware.pkg.TAL-NoiseMaker-AU',
                     ]
end
