cask "tal-filter2" do
  version "3.0.1"
  sha256 :no_check

  url "https://tal-software.com//downloads/plugins/TAL-Filter-2-installer.pkg"
  name "TAL-Filter-2"
  homepage "https://tal-software.com/products/tal-filter"

  pkg "TAL-Filter-2-installer.pkg"

  uninstall pkgutil: [
    "com.talsoftware.pkg.TAL-Filter-2-AAX",
    "com.talsoftware.pkg.TAL-Filter-2-AU",
    "com.talsoftware.pkg.TAL-Filter-2-VST",
    "com.talsoftware.pkg.TAL-Filter-2-VST3",
  ]
end
