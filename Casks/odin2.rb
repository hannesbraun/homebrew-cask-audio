cask 'odin2' do
  version '2.1.0'
  sha256 '7be16bfcfce4e1f8667f57034e35e06fc908b41be7d7d382afe8f9aed3f6495f'

  url "https://www.thewavewarden.com/assets/Odin#{version.major_minor}_mac_x64.zip"
  name 'Odin 2'
  homepage 'https://www.thewavewarden.com/odin2'

  vst3_plugin 'Odin2.vst3'
end
