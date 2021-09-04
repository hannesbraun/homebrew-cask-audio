cask "gr-8" do
  version "1.0.7,2021-07-27"
  sha256 "41fd32634b70c42cd8147d05b4abce02eaf33b6e9292b382de1396edef524352"

  url "https://static.kvraudio.com/files/1574/gr-8-au-#{version.after_comma}.zip",
      verified: "static.kvraudio.com/"
  name "GR-8"
  desc "Polyphonic virtual analog synth"
  homepage "https://phuturetone.com/"

  livecheck do
    url "https://www.kvraudio.com/product/gr-8-by-phuturetone"
    strategy :page_match do |page|
      match = page.match(%r{id="verosx">(\d+(?:\.\d+)*)</div>.*Change Log\D+v\d+\.\d+\.\d+ - (\d{4}-\d+-\d+)})
      "#{match[1]},#{match[2]}"
    end
  end

  pkg "GR-8.pkg"

  uninstall pkgutil: ["com.mygreatcompany.pkg.GR-8"]
end
