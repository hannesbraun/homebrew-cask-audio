cask "tricent" do
  version "1.1.1"
  sha256 "4f900292fd58a23436bbcfadd66cad7caaa2b6b8554466e0c94ec84cce24f56e"

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
