cask 'tal-reverb4' do
  version '2.2.6'
  sha256 '8a4307f8234053476df04a94c923ee9e80e97d4f6a282d8702f0ae87fe034d2a'

  url 'https://tal-software.com//downloads/plugins/tal-reverb-4-installer.pkg'
  name 'TAL-Reverb-4'
  homepage 'https://tal-software.com/products/tal-reverb-4'

  pkg 'tal-reverb-4-installer.pkg'

  uninstall pkgutil: [
                       'com.talsoftware.pkg.TAL-Reverb-4-AAX',
                       'com.talsoftware.pkg.TAL-Reverb-4-VST3',
                       'com.talsoftware.pkg.TAL-Reverb-4-VST',
                       'com.talsoftware.pkg.TAL-Reverb-4-AU',
                     ]
end
