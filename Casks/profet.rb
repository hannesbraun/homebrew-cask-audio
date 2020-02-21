cask 'profet' do
  version '1.0.0'
  sha256 'd2a7e75b360f625c4aa2d6dc5c60554cad688bdcd33bac6655a2bb5a8a1b9113'

  # kvraudio.com was verified as official when first introduced to the cask
  url "https://static.kvraudio.com/files/1546/ignite_amps_profet_#{version.dots_to_underscores}_mac.zip"
  appcast 'https://www.kvraudio.com/product/prof-e-t-by-ignite-amps/'
  name 'ProF.E.T.'
  homepage 'http://www.igniteamps.com/'

  audio_unit_plugin 'AU/ProFET.component'
  vst_plugin 'VST/ProFET.vst'
  vst3_plugin 'VST3/ProFET.vst3'
end
