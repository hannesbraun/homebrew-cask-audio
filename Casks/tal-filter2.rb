cask 'tal-filter2' do
  version '2.5.1'
  sha256 'f4c76cbf7ea07214b0e7ebce6514aa0514621977f3e3d88709409bdbf4a645ab'

  url 'https://tal-software.com//downloads/plugins/TAL-Filter-2-installer.pkg'
  name 'TAL-Filter-2'
  homepage 'https://tal-software.com/products/tal-filter'

  pkg 'TAL-Filter-2-installer.pkg'

  uninstall pkgutil: [
                       'com.talsoftware.pkg.TAL-Filter-2-AAX',
                       'com.talsoftware.pkg.TAL-Filter-2-VST3',
                       'com.talsoftware.pkg.TAL-Filter-2-VST',
                       'com.talsoftware.pkg.TAL-Filter-2-AU',
                     ]
end
