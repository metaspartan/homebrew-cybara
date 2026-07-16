cask "cybara" do
  version "1.0.1666"
  on_arm { sha256 "866c085c8e47ae78867647da2b87961b6264b907454dd97fd0fab69e3db82713"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1666/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "36b1b9826534f6779538d5e86c752460e3c9f5760d89bf92fa90624af48c512c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1666/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
