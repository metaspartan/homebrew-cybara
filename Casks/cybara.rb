cask "cybara" do
  version "1.0.2275"
  on_arm { sha256 "a9fef1855a80a705e46aab121495322a970d8416e31a2a968306a4b05c12e2b9"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2275/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "cbaa70168208a9e57b300af3b20d7245d6785176d6649bfeda1b71b24d2c61c4"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2275/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
