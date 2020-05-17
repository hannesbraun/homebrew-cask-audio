cask 'delta-modulator' do
  version '1.01'
  sha256 '18d73159ad78c1018131c38fc4965651ec5da91ddd953d72fe899d4786502a5b'

  url do
    require 'open-uri'
    URI('https://xferrecords.com/product_downloads/26/freeware').open.base_uri.to_s
  end
  appcast 'https://xferrecords.com/freeware/'
  name 'Delta Modulator'
  homepage 'https://xferrecords.com/freeware/'

  pkg 'Install_Xfer_DeltaModulator.pkg'

  uninstall pkgutil: [
                       'com.xfer.DeltaModulator',
                       'com.xfer.DeltaModulator.AU',
                     ]
end
