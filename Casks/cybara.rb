cask "cybara" do
  version "1.0.1630"
  on_arm { sha256 "a81a346838b88138c2f0e3280ddf21bb8efe4eefc1e6da6e06dd1db3ad2333a4"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1630/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "6b428df872b95ca97c1aba4b7c0d7304a67a5c90a0f8127a8797baf46c3a327c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1630/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
