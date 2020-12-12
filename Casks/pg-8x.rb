cask "pg-8x" do
  version "2.0.13"
  sha256 "68e49fe103ba69c390229cf2c8bd9353ab7d587bcc5ba036d32ebcf053032bef"

  url "https://drive.google.com/uc?export=download&id=1zbSGazrU2r0HRH_rskQk1kXRj10nyKFJ"
  appcast "https://sites.google.com/site/mlvst0/pg8x-#{version.major}",
          must_contain: version.major_minor
  name "PG-8X"
  desc "Virtual analog synthesizer"
  homepage "https://sites.google.com/site/mlvst0/pg8x-#{version.major}"

  vst_plugin "PG-8X.vst"
end
