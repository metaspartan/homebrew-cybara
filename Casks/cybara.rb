cask "cybara" do
  version "1.0.1242"
  on_arm { sha256 "e6365ba61cfc25d5db06eb72a753ea08de06041b36a6806abaf2599319018690"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1242/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "5cccb49a12aad340a1e2b5f24d091b108def43c4f694ee987d7eea84a382deda"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1242/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
