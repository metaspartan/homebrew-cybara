cask "cybara" do
  version "1.0.1239"
  on_arm { sha256 "ddccba378179b5ac6c2b6d1fe243d0c3843b894005734dbd18a0dbd62e68574a"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1239/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "21a856f11a846e06e4acba8facadf561d285f6b1b8e73b08f40737021716d6de"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1239/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
