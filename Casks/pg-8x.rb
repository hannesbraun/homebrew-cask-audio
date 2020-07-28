cask "pg-8x" do
  version "2.0.13"
  sha256 "68e49fe103ba69c390229cf2c8bd9353ab7d587bcc5ba036d32ebcf053032bef"

  url "https://sites.google.com/site/mlvst0/pg8x-#{version.major}/PG-8X_#{version}_MacVST.zip"
  appcast "https://sites.google.com/site/mlvst0/pg8x-#{version.major}"
  name "PG-8X"
  homepage "https://sites.google.com/site/mlvst0/pg8x-#{version.major}"

  vst_plugin "PG-8X.vst"
end
