cask "cybara" do
  version "1.0.1673"
  on_arm { sha256 "f3194b2e5b96bc4d896d7168195f3624dafba0bd6013bca729eb31652a0f1c5e"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1673/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "76b38e5a6edc3d321dce2807dc330fe202d611f5beac6ce3c4bb6d30e7884d32"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1673/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
