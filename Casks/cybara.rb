cask "cybara" do
  version "1.0.1647"
  on_arm { sha256 "db2b5e36bdd647852adaf01289142ec6be2e2fb1191cf0c41ba822191814ca83"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1647/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "4dfe4737c28c932083d03e7a4184e299f306f41b20bf47b77c31a86c694e563c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1647/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
