cask "transformant" do
  version "1.0.2,13e0ea27fe9a4b557d48829a7f8bd001"
  sha256 "41dc28e329f452981b7fd2084d64845e8339bd73a3986f2106e79a6478ab75ac"

  url "https://www.igorski.nl/download/retrieve/#{version.after_comma}"
  appcast "https://www.igorski.nl/download/transformant--multichannel-formantic-noise-processor"
  name "Transformant"
  homepage "https://www.igorski.nl/download/transformant--multichannel-formantic-noise-processor"

  audio_unit_plugin "Transformant/macOS/Audio Unit/transformant_au.component"
  vst_plugin "Transformant/macOS/VST/transformant.vst"
  vst3_plugin "Transformant/macOS/VST3/transformant.vst3"
end
