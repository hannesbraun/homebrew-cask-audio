cask 'odin2' do
  version '2.2.2'
  sha256 '55e01889c2a3f0a808b00ba188f7080b96ea08c09442952e89f4a1469c4dcd7c'

  url 'https://www.thewavewarden.com/assets/Odin2MacInstaller.pkg'
  name 'Odin 2'
  homepage 'https://www.thewavewarden.com/odin2'

  pkg 'Odin2MacInstaller.pkg',
      choices: [
                 {
                   'choiceIdentifier' => 'installer_choice_1',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_2',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
               ]

  uninstall pkgutil: [
                       'com.thewavewarden.pkg.odin2AU',
                       'com.thewavewarden.pkg.odin2VST',
                     ]
end
