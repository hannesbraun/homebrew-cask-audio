cask 'crystal' do
  version '2.5.6'
  sha256 'b1800b9a900b4994a11cc88ff2d5dd5cddd9447a92e2c04ce38732a434709781'

  url 'https://www.greenoak.com/crystal/dl/Crystal.dmg'
  appcast 'https://www.greenoak.com/crystal/dnld2.html',
          configuration: version.major_minor
  name 'Crystal'
  homepage 'https://www.greenoak.com/crystal/dnld2.html'

  pkg 'Crystal_Software.pkg',
      choices: [
                 {
                   'choiceIdentifier' => 'choice0',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'choice1',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
               ]

  uninstall pkgutil: [
                       'com.greenoak.Crystal',
                       'com.greenoakvst.Crystal',
                     ]
end
