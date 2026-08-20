cask "cybara" do
  version "1.0.2156"
  on_arm { sha256 "0b0e6453a01d350e978ceb1ddd97dcd71bf5b6a5254f58dd9cc30b00f40b78b5"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2156/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "336303903863a64aabfb4ff0df31e73f6b2544b8efdb73448f6693dc6e939b9d"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2156/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
