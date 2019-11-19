cask 'sequencair' do
  version '1.1.0'
  sha256 'bc770fe525f819adc2044fe590102046117488bf2c6de56a3bdce4a3cf0acf3b'

  url "https://www.fullbucket.de/music/dl/sequencair_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/sequencair.html'
  name 'SequencAir'
  homepage 'https://www.fullbucket.de/music/sequencair.html'

  pkg "sequencair_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'com.fullbucket.app.pkg.SequencAir',
                       'com.fullbucket.vst.pkg.SequencAir',
                     ]

  zap trash: [
               '~/Library/Application Support/FullBucketMusic',
             ]
end
