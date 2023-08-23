cask "fogpad" do
  version "1.0.3,2c3257f83b3f74cbf1aa45f2b1dfc6dcfe6334d764c1526aa3500e7e12cec68d"
  sha256 "0059987111d7f6724a4d7299379127a2164bc7575b22379696254d6a34e9e49e"

  url "https://www.igorski.nl/download/retrieve/#{version.csv.second}"
  name "FogPad"
  desc "Reverb plugin"
  homepage "https://www.igorski.nl/download/fogpad"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      page.scan(%r{retrieve/(\w+)"(?:.|\n)*title="Download file fogpad\.(\d+(?:\.\d+)*)\.zip}).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  audio_unit_plugin "macOS/AU/fogpad.component"
  vst_plugin "macOS/VST/fogpad.vst"
  vst3_plugin "macOS/VST3/fogpad.vst3"
end
