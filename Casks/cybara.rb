cask "cybara" do
  version "1.0.2432"
  on_arm { sha256 "d85d5dddb07fbcb6037ae58877c397f27d648592199745c29742c8f2979742a1"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2432/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "364cc18364019b8ec4eecc835c0af9ef8bcc31b1cc8d1acfc6cbe0a84839a985"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2432/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
