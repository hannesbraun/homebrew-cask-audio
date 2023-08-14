cask "free87-fr-comp" do
  version "1.1.3"
  sha256 "3156ed51a5bd6b515d71cbc5ea9eecec26c481c38e8f8041a0cc0fdcb2e43639"

  url "https://www.eareckon.com/free/FRCOMP87_#{version.no_dots}_Mac.zip"
  name "FR-COMP 87"
  homepage "https://www.eareckon.com/en/products/freebies.html"

  livecheck do
    url "https://www.eareckon.com/en/products/freebies.html"
    strategy :page_match do |page|
      page.scan(/FRCOMP87_(\d)(\d)(\d)_Mac\.zip/).map do |match|
        "#{match[0]}.#{match[1]}.#{match[2]}"
      end
    end
  end

  pkg "Setup_FRCOMP87_#{version.no_dots}.pkg"

  uninstall pkgutil: [
    "com.eaReckon.eareckonFRCOMP87.FRCOMP87AU.pkg",
    "com.eaReckon.eareckonFRCOMP87.FRCOMP87VST.pkg",
  ]
end
