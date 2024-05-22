cask "kairatune" do
  version "1.2.9"
  sha256 "7304691900a2625e5677e6fa075f15ba627083b643a5e5fa6349962044ec4065"

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

  uninstall pkgutil: "com.futucraft.kairatune"
end
