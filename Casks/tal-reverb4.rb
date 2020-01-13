cask 'tal-reverb4' do
  version '2.2.1'
  sha256 '87d79eee36e961f6b03e7a5141ee03d17b1ca04371ecc5dab2a070447a0e2da7'

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

  caveats do
    reboot
  end
end
