cask "qrange" do
  version "1.1.4"
  sha256 "408df70e1f1a35ed1a2e8cde75ee612b5e5b18fbf054f0bf254809e894a420c2"

  url "https://static.kvraudio.com/files/1924/lkjb_qrange_mac_#{version.no_dots}.zip",
      verified: "static.kvraudio.com/"
  name "QRange"
  desc "IIR linear phase EQ"
  homepage "https://lkjbdsp.wordpress.com/qrange/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/(\d+(?:\.\d+)+):/)
  end

  audio_unit_plugin "QRange.component"
  vst_plugin "QRange.vst"
  vst3_plugin "QRange.vst3"
end
