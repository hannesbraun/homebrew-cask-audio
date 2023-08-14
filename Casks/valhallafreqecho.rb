cask "valhallafreqecho" do
  version "1.2.8"
  sha256 "7e8681bd90fe7c1ef5b82a87c5d90bd1051980c256b0bd9424ea9cbfc53a9bdc"

  url "https://valhallaproduction.s3-us-west-2.amazonaws.com/freqecho/ValhallaFreqEchoOSX_#{version.dots_to_underscores}.dmg",
      verified: "valhallaproduction.s3-us-west-2.amazonaws.com/"
  name "Valhalla Freq Echo"
  homepage "https://valhalladsp.com/shop/delay/valhalla-freq-echo/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Current Version:\s(\d+(?:\.\d+)+)/)
  end

  pkg "ValhallaFreqEchoOSX.pkg"

  uninstall pkgutil: [
    "com.valhalladsp.FreqEcho.pkg.aax",
    "com.valhalladsp.FreqEcho.pkg.au",
    "com.valhalladsp.FreqEcho.pkg.vst",
    "com.valhalladsp.FreqEcho.pkg.vst3",
  ]
end
