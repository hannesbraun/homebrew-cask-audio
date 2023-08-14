cask "free87-fr-limit" do
  version "1.1.3"
  sha256 "fc054f2ae8cc279a87f85df25ebdb2050fe60a3035e7c47239166e6fe4b8db78"

  url "https://www.eareckon.com/free/FRLIMIT87_#{version.no_dots}_Mac.zip"
  name "FR-LIMIT 87"
  homepage "https://www.eareckon.com/en/products/freebies.html"

  livecheck do
    url "https://www.eareckon.com/en/products/freebies.html"
    strategy :page_match do |page|
      page.scan(/FRLIMIT87_(\d)(\d)(\d)_Mac\.zip/).map do |match|
        "#{match[0]}.#{match[1]}.#{match[2]}"
      end
    end
  end

  pkg "Setup_FRLIMIT87_#{version.no_dots}.pkg"

  uninstall pkgutil: [
    "com.eaReckon.eareckonFRLIMIT87.FRLIMIT87AU.pkg",
    "com.eaReckon.eareckonFRLIMIT87.FRLIMIT87VST.pkg",
  ]
end
