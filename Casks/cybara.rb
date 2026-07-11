cask "cybara" do
  version "1.0.1310"
  on_arm { sha256 "20c1c700ee77389cfb1710dc7ae3cd01519119429f6a956ff057e8f65f01ad34"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1310/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "0b5306f6e303990096eca8403c0ffbbe740a7fd322758f4197ddfac5a2a14c37"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1310/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
