cask 'valhallasupermassive' do
  version '1.0.0'
  sha256 '18ec944e19d2d97c94ba12e4a0aa7e95b23c5e924d8c156d70d2a994ec17e84f'

  # valhallaproduction.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://valhallaproduction.s3-us-west-2.amazonaws.com/supermassive/ValhallaSupermassiveOSX_#{version.dots_to_underscores}.zip"
  appcast 'https://valhalladsp.com/shop/reverb/valhalla-supermassive/'
  name 'Valhalla Supermassive'
  homepage 'https://valhalladsp.com/shop/reverb/valhalla-supermassive/'

  pkg 'ValhallaSupermassiveOSX.pkg'

  uninstall pkgutil: [
                       'com.valhalladsp.supermassive.pkg.aax',
                       'com.valhalladsp.supermassive.pkg.au',
                       'com.valhalladsp.supermassive.pkg.presets',
                       'com.valhalladsp.supermassive.pkg.vst',
                     ]
end
