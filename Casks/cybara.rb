cask "cybara" do
  version "1.0.1352"
  on_arm { sha256 "3ba8d8b9bdd3c3776915dda89d8077123c7d19ae8f9e3cb5e33e52a7d7e02e3c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1352/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "69ac931264a40663167b6720da2749a77562286bceea221bf20ce4204a9b8144"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1352/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
