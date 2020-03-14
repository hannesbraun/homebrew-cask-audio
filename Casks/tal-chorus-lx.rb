cask 'tal-chorus-lx' do
  version '1.4.2'
  sha256 '5bd6571b8c7e5ab728243bb041caf41070f27daeb0abedbd423c3006762c0bbf'

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
