cask "odin2" do
  version "2.2.4"
  sha256 :no_check

  url "https://www.thewavewarden.com/assets/Odin2MacInstaller.pkg"
  name "Odin 2"
  desc "Synthesizer plugin"
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
