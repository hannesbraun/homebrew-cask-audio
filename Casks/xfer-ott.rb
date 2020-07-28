cask "xfer-ott" do
  version "1.25"
  sha256 "4bef138455a9ea8925d75bd04bfa92bac2a3f901d894938b3d9b78c4e443897f"

  url "https://xferrecords.com/product_downloads/24/freeware"
  appcast "https://xferrecords.com/freeware/"
  name "OTT"
  homepage "https://xferrecords.com/freeware/"

  pkg "Install_Xfer_OTT.pkg"

  uninstall pkgutil: [
    "com.xfer.OTT.AAX",
    "com.xfer.OTT.AU",
    "com.xfer.OTT.VST",
  ]
end
