cask "delta-modulator" do
  version :latest
  sha256 :no_check

  url do
    require "open-uri"
    URI("https://xferrecords.com/product_downloads/26/freeware").open.base_uri.to_s
  end
  name "Delta Modulator"
  homepage "https://xferrecords.com/freeware/"

  pkg "Install_Xfer_DeltaModulator.pkg"

  uninstall pkgutil: [
    "com.xfer.DeltaModulator",
    "com.xfer.DeltaModulator.AU",
  ]
end
