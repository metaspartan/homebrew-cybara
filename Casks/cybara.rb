cask "cybara" do
  version "1.0.1500"
  on_arm { sha256 "90c252c291a8585c732b95edad297641668b7e5e8e56ce9d5691fd93ffd16e50"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1500/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "57779aeaeeaa3b00e4eee8726416dd64543e2d45db10411c65f0f9f171437fc4"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1500/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
