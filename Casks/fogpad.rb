cask "fogpad" do
  version "1.0.2,777c289f331ee762da84b0a889b83d8b4fd9729d78c3e2041c817cb4061fed8e"
  sha256 "a7675fa3ef13f14267a7c2284b8245cdad9f97a8b077621ab354601d41c00516"

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
