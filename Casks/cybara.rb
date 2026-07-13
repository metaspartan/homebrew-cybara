cask "cybara" do
  version "1.0.1457"
  on_arm { sha256 "5301257ecc11af93e842801dabcfdff53f12a4896795be809e5e9bf7f6ad8d39"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1457/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "747cd016d40c0542932ed8fa47514582c2b981f91c11da3847b7fa8118ba3250"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1457/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
