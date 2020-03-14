cask 'tal-vocoder' do
  version '2.1.3'
  sha256 'd783a4a91615ea08c5d16f6007a44314f005fd3351513f254bb3dc983f175be3'

  url 'https://tal-software.com//downloads/plugins/tal-vocoder-2-installer.pkg'
  name 'TAL-Vocoder'
  homepage 'https://tal-software.com/products/tal-vocoder'

  pkg 'tal-vocoder-2-installer.pkg'

  uninstall pkgutil: [
                       'com.talsoftware.pkg.TAL-Vocoder-2-AAX',
                       'com.talsoftware.pkg.TAL-Vocoder-2-VST3',
                       'com.talsoftware.pkg.TAL-Vocoder-2-VST',
                       'com.talsoftware.pkg.TAL-Vocoder-2-AU',
                     ]
end
