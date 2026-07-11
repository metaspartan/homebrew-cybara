cask "cybara" do
  version "1.0.1301"
  on_arm { sha256 "7357d2934cc56560699ef513a254dcf8b0769f9062d2fb7b85334d4699ca6190"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1301/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "87c9e961b14e6036d496b8a7e40d26bda6b2d14bea18a0bbda0ca9c3da885037"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1301/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
