cask "cybara" do
  version "1.0.1421"
  on_arm { sha256 "690e42798c127e3e9b6046ea43d7a773a22ff88e48d4fe31769ec193296fca31"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1421/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "e8cffeb14e0e0847ee19d5e7d1ad9b0e753ae27eedcd88c6b61ee743d73973b5"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1421/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
