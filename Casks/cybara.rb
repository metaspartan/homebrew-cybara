cask "cybara" do
  version "1.0.1275"
  on_arm { sha256 "10774fbf2e1b7cd81014b54155f74d388ec1ffbf9cbd6a6114dea07eef033f15"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1275/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "53439fb5fe097b46b368af96e42ac27ffe3de487b5a02811e3a4ee5420b194b8"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1275/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
