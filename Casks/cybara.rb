cask "cybara" do
  version "1.0.1627"
  on_arm { sha256 "be77449bc4dd6f14b1ce45de903dd3d693ce00e0e8f45afb6863c9e425e003f2"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1627/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "9f88df57afcba0136fca9003d79f6a0901c2bf0a8588002baf36ec48f81d2a55"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1627/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
