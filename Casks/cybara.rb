cask "cybara" do
  version "1.0.1716"
  on_arm { sha256 "41f6bfaa0c42dc464631c80652c8c4ede5ae5e831be31d452b113ca9da93b79c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1716/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "b9e80a54c920d3290dcd4345dc3eedd606c419062f2c9aa4c9e051d9f1df5bd4"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1716/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
