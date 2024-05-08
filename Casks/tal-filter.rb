cask "tal-filter" do
  version "2.6.0"
  sha256 :no_check

  url "https://tal-software.com//downloads/plugins/TAL-Filter-installer.pkg"
  name "TAL-Filter"
  homepage "https://tal-software.com/products/tal-filter"

  deprecate! date: "2024-05-08", because: :discontinued

  pkg "TAL-Filter-installer.pkg"

  uninstall pkgutil: [
    "com.talsoftware.pkg.TAL-Filter-AAX",
    "com.talsoftware.pkg.TAL-Filter-AU",
    "com.talsoftware.pkg.TAL-Filter-VST",
    "com.talsoftware.pkg.TAL-Filter-VST3",
  ]
end
