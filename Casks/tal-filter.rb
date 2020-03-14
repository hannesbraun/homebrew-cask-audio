cask 'tal-filter' do
  version '2.5.1'
  sha256 'de04dc029cf0c5576b2698b120b26aa7ddcd7992effeaaa935c3f9d5b060a50f'

  url 'https://tal-software.com//downloads/plugins/TAL-Filter-installer.pkg'
  name 'TAL-Filter'
  homepage 'https://tal-software.com/products/tal-filter'

  pkg 'TAL-Filter-installer.pkg'

  uninstall pkgutil: [
                       'com.talsoftware.pkg.TAL-Filter-AAX',
                       'com.talsoftware.pkg.TAL-Filter-VST3',
                       'com.talsoftware.pkg.TAL-Filter-VST',
                       'com.talsoftware.pkg.TAL-Filter-AU',
                     ]
end
