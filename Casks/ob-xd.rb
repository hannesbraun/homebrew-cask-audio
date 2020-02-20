cask 'ob-xd' do
  version '1.5'
  sha256 '6fb12b98cf5955dfe6928dacc500fd809f76bc8f186472d0fdbb36d314d19d40'

  # discodsp.net was verified as official when first introduced to the cask
  url "https://www.discodsp.net/download/Obxd#{version.no_dots}Mac.zip"
  appcast 'https://www.discodsp.com/obxd/'
  name 'OB-Xd'
  homepage 'https://www.discodsp.com/obxd/'

  pkg "OB-Xd #{version}.pkg"

  uninstall pkgutil: [
                       'obxdau',
                       'obxdcontent',
                       'obxdvst3',
                       'obxdst',
                     ]
end
