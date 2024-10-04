cask "crystal" do
  version :latest
  sha256 :no_check

  url "https://www.greenoak.com/crystal/dl/Crystal.dmg"
  name "Crystal"
  desc "Semi-modular synthesizer"
  homepage "https://www.greenoak.com/crystal/dnld2.html"

  pkg "Crystal_Software.pkg",
      choices: [
        {
          "choiceIdentifier" => "choice0",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "choice1",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall pkgutil: [
    "com.greenoak.Crystal",
    "com.greenoakvst.Crystal",
  ]
end
