cask "kairatune" do
  version "1.3.0"
  sha256 "498ce3c671d7ddfd583eb013c0da580795d210854550578807b9ae987227dfb8"

  url "https://futucraft.com/download/kairatune-#{version.dots_to_hyphens}-mac-os/"
  name "Kairatune"
  desc "Monophonic virtual synthesizer"
  homepage "https://futucraft.com/kairatune/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Kairatune (\d+(?:\.\d+)+)/)
  end

  pkg "Kairatune-#{version}-macOS.pkg"

  uninstall pkgutil: "com.futucraft.kairatune"
end
