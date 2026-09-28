cask "cybara" do
  version "1.0.2425"
  on_arm { sha256 "9889951a6ee8327ff5aa7eba1148a16c51f666a561f464aa7e0e2871a52c989c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2425/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "5a7107cebcbf3095813c15e23eeee9b93784cb46315e36c894fbc2e1e47575db"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2425/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
