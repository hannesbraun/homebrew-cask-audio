cask "ts999" do
  version "1.5.2"
  sha256 "63d0319767c133ee39d3dc8bb528965eb9f9cd9f42c89ec5bb7b9c1914806fa0"

  url "https://static.kvraudio.com/files/1546/ignite_amps_ts-999_#{version.dots_to_underscores}_mac.zip",
      verified: "static.kvraudio.com/"
  appcast "https://www.kvraudio.com/product/ts-999-by-ignite-amps/"
  name "TS-999 SubScreamer"
  homepage "http://www.igniteamps.com/"

  audio_unit_plugin "AU/TS-999.component"
  vst_plugin "VST/TS-999.vst"
end
