cask "cybara" do
  version "1.0.2268"
  on_arm { sha256 "753b4af609f5dc7086e0cd30b266ceb88542a3b1efa9631bcd1cfc01281ed275"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2268/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "4046f6d6bf74d67950f9bfb9388497bc5950f17250c602dc8b8869ebddf27107"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2268/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
