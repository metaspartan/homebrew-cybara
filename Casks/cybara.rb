cask "cybara" do
  version "1.0.1244"
  on_arm { sha256 "0f3557575bffab0053d1551753edeb13c646b0656f0159d0a575d3f9a6123bad"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1244/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "8239ddd8f6d17d94da029a85d7876c8d4136eb9d18330239b6ea1a8804a404bf"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1244/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
