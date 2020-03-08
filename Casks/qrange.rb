cask 'qrange' do
  version '1.1.3'
  sha256 '5bb858cfbb9970e1c58d07a86dffe29e239b7b903843d690296f663a4d5e9687'

  # static.kvraudio.com was verified as official when first introduced to the cask
  url "https://static.kvraudio.com/files/1924/lkjb_qrange_mac_#{version.no_dots}.zip"
  appcast 'https://lkjbdsp.wordpress.com/qrange/'
  name 'QRange'
  homepage 'https://lkjbdsp.wordpress.com/qrange/'

  audio_unit_plugin 'QRange.component'
  vst_plugin 'QRange.vst'
  vst3_plugin 'QRange.vst3'
end
