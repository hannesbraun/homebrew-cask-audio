cask "regrader" do
  version "1.0.4,b195b368ca4cda2be291c65bd177eab7"
  sha256 "a219f92dcac3d8a5e36a7c94fde39ef38119d217e95b990f35fb96526f9b101e"

  url "https://www.igorski.nl/download/retrieve/#{version.after_comma}"
  appcast "https://www.igorski.nl/download/regrader--degenerative-delay-processor"
  name "Regrader"
  desc "Degenerative delay processor"
  homepage "https://www.igorski.nl/download/regrader--degenerative-delay-processor"

  audio_unit_plugin "Regrader/macOS/AU/regrader.component"
  vst_plugin "Regrader/macOS/VST/regrader.vst"
  vst3_plugin "Regrader/macOS/VST3/regrader.vst3"
end
