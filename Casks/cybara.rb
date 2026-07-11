cask "cybara" do
  version "1.0.1233"
  on_arm { sha256 "413e4fd503dd16129c80557cf7f31ca03599cf1657aa978eb59e983e88346cfb"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1233/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "6b6147a4a75c2ba9c10ece5c828bf115ca1ecaea354853e60f5847a2652ee7b7"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1233/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
