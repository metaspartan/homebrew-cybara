cask "cybara" do
  version "1.0.1473"
  on_arm { sha256 "df45805008078426611375b105990b7f8a4dda6c3178c82bba09fa5d3893b6d6"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1473/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "00835172aa9da0af549b801d64d64e3929471aa4ec94d76ba36cfc94554e3bf5"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1473/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
