cask "cybara" do
  version "1.0.1267"
  on_arm { sha256 "d36f5cec1ecd0c6d748c3a948f7c1be0b87d5cd3fe21539d50f0c27865a59548"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1267/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "f0c841047774e6838ad81950679416b91b5384c808bed4597dec996806c49400"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1267/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
