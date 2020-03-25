cask 'dexed' do
  version '0.9.4,hf1'
  sha256 '079eac6aa65de3ea19efbb43cadfa050a8c3978ab4ea79d4a660226cd4e0d5e3'

  # github.com/asb2m10/dexed was verified as official when first introduced to the cask
  url "https://github.com/asb2m10/dexed/releases/download/v#{version.before_comma}#{version.after_comma}/dexed-#{version.before_comma}-osx.zip"
  appcast 'https://github.com/asb2m10/dexed/releases.atom'
  name 'Dexed'
  homepage 'https://asb2m10.github.io/dexed/'

  pkg "dexed-#{version.before_comma}-osx.mpkg"

  uninstall pkgutil: [
                       'com.digitalsuburban.DexedVST',
                       'com.digitalsuburban.DexedAU',
                       'com.digitalsuburban.DexedStandalone',
                     ]

  caveats do
    reboot
  end
end
