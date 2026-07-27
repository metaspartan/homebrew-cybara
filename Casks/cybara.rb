cask "cybara" do
  version "1.0.1960"
  on_arm { sha256 "7f68a22c2fa1bd5b6c80b88adea34a6756e399a853ec0a52661275253fdc3823"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1960/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "3b4b3c49ae1e85e30b9d3c9aaabb94bbfd27c2b5506ff54fe64e31b09f37e2d7"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1960/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
