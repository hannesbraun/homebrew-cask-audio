cask "dimension-expander" do
  version "1.23"
  sha256 :no_check

  url do
    require "open-uri"
    URI("https://xferrecords.com/product_downloads/32/freeware").open.base_uri.to_s
  end
  appcast "https://xferrecords.com/freeware/"
  name "Dimension Expander"
  desc "Chorus/Spatial Expander"
  homepage "https://xferrecords.com/freeware/"

  pkg "Install_Xfer_DimensionExpander.pkg"

  uninstall pkgutil: [
    "com.xfer.DimExp.AU",
    "com.xfer.DimExp.VST",
  ]
end
