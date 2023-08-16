cask "transformant" do
  version "1.0.3,5479b625bcdd53d5018a34c590947305ac83e3ea4ec5f61045edb64eeb64fc26"
  sha256 "4df6f0414f7bbe7a0de689dff31dc37d264f9ff53d63f974ba53f0e0bcaecaf8"

  url "https://www.igorski.nl/download/retrieve/#{version.csv.second}"
  name "Transformant"
  desc "Formantic noise processor"
  homepage "https://www.igorski.nl/download/transformant"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      page.scan(%r{retrieve/(\w+)"(?:.|\n)*title="Download file transformant\.(\d+(?:\.\d+)*)\.zip}).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  audio_unit_plugin "macOS/Audio Unit/transformant_au.component"
  vst_plugin "macOS/VST/transformant.vst"
  vst3_plugin "macOS/VST3/transformant.vst3"
end
