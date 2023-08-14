cask "free87-fr-gate" do
  version "1.1.3"
  sha256 "16d316679cc131d1fd591370f9acec2c4a6414779dacfe4494fd92e2bcdd64a6"

  url "https://www.eareckon.com/free/FRGATE87_#{version.no_dots}_Mac.zip"
  name "FR-GATE 87"
  desc "Gate plugin"
  homepage "https://www.eareckon.com/en/products/freebies.html"

  livecheck do
    url "https://www.eareckon.com/en/products/freebies.html"
    strategy :page_match do |page|
      page.scan(/FRGATE87_(\d)(\d)(\d)_Mac\.zip/).map do |match|
        "#{match[0]}.#{match[1]}.#{match[2]}"
      end
    end
  end

  pkg "Setup_FRGATE87_#{version.no_dots}.pkg"

  uninstall pkgutil: [
    "com.eaReckon.eareckonFRGATE87.FRGATE87AU.pkg",
    "com.eaReckon.eareckonFRGATE87.FRGATE87VST.pkg",
  ]
end
