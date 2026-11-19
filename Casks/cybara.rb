cask "cybara" do
  version "1.0.2596"
  on_arm { sha256 "b85690484ecf8a9c5299d73679fb8aa018bdccaa8d05412e8debe73cc2bb7168"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2596/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "122129fc5ef343214a0f122f8c8a3970c814353ea2160c6e979f36ebdf2d4eab"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2596/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
