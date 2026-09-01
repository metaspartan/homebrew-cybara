cask "cybara" do
  version "1.0.2248"
  on_arm { sha256 "a0c675dc4ff652fdc9627004995c50a0d6164d8d58a60ad420620b6b718531c1"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2248/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "84ce377f7b04e009cf768959ef782686adcf0dfce14e04b6c38ffb76994c0a9b"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2248/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
