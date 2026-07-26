cask "cybara" do
  version "1.0.1941"
  on_arm { sha256 "066eecb561b27b6a4c12d808b92ad4e9c22d54a82c456fcf10e735b379d59400"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1941/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "090a0e390c61a8eb85e17148edd39443320596b9460c51e666787292054d9c8c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1941/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
