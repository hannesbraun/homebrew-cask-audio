cask "8-bit-shaper" do
  version :latest
  sha256 :no_check

  url do
    require "open-uri"
    [URI("https://xferrecords.com/product_downloads/28/freeware").open.base_uri.to_s,
     { verified: "xfer-active-storage.s3.us-west-1.amazonaws.com" }]
  end
  name "8-Bit Shaper"
  desc "Bitcrusher plugin"
  homepage "https://xferrecords.com/freeware/"

  pkg "Install_Xfer_8BitShaper.pkg"

  uninstall pkgutil: [
    "com.xfer.8BitShaper",
    "com.xfer.8BitShaper.AU",
  ]
end
