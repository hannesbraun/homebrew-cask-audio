cask 'tal-reverb4' do
  version '2.2.4'
  sha256 'aa298b50b0ea5b0aae3d4ba5627a687d44cd428bfd8d7f2863fe7e069361a9ae'

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
