cask 'sequencair' do
  version '1.1.2'
  sha256 'b77e09aa46b65b52cdbae527e412f92035144545d4d884096f491ea39bdb2998'

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
