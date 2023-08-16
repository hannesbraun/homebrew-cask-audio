cask "protoverb" do
  version "1.0.1,12092"
  sha256 "ef229da0935eba9f525c60acbb579d0d395e2135624257cb89c39111c82a0f8d"

  url "https://dl.u-he.com/releases/Protoverb_#{version.csv.first.no_dots}_#{version.csv.second}_Mac.zip"
  name "Protoverb"
  desc "Experimental research reverb"
  homepage "https://u-he.com/products/protoverb/"

  livecheck do
    url "https://u-he.com/products/protoverb/releasenotes.html"
    strategy :page_match do |page|
      match = page.match(/Protoverb\s*(\d+(?:\.\d+)*)\s*\(revision\s*(\d+(?:\.\d+)*)\)/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  pkg "Protoverb#{version.csv.second}Mac/Protoverb #{version.before_comma} Installer.pkg"

  uninstall pkgutil: [
    "com.u-he.Protoverb.au.pkg",
    "com.u-he.Protoverb.data.pkg",
    "com.u-he.Protoverb.documentation.pkg",
    "com.u-he.Protoverb.presets.pkg",
    "com.u-he.Protoverb.tuningFiles.pkg",
    "com.u-he.Protoverb.vst.pkg",
    "com.u-he.Protoverb.vst3.pkg",
  ]
end
