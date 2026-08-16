cask "cybara" do
  version "1.0.2112"
  on_arm { sha256 "1a8d892387e8d12549a388395882d95958d4108878795ce13fd2e7d294483cf0"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2112/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "d6f683b807fc76c4aa16e0a832568613c779f414a729fe23b0642bdaf95c1e4f"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2112/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
