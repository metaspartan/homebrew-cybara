cask "cybara" do
  version "1.0.1226"
  on_arm { sha256 "37a5fb0b49ab78ac5e6c5b78ad2a48f8781ba3023a4899af739a0f5260b62a60"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1226/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "62ed17500517396b969229f804cb03aeaa95e3fd30930a70b3d90310113dcc82"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1226/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
