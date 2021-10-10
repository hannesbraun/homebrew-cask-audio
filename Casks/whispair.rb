cask "whispair" do
  version "1.0.4"

  if MacOS.version <= :mojave
    sha256 "i4109cfb567bfcec0d428e88bc98df7008651129fc5c49183129fe85d5f7bcbec"
    url "https://www.fullbucket.de/music/dl/whispair_#{version.dots_to_underscores}_mac.pkg"
  else
    sha256 "65acf105074bceea019683821eb6a2ee2237fefcb530ee8815988211ee2958c3"
    url "https://www.fullbucket.de/music/dl/whispair_#{version.dots_to_underscores}_METAL_mac.pkg"
  end

  name "WhispAir"
  desc "Wavetable synthesizer"
  homepage "https://www.fullbucket.de/music/whispair.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  if MacOS.version <= :mojave
    pkg "whispair_#{version.dots_to_underscores}_mac.pkg"
  else
    pkg "whispair_#{version.dots_to_underscores}_METAL_mac.pkg"
  end

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.WhispAir",
    "de.fullbucket.vst.pkg.WhispAir",
  ]
end
