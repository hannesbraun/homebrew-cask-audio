cask 'sequencair' do
  version '1.1.1'
  sha256 '28b1e14b4134da1c01131c57026a07ca16edcd1183a794fe5640a3ff3e96280c'

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
