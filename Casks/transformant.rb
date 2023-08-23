cask "transformant" do
  version "1.0.4,dc2c83e4091274b78c063f74d6d47697e39690e48d44a9c3b2192df476e8538c"
  sha256 "676390d9a48403ec61f02e9d330753d47cf287133b311a17a5113e9fddeae3de"

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
