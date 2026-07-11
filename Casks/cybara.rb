cask "cybara" do
  version "1.0.1281"
  on_arm { sha256 "187d1599cea7408f6d051f41efb028fe17d838c8e1cf6fec72cc5ee0db4a60d5"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1281/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "3fe790f6a50791a1bc43b1ef0bae104ff0fa785ca5d656fd88a671c92f36e183"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1281/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
