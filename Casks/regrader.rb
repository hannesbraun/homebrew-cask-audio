cask "regrader" do
  version "1.0.5,1221198c4810b94c321273846b0185ea6136b0be8a9494490e0c52eb26c313d2"
  sha256 "18c5c17ae67de47fa908aa6543391ae4ea32d44f6ed575f9cf4a9560bc5be47a"

  url "https://www.igorski.nl/download/retrieve/#{version.csv.second}"
  name "Regrader"
  desc "Degenerative delay processor"
  homepage "https://www.igorski.nl/download/regrader"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      page.scan(%r{retrieve/(\w+)"(?:.|\n)*title="Download file regrader\.(\d+(?:\.\d+)*)\.zip}).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  audio_unit_plugin "macOS/AU/regrader.component"
  vst_plugin "macOS/VST/regrader.vst"
  vst3_plugin "macOS/VST3/regrader.vst3"
end
