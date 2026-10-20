cask "cybara" do
  version "1.0.2548"
  on_arm { sha256 "a0c00564d0286853d340d5517a8599214ae41948cb621128eed4328204dd3ab6"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2548/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "cfd1002b8c082f688d414b5f205badaf6d3a1790ea3eccebc736b6f3d6db3e89"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2548/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
