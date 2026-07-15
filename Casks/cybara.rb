cask "cybara" do
  version "1.0.1564"
  on_arm { sha256 "ad0c7ac7cb2651f12ae6de687542dbb789293527a0656b9081af53b851259146"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1564/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "c7a1ac62ec956719d4035c2e845e1b82340c62adff3e77a18e9333085198125f"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1564/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
