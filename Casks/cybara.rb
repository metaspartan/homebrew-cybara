cask "cybara" do
  version "1.0.1904"
  on_arm { sha256 "8662031ffb3b85da3f2f65ac0a73a4feff0cf396eef97cf4cf1cddcebc017aa9"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1904/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "fcbf39866238307ab269f5578783d9a494f79f83a157f51d876a74ad6a68a4ba"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1904/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
