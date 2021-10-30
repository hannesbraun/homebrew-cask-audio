cask "fb7999" do
  version "1.0.2"

  if MacOS.version <= :mojave
    sha256 "e60eb6855c5b27ee47b8684bec113f92cdc0ba431ea727dcbf735ed29ac5be5b"
    url "https://www.fullbucket.de/music/dl/fb7999_#{version.dots_to_underscores}_N_mac.pkg"
  else
    sha256 "ee7c1d99002df4e6ffed6b8e85f67502ced59f3b11027b82a6a7b020c05335be"
    url "https://www.fullbucket.de/music/dl/fb7999_#{version.dots_to_underscores}_METAL_mac.pkg"
  end

  name "FB-7999"
  desc "Digital waveform synthesizer simulation"
  homepage "https://www.fullbucket.de/music/fb7999.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  if MacOS.version <= :mojave
    pkg "fb3300_#{version.dots_to_underscores}_N_mac.pkg"
  else
    pkg "fb3300_#{version.dots_to_underscores}_METAL_mac.pkg"
  end

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.FB7999",
    "de.fullbucket.vst.pkg.FB7999",
  ]
end
