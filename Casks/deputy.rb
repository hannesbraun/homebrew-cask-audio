cask "deputy" do
  version "1.2.5"
  sha256 "6031685fc17e21f92cc988d8660e0ea888ca097038522453b131433701ebdd40"

  url "https://www.fullbucket.de/music/dl/deputy_#{version.dots_to_underscores}_mac.pkg"
  appcast "https://www.fullbucket.de/music/deputy.html"
  name "The Deputy Mark II"
  homepage "https://www.fullbucket.de/music/deputy.html"

  pkg "deputy_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "com.fullbucket.audiounit.pkg.Deputy",
    "com.fullbucket.vst.pkg.Deputy",
  ]

  caveats do
    reboot
  end
end
