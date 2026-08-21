cask "cybara" do
  version "1.0.2193"
  on_arm { sha256 "81f2a1fe982f06d597d5ce5194ae3af43ee8aeb08d5c515bcf6cea23b1708e03"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2193/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "2d62cc25a26c8531e209a7ff6e967fcc857750d11f3e80e74ed86336c15299cb"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2193/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
