cask "cybara" do
  version "1.0.1214"
  on_arm { sha256 "0be7efcdee5eb61607d7fbffbf05cbd699d637cc0426b109d51f68dad7fece0a"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1214/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "0e109183b9b6a787de843eb5febf7b8ee6722b43ba81d39296acfd21fe71cb00"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1214/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
