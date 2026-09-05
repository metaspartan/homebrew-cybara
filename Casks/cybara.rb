cask "cybara" do
  version "1.0.2281"
  on_arm { sha256 "e4aa482b5387e8b8bdc1718a44fbbff66408c089964f5826be8a17dc889f0e00"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2281/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "6ecea9b36059b1be826ddc563dabec9567feee3989012be29967ecbe3c725cc5"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2281/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
