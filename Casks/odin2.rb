cask "odin2" do
  version "2.2.3"
  sha256 "dc2e54b39eca3694da701e4a3bfa0747ea3f04f4266cbe1986d38ed228026de8"

  url "https://www.thewavewarden.com/assets/Odin2MacInstaller.pkg"
  name "Odin 2"
  homepage "https://www.thewavewarden.com/odin2"

  pkg "Odin2MacInstaller.pkg",
      choices: [
        {
          "choiceIdentifier" => "installer_choice_1",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_2",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall pkgutil: [
    "com.thewavewarden.pkg.odin2AU",
    "com.thewavewarden.pkg.odin2VST",
  ]
end
