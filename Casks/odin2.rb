cask "odin2" do
  version "2.3.2"
  sha256 "607828fcd67b5c3b4c08ca0e885c8bc96c5a0ff9b1e532d3ea81c7f0f9ca106d"

  url "https://www.thewavewarden.com/assets/Odin#{version}MacInstaller.pkg"
  name "Odin 2"
  desc "Synthesizer plugin"
  homepage "https://www.thewavewarden.com/odin2"

  pkg "Odin#{version}MacInstaller.pkg",
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
