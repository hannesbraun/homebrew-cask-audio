cask 'tal-chorus-lx' do
  version '1.4.2'
  sha256 'a7da951aba5b8758d0862ff1b59c15fde11bcb99a25abda117bf2e38ca821aa5'

  url 'https://tal-software.com//downloads/plugins/tal-chorus-lx-installer.pkg'
  name 'TAL-Chorus-LX'
  homepage 'https://tal-software.com/products/tal-chorus-lx'

  pkg 'tal-chorus-lx-installer.pkg'

  uninstall pkgutil: [
                       'com.talsoftware.pkg.TAL-Chorus-LX-AAX',
                       'com.talsoftware.pkg.TAL-Chorus-LX-VST3',
                       'com.talsoftware.pkg.TAL-Chorus-LX-VST',
                       'com.talsoftware.pkg.TAL-Chorus-LX-AU',
                     ]
end
