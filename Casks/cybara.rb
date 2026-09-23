cask "cybara" do
  version "1.0.2386"
  on_arm { sha256 ""; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2386/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 ""; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2386/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
