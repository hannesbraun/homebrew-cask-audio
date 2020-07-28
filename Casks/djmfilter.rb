cask "djmfilter" do
  version "1.09"
  sha256 "fccdfc393c418f18b79dd76355a9e9a228fbde7af0b6d132004de558cd475627"

  url "https://xferrecords.com/product_downloads/68/freeware"
  appcast "https://xferrecords.com/freeware/"
  name "DJMFilter"
  homepage "https://xferrecords.com/freeware/"

  pkg "Install_Xfer_DJMFilter.pkg"

  uninstall pkgutil: [
    "com.xfer.DJMFilter.AU",
    "com.xfer.DJMFilter.VST",
  ]
end
