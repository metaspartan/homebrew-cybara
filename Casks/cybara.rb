cask "cybara" do
  version "1.0.1443"
  on_arm { sha256 "95ca8b0ac1e33876e436d303a23063f93a3777da8aba106aacdf254008612efa"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1443/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "a3d473bcfaa31598df62266e26a65d74b4a93a182fa4c2c069df1f1d546ef6f8"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1443/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
