cask "valhallafreqecho" do
  version "1.2.0"
  sha256 "e56653c8510802a1e8be66a9807138f4f86527d27eb7df735e5da9e0c9e2310c"

  # valhallaproduction.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://valhallaproduction.s3-us-west-2.amazonaws.com/freqecho/ValhallaFreqEchoOSX_#{version.dots_to_underscores}.zip"
  appcast "https://valhalladsp.com/shop/delay/valhalla-freq-echo/"
  name "Valhalla Freq Echo"
  homepage "https://valhalladsp.com/shop/delay/valhalla-freq-echo/"

  pkg "ValhallaFreqEchoOSX.pkg"

  uninstall pkgutil: [
    "com.valhalladsp.FreqEcho.pkg.aax",
    "com.valhalladsp.FreqEcho.pkg.au",
    "com.valhalladsp.FreqEcho.pkg.dpm",
    "com.valhalladsp.FreqEcho.pkg.vst",
  ]
end
