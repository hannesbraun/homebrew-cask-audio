cask "pg-8x" do
  version "2.0.13"
  sha256 :no_check

  url "https://drive.google.com/uc?export=download&id=1zbSGazrU2r0HRH_rskQk1kXRj10nyKFJ"
  name "PG-8X"
  desc "Virtual analog synthesizer"
  homepage "https://sites.google.com/site/mlvst0/pg8x-#{version.major}"

  livecheck do
    strategy :page_match
    url "https://www.kvraudio.com/product/pg-8x-by-ml-vst"
    regex(%r{<div .*id="verosx".*>(\d+(?:\.\d+)*)</div>})
  end

  vst_plugin "PG-8X.vst"
end
