cask "cybara" do
  version "1.0.1756"
  on_arm { sha256 "b3007220f29b0a4559e1f3c17d0c86e5521a4d7e0b9fa42b5a77cb0b8a7a04e6"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1756/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "74654dd41aedc6073c363e89c65484a2b5ad2e5c49afb66e0537c14d3df75870"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1756/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
