cask "odin2" do
  version "2.3.4,medcu1epbxreucz"
  sha256 "ecfcbdf9058f6ddc6cdbc344fc32bee5f7cc0ffe135432607c36a6274e47624b"

  url "https://dl.dropboxusercontent.com/s/#{version.csv.second}/Odin#{version.csv.first}MacInstaller.pkg",
      verified: "dl.dropboxusercontent.com/s/#{version.csv.second}"
  name "Odin 2"
  desc "Synthesizer plugin"
  homepage "https://www.thewavewarden.com/odin2"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      page.scan(%r{https://dl.dropboxusercontent.com/s/(\S+)/Odin(\d+(?:\.\d+)*)MacInstaller.pkg}).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  pkg "Odin#{version.csv.first}MacInstaller.pkg",
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
        {
          "choiceIdentifier" => "installer_choice_3",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall pkgutil: [
    "com.thewavewarden.pkg.odin2AU",
    "com.thewavewarden.pkg.odin2CLAP",
    "com.thewavewarden.pkg.odin2VST",
  ]
end
