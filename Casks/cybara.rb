cask "cybara" do
  version "1.0.1349"
  on_arm { sha256 "507066e3d1aedfc46bb3dbe5f1d67876c906ffc5663dd2ac3bc05d525999205e"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1349/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "ffe7ce5cb52014e1965c913cda990839d9ad0947dbd9703fba6b4d5b2491e6b7"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1349/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
