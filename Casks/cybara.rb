cask "cybara" do
  version "1.0.1489"
  on_arm { sha256 "5ec1db558819d005523da75b5089447d380f551a71f4ee807428ac1ba5666469"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1489/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "95ab2d8c075d6f0a4c558c5cd7cb4d8b8d20884ae37490081ade49da293f78c3"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1489/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
