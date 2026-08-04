cask "cybara" do
  version "1.0.2058"
  on_arm { sha256 "04abbaeefe1b4bfc4c679c78ae60e326a4002116f26e9c5c75e605d060d49469"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2058/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "08f2cdf4b3883c5cd2315200ce4c4b3de592a4a49276aee4fdf6fc095bc44b6c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2058/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
