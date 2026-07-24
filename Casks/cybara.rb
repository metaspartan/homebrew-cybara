cask "cybara" do
  version "1.0.1928"
  on_arm { sha256 "bcc9e31c5c21cebc9c1e042cb6691b9d4d09ce74f6d4beed2b48de4e664775d6"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1928/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "be61c581945d6b17e4172a8d22291c2cb9763f419f3949f5ccdfc7f0e155fb32"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1928/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
