cask "cybara" do
  version "1.0.1498"
  on_arm { sha256 "dbcffbd3d60da91468959325989aae9cd02517d36afa6c5bd76c623af5b774c5"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1498/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "4881c213a71de63bae64c50ccfd3647029ff0b302a916c7be832dab4c3454161"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1498/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
