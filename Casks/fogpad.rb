cask 'fogpad' do
  version '1.0.2,83b12af28e733df71aaa5621e384d572'
  sha256 'a04b850d8fb9ae27b362acae5d69add03e7df47bef7550b1dfec68c3e518a80c'

  url "https://www.igorski.nl/download/retrieve/#{version.after_comma}"
  appcast 'https://www.igorski.nl/download/fogpad--reverb-plugin'
  name 'FogPad'
  homepage 'https://www.igorski.nl/download/fogpad--reverb-plugin'

  audio_unit_plugin 'FogPad/macOS/AU/fogpad.component'
  vst_plugin 'FogPad/macOS/VST/fogpad.vst'
  vst3_plugin 'FogPad/macOS/VST3/fogpad.vst3'
end
