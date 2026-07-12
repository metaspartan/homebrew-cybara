cask "cybara" do
  version "1.0.1390"
  on_arm { sha256 "4d3613f04570be9486a75ada2ed6e062483d9faedd3f1314a13130ff618462f6"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1390/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "9c2a5fee2bd58ffb1ede612f378a3e3a0918860c41dfaa3f962e1e416e45c550"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1390/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
