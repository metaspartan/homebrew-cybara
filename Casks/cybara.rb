cask "cybara" do
  version "1.0.1798"
  on_arm { sha256 "3529b20cc2c895228be8d3b0b6a2206da026bb475bf6572126b7771a3ba34680"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1798/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "8a640061e3279d9991c8927690eaade0cccc8620a793e6afe144bb3c939c5b8c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1798/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
