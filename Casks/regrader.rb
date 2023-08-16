cask "regrader" do
  version "1.0.4,484444ad43fa2db726e293fb3001fff19d04336e9f5b0e959390577b9287a19c"
  sha256 "00dd36b616b33ba826ffddb37534e255633669807081c6086e1adacc2da74452"

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
