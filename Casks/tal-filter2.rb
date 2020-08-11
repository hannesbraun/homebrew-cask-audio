cask "tal-filter2" do
  version "2.5.1"
  sha256 "1c67ae99f3f25ac4eb986e1c43b27e8243d752c0ddb2b11d15af24a02f1b8b7e"

  url "https://tal-software.com//downloads/plugins/TAL-Filter-2-installer.pkg"
  name "TAL-Filter-2"
  homepage "https://tal-software.com/products/tal-filter"

  pkg "TAL-Filter-2-installer.pkg"

  uninstall pkgutil: [
    "com.talsoftware.pkg.TAL-Filter-2-AAX",
    "com.talsoftware.pkg.TAL-Filter-2-VST3",
    "com.talsoftware.pkg.TAL-Filter-2-VST",
    "com.talsoftware.pkg.TAL-Filter-2-AU",
  ]
end
