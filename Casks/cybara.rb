cask "cybara" do
  version "1.0.1297"
  on_arm { sha256 "cb63f62720d1f09877aacc44f14c0ed25ef2bfdfc29089dbb340bbc751876ddb"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1297/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "adb7c0306b650f4a2e5ddfecbcec71b4a9c87d9a4b3513e234e47d3846506e77"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1297/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
