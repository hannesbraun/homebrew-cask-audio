cask "tricent" do
  version "1.1.3"
  sha256 "011eb11a375724798cc490b8380e8ef381c8fb4daf617d8472fd7882de2938c3"

  url "https://www.fullbucket.de/music/dl/tricent_#{version.dots_to_underscores}_mac.pkg"
  name "Tricent mk III"
  desc "Polyphonic synthesizer ensemble"
  homepage "https://www.fullbucket.de/music/tricent.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "tricent_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.Tricent",
    "de.fullbucket.vst.pkg.Tricent",
    "de.fullbucket.vst3.pkg.Tricent",
  ]
end
