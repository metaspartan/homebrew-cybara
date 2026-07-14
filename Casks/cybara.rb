cask "cybara" do
  version "1.0.1513"
  on_arm { sha256 "93a1caba90fa4e959563497ecd92bf2483a6c03573d5cfe16a275945d2409484"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1513/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "50c09ed87d35a9c541451371aa8f5e6c9c596159708d47f1fede42ab9e730078"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1513/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
