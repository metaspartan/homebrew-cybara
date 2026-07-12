cask "cybara" do
  version "1.0.1386"
  on_arm { sha256 "291b7abf0f553d1964a076df3245ada29c4a816ad930f5dd8d9723033253c812"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1386/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "d187388b562628ab826a733634946f1e6febb7c008c562c45e652e38b2425b9d"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1386/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
