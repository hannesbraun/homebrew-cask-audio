cask "gr-8" do
  version "1.2.0,2021-10-08"
  sha256 "91d9c1595cf7a4f5b235ecf504e55a3151c843a3f3cef79a7adb11032c6f4675"

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

  pkg "GR-8-AU-#{version.after_comma}/GR-8.pkg"

  uninstall pkgutil: ["com.mygreatcompany.pkg.GR-8"]
end
