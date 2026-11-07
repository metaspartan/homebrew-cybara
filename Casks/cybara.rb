cask "cybara" do
  version "1.0.2573"
  on_arm { sha256 "19d02ea9c2fd61d46a4b7952ec9741fadd3e0310895971b9e5634a61961106dd"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2573/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "3c6d5f7eee739f6f3df50bc5e2c10280c56d3976730c2a0cee6575efca474432"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2573/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
