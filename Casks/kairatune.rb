cask "kairatune" do
  version "1.2.8"
  sha256 "5767bcc9dfe7cfd533fa75e7c717c1619e88c5a8229aeee9d58e9466e205ee34"

  url "https://futucraft.com/download/kairatune-#{version.dots_to_hyphens}-mac-os/"
  name "Kairatune"
  desc "Monophonic virtual synthesizer"
  homepage "https://futucraft.com/kairatune/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Kairatune (\d+(?:\.\d+)+)/)
  end

  pkg "Kairatune #{version} macOS.pkg"

  uninstall pkgutil: [
    "com.futucraft.kairatune",
  ]
end
