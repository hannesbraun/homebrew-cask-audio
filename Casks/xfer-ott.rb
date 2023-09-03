cask "xfer-ott" do
  version :latest
  sha256 :no_check

  url do
    require "open-uri"
    [URI("https://xferrecords.com/product_downloads/24/freeware").open.base_uri.to_s,
     { verified: "xfer-active-storage.s3.us-west-1.amazonaws.com" }]
  end
  name "OTT"
  desc "Multiband upwards/downwards compressor"
  homepage "https://xferrecords.com/freeware/"

  pkg "Install_Xfer_OTT.pkg"

  uninstall pkgutil: [
    "com.xfer.OTT.AAX",
    "com.xfer.OTT.AU",
    "com.xfer.OTT.VST",
    "com.xfer.OTT.VST3",
  ]
end
