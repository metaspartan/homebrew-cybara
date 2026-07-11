cask "cybara" do
  version "1.0.1254"
  on_arm { sha256 "01203b51c3edb68e0b27d3a3618fecac3c04282a2bfcced1d7d08467a46f400a"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1254/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "166aa02bba710d5f5f1ca3057999e1676173e44efe32dc0ba8b6b5f2717e3cab"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1254/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
