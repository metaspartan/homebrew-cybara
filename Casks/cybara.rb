cask "cybara" do
  version "1.0.1323"
  on_arm { sha256 "ffd64270d060e23323a24d91b38ea4806e784d119f8645dbd32551ca5f0f7e7c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1323/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "e4a02820ac6fce537c79b0b5633df651df7bc7ed96335de08f0b617690a62df0"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1323/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
