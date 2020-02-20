cask 'tal-reverb4' do
  version '2.2.2'
  sha256 'ac93367d515cc9153e37e03b804c19fcea822a9ab230c98b90688141f0817b5b'

  url 'https://tal-software.com//downloads/plugins/tal-reverb-4-installer.pkg'
  appcast 'https://tal-software.com/products/tal-reverb-4'
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
