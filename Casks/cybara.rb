cask "cybara" do
  version "1.0.1481"
  on_arm { sha256 "5588de7977381ce535b26fcd01019b6d01eaeed7775b6b68fd7ff8b9a7f7e16f"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1481/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "9c29bae26ea36138a34e2c5d1a401673675d80eb00ad2d74b4b2c465d77b665f"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1481/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
