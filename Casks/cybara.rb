cask "cybara" do
  version "1.0.2464"
  on_arm { sha256 "6d8a20ac5dc786c625d7f185ad976075cfc90553cbdccb18a5bf8f4bf48b2214"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2464/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "66b2a55dc0963ae523f5250bb48b2257245a0b36a598c17ac1825dc7a1aaad8d"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2464/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
