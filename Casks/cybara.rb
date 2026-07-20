cask "cybara" do
  version "1.0.1807"
  on_arm { sha256 "12cc23b46ccce9db1479ae19d853b9b85b23fef717e81e71e3595120d88822d8"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1807/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "069aa8300198f5c2cd167c2e93e1a43a5a08c9836e73d14f9128834f34a91188"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1807/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
