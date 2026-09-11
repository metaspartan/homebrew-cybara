cask "cybara" do
  version "1.0.2348"
  on_arm { sha256 "a3f26674f906c1736814f548a8e402d71b98b1998a8de56fadbf5034e7e91844"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2348/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "faabd20f8bed9ded6c8b012a69581c9bd4ab9fd68fb102590967f6d56642af67"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2348/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
