cask 'free87-fr-equa' do
  version '1.1.3'
  sha256 '7da16e94df6fac759ac03281c64adb85ddfe26be2de4ba77a606c311fd0d673f'

  url "https://www.eareckon.com/free/FREQUA87_#{version.no_dots}_Mac.zip"
  appcast 'https://www.eareckon.com/en/products/freebies.html',
          configuration: version.no_dots
  name 'FR-EQUA 87'
  homepage 'https://www.eareckon.com/en/products/freebies.html'

  pkg "Setup_FREQUA87_#{version.no_dots}.pkg"

  uninstall pkgutil: [
                       'com.eaReckon.eareckonFREQUA87.FREQUA87AU.pkg',
                       'com.eaReckon.eareckonFREQUA87.FREQUA87VST.pkg',
                     ]
end
